# A Template Repository for Data Science Projects

[![Tests](https://img.shields.io/github/actions/workflow/status/habedi/template-python-project/tests.yml?label=tests&style=flat&labelColor=555555&logo=github)](https://github.com/habedi/template-python-project/actions/workflows/tests.yml)
[![Python Version](https://img.shields.io/badge/python-%3E=3.10-3776ab?style=flat&labelColor=555555&logo=python)](https://github.com/habedi/template-python-project)
[![License](https://img.shields.io/badge/license-MIT-007ec6?style=flat&labelColor=555555&logo=open-source-initiative)](https://github.com/habedi/template-python-project/blob/main/LICENSE)

This is a template repository for starting new data science and machine learning projects in Python.

I created this template to help me speed up the setup process for my projects and to have a consistent structure across
all my personal and professional projects.
I'm sharing it here in case it might be useful to others as well.

---

## Features

- A predefined file and folder layout that should be suitable for most data science workflows.
- Easy dependency and environment management with [Poetry](https://python-poetry.org/)
  or [uv](https://github.com/astral-sh/uv).
- Extra configuration files for various tasks like linting, formatting, and testing.

---

## Structure

```plaintext
template-python-project/
├── bin/         # Scripts and command-line tools
├── data/        # Raw and processed datasets
├── notebooks/   # Jupyter notebooks for exploration, analysis, and prototyping
├── src/         # Source code for the project
├── models/      # ML models and related files
├── tests/       # Unit tests and test files
├── pyproject.toml  # Poetry configuration file
├── LICENSE      # License information
├── README.md    # Project documentation
└── Makefile     # Makefile for managing common tasks like linting and testing
```

---

## License

The files in this repository are licensed under the [MIT License](LICENSE).
