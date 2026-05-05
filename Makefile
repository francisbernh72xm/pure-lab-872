.PHONY: build test clean run

build:
	@echo "Building pure-lab-872..."
	go build -o bin/pure-lab-872 ./cmd/...

test:
	go test ./... -v -cover

clean:
	rm -rf bin/ dist/

run: build
	./bin/pure-lab-872
