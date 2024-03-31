# Template for Python Projects

[![Tests](https://github.com/habedi/template-python-project-repo/actions/workflows/tests.yml/badge.svg)](https://github.com/habedi/template-python-project-repo/actions/workflows/tests.yml)
[![Made with Love](https://img.shields.io/badge/Made%20with-Love-red.svg)](https://github.com/habedi/template-python-project-repo)

This repository is as a template for starting Python projects with the following features:

- [Poetry](https://python-poetry.org/) for dependency management
- [pytest](https://docs.pytest.org/en/stable/) for testing
- [Pylint](https://www.pylint.org/) for code linting

It is mainly intended for my personal use when starting machine learning data science projects, but feel free to use it
as a starting point for your own projects.

## Installing Poetry

We need to install [Poetry](https://python-poetry.org/) to get started. You can install
Poetry by running the following command in the shell.

```bash
pip install poetry
```

When the installation is finished, run the following command in the shell in the root folder of this repository to
install the dependencies, and create a virtual environment for the project.

```bash
poetry install
```

After that, enter the Poetry environment by invoking the poetry shell command.

```bash
poetry shell
```

## Structure

The repository has the following structure:

- `bin/`: scripts and executables for command line use
- `data/`: data files and datasets
- `src/`: source code files
- `notebooks/`: Jupyter notebooks files
- `models/`: trained models and model files
- `tests/`: test files for the source code
- `pyproject.toml`: project metadata and dependencies
- `LICENSE`: license information
- `README.md`: project information and instructions

Feel free to modify the structure to fit your needs.

## License

Files in this repository are licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
