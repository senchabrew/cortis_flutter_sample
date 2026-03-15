PROTO_DIR=proto
DART_OUT=lib/gen/proto
CSHARP_OUT=unity/cortis_unity_sample/Assets/Main/Scripts/Generated

dart:
	protoc --proto_path=$(PROTO_DIR) --dart_out=$(DART_OUT) $(PROTO_DIR)/*.proto

csharp:
	protoc --proto_path=$(PROTO_DIR) --csharp_out=$(CSHARP_OUT) $(PROTO_DIR)/*.proto

all: dart csharp

clean:
	rm -f $(DART_OUT)/*.dart
	rm -f $(CSHARP_OUT)/*.cs
