# ICT202 Assignment 1: Explainable Machine Learning

## Running

First, ensure that you have the following requirements:

- Python `>= 3.11`
- Pipenv `>= 2023.2.0`

Then, run the following in your shell in the repository's root directory (i.e., the directory containing `Pipfile`):

```
$ pipenv install
$ pipenv run jupyter-lab
```

The above should launch JupyterLab's web interface in your default browser.
You can now explore and run the Jupyter notebooks under the `jupyter-files/` directory.

## Project Structure

`Pipfile` and `Pipfile.lock` are specific to Pipenv.
In particular, `Pipfile` specifies this project's dependencies
and is used to create a reproducible environment for better collaboration.

All Jupyter notebooks are found in the `jupyter-files/` directory:
  - `exploration.ipynb`: Contains visualisations and general statistics about the dataset.
  - `preprocessing.ipynb`: Preprocessing of the dataset (train-test split, one-hot encoding, label encoding, standardisation, etc.).
  - `model-selection.ipynb`: Nested cross-validation to select the models and tune their hyperparameters.
  - `training.ipynb`: Training of the models.
  - `lime.ipynb`: Applying LIME to the models.
  - `shap.ipynb`: Applying SHAP to the models.

The `dataset/` folder contains the original dataset in CSV format (`obesityData.csv`),
in addition to its preprocessed variants created and exported by `preprocessing.ipynb`.

The `encoders/` folder contains encoders (one-hot encoder, label encoder, standard scaler) pickled and exported by `preprocessing.ipynb`.
These encoders are used by some of the other notebooks.

Similarly, the `models/` folder contains trained models (random forest classifiers) pickled and exported by `training.ipynb`.

`flake.nix`, `flake.lock` and the `nix/` folder contain [Nix](https://github.com/NixOS/nix)-specific code for a local development shell.


## Github Branch Usage

Please adhere to the following guidelines when using GitHub:
- **Do not edit or push anything directly to the `master` branch.**
- For any features to add, create a feature branch based off the `dev` branch.
- Work on your feature in the respective feature branch.
- Once your feature is complete, submit a pull request from your feature branch to the `dev` branch for review and integration.
- Before submitting a pull request, please ensure your feature branch is up-to-date with the latest changes in the `dev` branch. You can do this by rebasing your feature branch onto the `dev` branch:
    ```bash
    $ git checkout dev
    $ git pull origin dev
    $ git checkout feature/your-feature-name
    $ git rebase dev
    ```
- Resolve any conflicts if they arise during the rebase process.
- Once the rebase is complete and there are no conflicts, push your changes to your feature branch:
    ```bash
    $ git push origin feature/your-feature-name
    ```
- Then, go to GitHub and create a pull request from your feature branch to the `dev` branch.
<br>
Thank you for following these guidelines to maintain a clean and organised devleopment workflow.
