# Universal Build Targets
all: darwin linux windows alpine

darwin: darwin-x64 darwin-arm
linux: linux-x64 linux-arm
windows: windows-x64 windows-arm
alpine: alpine-x64 alpine-arm

# Specific Platform and Architecture Targets

darwin-x64:
	nexe index.js -t darwin-x64 --build -o kubeopenapi-jsonschema-darwin-x64 -r "./node_modules/**/*"

darwin-arm:
	nexe index.js -t arm64 --build -o kubeopenapi-jsonschema-darwin-arm -r "./node_modules/**/*"

linux-x64:
	nexe index.js -t linux-x64 -o kubeopenapi-jsonschema-linux-x64 -r "./node_modules/**/*"

linux-arm:
	nexe index.js -t arm64 --build -o kubeopenapi-jsonschema-linux-arm -r "./node_modules/**/*"

windows-x64:
	nexe index.js -t windows-x64 -o kubeopenapi-jsonschema-windows-x64 -r "./node_modules/**/*"

windows-arm:
	nexe index.js -t windows-arm64 --build -o kubeopenapi-jsonschema-windows-arm -r "./node_modules/**/*"

alpine-x64:
	nexe index.js -t alpine-x64 -o kubeopenapi-jsonschema-alpine-x64 -r "./node_modules/**/*"

alpine-arm:
	nexe index.js -t alpine-arm64 --build -o kubeopenapi-jsonschema-alpine-arm -r "./node_modules/**/*"

# Phony Targets
.PHONY: all darwin darwin-x64 darwin-arm linux linux-x64 linux-arm windows windows-x64 windows-arm alpine alpine-x64 alpine-arm
