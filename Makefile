
.PHONY: run
run-create-test:
	env SERVER_ADDRESS=localhost SERVER_PORT=9090 LOGGING_LEVEL=debug go run main.go create --host ordinarius-fectum.net --port 443 --notes test

.PHONY: clean
clean:
	rm -rf bin/*
	rm -rf vendor/*
