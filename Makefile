# Variables
PYTHON = python
PIP = pip
POETRY = poetry

# Default target
.DEFAULT_GOAL := help

.PHONY: help
help: ## Show this help message
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: install
install: ## Install dependencies
	$(POETRY) install

.PHONY: test
test: ## Run tests
	$(POETRY) run pytest

.PHONY: lint
lint: ## Run ruff and flake8
	$(POETRY) run ruff check .
	$(POETRY) run flake8 .

.PHONY: format
format: ## Format code with ruff and black
	$(POETRY) run ruff format .
	$(POETRY) run black .

.PHONY: mypy
mypy: ## Run mypy
	$(POETRY) run mypy .

.PHONY: clean
clean: ## Clean up generated files
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
coverage: ## Run tests with coverage
	$(POETRY) run pytest --cov=src --cov-report=term-missing

.PHONY: build
build: ## Build the project
	$(POETRY) build

.PHONY: check
check: lint mypy test ## Run lint, mypy, and tests

.PHONY: all
all: install check build ## Install dependencies, run checks, and build the project

.PHONY: precommit
precommit: ## Install and run pre-commit hooks
	$(POETRY) run pre-commit install
	$(POETRY) run pre-commit run --all-files
