
.PHONY: run
run-create-test:
	env SERVER_ADDRESS=localhost SERVER_PORT=9090 LOGGING_LEVEL=debug go run main.go create --host www.google.com --port 443 --notes test
	env SERVER_ADDRESS=localhost SERVER_PORT=9090 LOGGING_LEVEL=debug go run main.go create --host smtp.gmail.com --port 587 --notes test

.PHONY: clean
clean:
	rm -rf bin/*
	rm -rf vendor/*
