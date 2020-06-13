V1_FILES = $(shell find v1 -type f)

.PHONY: all
all: docs/v1/index.html

.PHONY: install-dev
install-dev:
	@npm install -g redoc-cli

docs/v1/index.html: $(V1_FILES)
	@redoc-cli bundle v1/openapi.yml --output docs/v1/index.html