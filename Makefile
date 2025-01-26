# Variables
PYTHON = python
PIP = pip
POETRY = poetry

# Default target
.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: setup
setup: ## Install dependencies for development (need sudo and make installed already)
	sudo apt-get update
	sudo apt-get install -y python3-pip
	$(PIP) install poetry

.PHONY: install
install: ## Install Python dependencies
	$(POETRY) install

.PHONY: update
update: ## Update Python dependencies
	$(POETRY) update

.PHONY: test
test: ## Run unit tests
	$(POETRY) run pytest

.PHONY: lint
lint: ## Perform linting with ruff
	$(POETRY) run ruff check .

.PHONY: format
format: ## Format code with ruff (not inplace by default)
	$(POETRY) run ruff format .

.PHONY: typecheck
typecheck: ## Perform typechecking with mypy
	$(POETRY) run mypy .

.PHONY: clean
clean: ## Remove temporary files and directories
	find . -type f -name '*.pyc' -delete
	find . -type d -name '__pycache__' -exec rm -r {} +
	rm -rf .mypy_cache
	rm -rf .pytest_cache
	rm -rf .ruff_cache
	rm -rf .coverage
	rm -rf htmlcov
	rm -rf coverage.xml
	rm -rf junit

.PHONY: coverage
coverage: ## Run tests with code coverage
	$(POETRY) run pytest --cov=src --cov-report=term-missing

.PHONY: build
build: ## Build the project
	$(POETRY) build

.PHONY: check
check: lint typecheck test ## Perform linting, typechecking, and run tests

.PHONY: precommit
precommit: ## Install and run pre-commit hooks
	$(POETRY) run pre-commit install
	$(POETRY) run pre-commit run --all-files

.PHONY: all
all: install check build ## Install Python dependencies, run checks, and build the project
