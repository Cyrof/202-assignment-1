# ICT202 Assignment 1: Explainable Machine Learning

## Running

First, ensure that you have the following requirements:

- Python `>= 3.11`
- Pipenv `>= 2023.2.0`

Then, run the following in your shell in the repository's root directory (i.e., the directory containing `Pipfile`):

```
$ pipenv install
$ pipenv shell jupyter-lab
```

The above should launch JupyterLab's web interface in your default browser.
Now, open the `explainable-ml.ipynb` file within the interface and run it to your heart's content!

## Github Branch Usage

Please adhere to the following guidelines when using GitHub:
- **Do not edit or push anything directly to the master branch.**
- For any features to add, create a feature branch based off the dev branch.
- Work on your feature in the respective feature branch.
- Once your feature is complete, submit a pull request from your feature branche to the dev branch for review and integration.
- Before submitting a pull request, please ensure your feature branch is up to date with the latest changes in the dev branch. You can do this by rebasing your feature branch onto the dev branch: 
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
- Then, go to GitHub and create a pull request from your feature branch to the dev branch.
<br>
Thank you for following these guidelines to maintain a clean and organised devleopment workflow. 
