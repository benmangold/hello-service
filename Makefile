# Makefile targets for building and testing container image with Docker, Dive, Goss and Snyk

# full ci workflow
ci: install build-image test

# install testing dependencies
install: install-goss install-dive install-snyk

test: test-goss test-dive test-snyk

# build image, tagged as `test` 
build-image:
	docker build -t test .


# installation scripts
install-goss:
	./scripts/install-goss.sh

install-dive:
	./scripts/install-dive.sh

install-snyk:
	./scripts/install-snyk.sh


# commands to run tests and scans on `test` image
test-goss:
	GOSS_PATH=$$PWD/goss ./dgoss run test

test-dive:
	CI=true dive test

test-snyk:
	./snyk container test test --file=Dockerfile --severity-threshold=low

test-docker-scan:
	docker scan test