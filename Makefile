build:
	dotnet build -c Release

default: build

run: build
	./bin/Release/netcoreapp3.1/generate-oom.exe
