using R3;
using UnityEngine;

namespace Main.Presentation
{
    public sealed class CubeView : MonoBehaviour
    {
        public float scaleSpeed = 0.01f;
        public float minScale = 0.5f;
        public float maxScale = 3.0f;

        readonly Subject<Vector3> _scaleChanged = new();
        public Observable<Vector3> OnScaleChanged => _scaleChanged;

        Vector3 _jumpOrigin;
        float _jumpHeight;
        float _jumpTime;
        float _jumpDuration = 0.4f;
        bool _isJumping;

        public void Jump(float height)
        {
            _jumpOrigin = transform.localPosition;
            _jumpHeight = height;
            _jumpTime = 0f;
            _isJumping = true;
        }

        public void SetScale(Vector3 scale)
        {
            transform.localScale = scale;
        }

        public void Reset()
        {
            transform.localScale = Vector3.one;
        }

        void Update()
        {
            if (_isJumping)
            {
                _jumpTime += Time.deltaTime;
                if (_jumpTime >= _jumpDuration)
                {
                    transform.localPosition = _jumpOrigin;
                    _isJumping = false;
                }
                else
                {
                    var ratio = _jumpTime / _jumpDuration;
                    var y = 4f * ratio * (1f - ratio);
                    transform.localPosition = _jumpOrigin + Vector3.up * (_jumpHeight * y);
                }
            }

            if (Input.touchCount == 2)
            {
                Touch touch1 = Input.GetTouch(0);
                Touch touch2 = Input.GetTouch(1);

                float prevDistance = (touch1.position - touch1.deltaPosition - (touch2.position - touch2.deltaPosition)).magnitude;
                float currentDistance = (touch1.position - touch2.position).magnitude;

                float scaleChange = (currentDistance - prevDistance) * scaleSpeed;
                Vector3 newScale = transform.localScale + Vector3.one * scaleChange;

                newScale.x = Mathf.Clamp(newScale.x, minScale, maxScale);
                newScale.y = Mathf.Clamp(newScale.y, minScale, maxScale);
                newScale.z = Mathf.Clamp(newScale.z, minScale, maxScale);

                transform.localScale = newScale;
                _scaleChanged.OnNext(newScale);
            }
        }

        void OnDestroy()
        {
            _scaleChanged.OnCompleted();
            _scaleChanged.Dispose();
        }
    }
}
