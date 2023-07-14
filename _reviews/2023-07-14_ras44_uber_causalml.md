---
layout: review
repository_owner: uber
repository_name: causalml
review_title: Best to build from source, some dep issues, econml alternative
author_github_id: ras44
date: 2023-07-14
---
![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/136455818/6f4694ff-1319-4a6b-a18e-a84fa94b5725)

## Benefits

- CausalML provides a suite of state-of-the-art machine learning tools for estimating treatment effects
- Applications include campaign optimization, personalization
- README contains details on available algorithms
- Quickstart contains examples and includes interpretability, vizualization features
- We have used causalml successfully for production causal inference

## Challenges

- Active development has slowed as of 2022 as multiple original contributors have moved on

- Repo is being incubated, but it's unclear if that's for quality assurance or as a sign of end of support/development

- The repo contains a variety of environment files in envs/environment[-tf]-py[36,37,38] and multiple users experience issues creating conda environments with them
  - I've had the most success just building from source, for example:

```
conda create -n py38 python=3.8
conda activate py38
cd causalml
python -m pip install .[test]
pytest -vs tests/ --cov causalml/
```

- However, if building from source, there are important constraints to consider that can be found in the [pyproject.toml](https://github.com/uber/causalml/blob/master/pyproject.toml) file:

  - Here we see that we are locked into `scikit-learn<1.0.2` and `numpy<1.23`, which can lead to conflicts with more recently updated packages.

  - Releasing these constraints would require significant lift

- Note that you can at times create the conda environments, but not all tests will run successfully.
  - This is what leads to most of the issues mentioning errors in the conda env installs

- An alternative repo that seems to have much more activity lately is https://github.com/py-why/EconML

```

