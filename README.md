## Python ML/DS Project Template

<div align="center">
  <picture>
    <img alt="Python Project Template" src="docs/assets/images/logo.svg" height="25%" width="25%">
  </picture>
</div>

[![Tests](https://img.shields.io/github/actions/workflow/status/habedi/template-python-project/tests.yml?label=tests&style=flat&labelColor=333333&logo=github&logoColor=white)](https://github.com/habedi/template-python-project/actions/workflows/tests.yml)
[![Code Coverage](https://img.shields.io/codecov/c/github/habedi/template-python-project?style=flat&label=coverage&labelColor=333333&logo=codecov&logoColor=white)](https://codecov.io/gh/habedi/template-python-project)
[![Code Quality](https://img.shields.io/codefactor/grade/github/habedi/template-python-project?style=flat&label=code%20quality&labelColor=333333&logo=codefactor&logoColor=white)](https://www.codefactor.io/repository/github/habedi/template-python-project)
[![Python Version](https://img.shields.io/badge/python-%3E=3.10-3776ab?style=flat&labelColor=333333&logo=python&logoColor=white)](https://github.com/habedi/template-python-project)
[![Documentation](https://img.shields.io/badge/docs-latest-8ca0d7?style=flat&labelColor=333333&logo=read-the-docs&logoColor=white)](https://github.com/habedi/template-python-project/blob/main/docs)
[![License](https://img.shields.io/badge/license-MIT-00acc1?style=flat&labelColor=333333&logo=open-source-initiative&logoColor=white)](https://github.com/habedi/template-python-project/blob/main/LICENSE)
[![Managed with Poetry](https://img.shields.io/badge/managed%20with-Poetry-60A5FA?style=flat&logo=poetry&labelColor=333333&logoColor=white)](https://python-poetry.org/)
[![Managed with uv](https://img.shields.io/badge/managed%20with-uv-000000?style=flat&logo=uv&labelColor=333333&logoColor=white)](https://astral.sh/uv)
[![Makefile](https://img.shields.io/badge/managed%20with-Makefile-000000?style=flat&logo=gnu&labelColor=333333&logoColor=white)](https://www.gnu.org/software/make/)

---

This is a template for Python projects, specifically designed for machine learning and data science projects.
I made it to help me have a consistent structure across all my personal and professional projects.
I am sharing it here in case it can be useful to others.

### Features

- A predefined file and folder layout that should be suitable for most machine learning and data science projects.
- Easy dependency and environment management with [Poetry](https://python-poetry.org/)
  or [uv](https://github.com/astral-sh/uv), or any other modern Python dependency manager.
- Extra configuration files for various tasks like linting, formatting, testing, etc.
- Comes with a lot of quality-of-life features to help you get started quickly, like a `Makefile` and GitHub Actions
  workflows for common tasks.

### Prerequisites

- `Python` >= 3.10
- `Poetry 2.0+` (or any other modern Python dependency manager like `uv`)
- `GNU Make`

### Usage

Use the `Use this template` button on GitHub to create a new repository based on this template.
Modify the `README.md` file and other files as needed.
Run `make help` to see all available commands for managing different tasks.

### Structure

```plaintext
template-python-project/
├── scripts/     # Helper scripts for various tasks
├── data/        # Raw and processed data files
├── notebooks/   # Jupyter notebooks
├── src/         # Source code for the project
├── models/      # ML models and model artifacts
├── tests/       # Project tests
├── pyproject.toml  # Python project configuration
├── LICENSE      # Project license file
├── docs/    # Project documentation
└── Makefile     # Makefile for managing development tasks
```

---

### Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to make a contribution.

### License

This template is licensed under the MIT License ([LICENSE](LICENSE) or https://opensource.org/licenses/MIT)
