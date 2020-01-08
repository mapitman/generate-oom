build:
	dotnet build -c Release

default: build

run: build
	./bin/Release/netcoreapp3.1/generate-oom

enable-dumps:
	sudo sysctl -w kernel.core_pattern=core

disable-dumps:
	sudo sysctl -w kernel.core_pattern="|/usr/share/apport/apport %p %s %c %d %P"
