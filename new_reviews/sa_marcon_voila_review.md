---
repository_owner: Voila-Dashboards
repository_name: voila
review_title: Reviewing Viola for Python
---

<a href='https://github.com/repo-reviews/repo-reviews.github.io/blob/main/create.md' target="_blank"><img alt='Github' src='https://img.shields.io/badge/review-100000?style=flat&logo=Github&logoColor=white&labelColor=888888&color=555555'/></a>

<!--
<a href='https://repo-reviews.github.io/repos' target="_blank"><img alt='Github' src='https://img.shields.io/badge/view_reviews-100000?style=flat&logo=Github&logoColor=white&labelColor=888888&color=555555'/></a>
-->
<a href='[https://repo-reviews.github.io/repos](https://repo-reviews.github.io/repos/SAMarcon_repo-reviews)' target="_blank"><img alt='Github' src='https://img.shields.io/badge/view_reviews-100000?style=flat&logo=Github&logoColor=white&labelColor=888888&color=555555'/></a>

## Initial Thoughts
This is a review of the [Voilà](https://github.com/voila-dashboards/voila) dashboard package in Python. Voila is an innovative tool that allows one to make a dashboard from a **Jupyter notebook**.

Personally, I feel that this has great potential as a "productivity booster". Some key points for me are the following:

- Easy to understand README
- Ease of installation
- Main idea of utilization
- Personal experience using the package

## The README file

Firstly, I have to compliment the README of this repository. For me, it is visually engaging indicating some of the key points like installation and execution via the commandline. Perhaps, some may not like running it in this manner, but I find no issue with it. Moreover, there is also a link to the voilà's documentation (please see the following link [https://voila.readthedocs.io/](https://voila.readthedocs.io/)). If a person would like to contribute to this package, you can find the following [link](https://github.com/voila-dashboards/voila/blob/main/CONTRIBUTING.md) on the README--please see image below.

<img width="507" alt="contribute" src="https://github.com/SAMarcon/repo-reviews.github.io/assets/60097529/a232e6b0-5e8f-4789-9436-e629cc7dbde3">


## Installation

The installation is straightforward as can be seen in the following image.
<img width="619" alt="install2" src="https://github.com/SAMarcon/repo-reviews.github.io/assets/60097529/6f352505-0bad-4b1a-8631-3e5e30254735">

A person can install this package by using pip in python or by using a version control package like mamba or anaconda. In my experience, I created a virtual environment by using **pyenv** and installed voilà via pip. The installation went smoothly without any issues. Please note that if you are using **Jupyter 3.0**, the jupyterLab preview extension for voilà is automatically installed.


## Idea behind voilà
Please note that there are a number of packages that you need in order to fully utilize **voilà**. The most important package that is required is [ipywidgets](https://ipywidgets.readthedocs.io/en/stable/). In addition, there is a list of other packages under [requirements-visual-test.txt](https://github.com/voila-dashboards/voila/blob/main/requirements-visual-test.txt) which are used for the example notebooks. The idea is to simply build your notebook, then to go to the commandline and type the following by your notebook (call it example.ipynb)

`C:path to directory where notebook is contained>  voila example.ipynb `

#### [Notebooks](https://github.com/voila-dashboards/voila/tree/main/notebooks) examples
There is an extensive set of examples under the [notebooks]((https://github.com/voila-dashboards/voila/tree/main/notebooks)) folder. They are quick to run, allowing a person
to get a good idea of how to use voilà. Personally, I also ran my own example using the classical iris dataset (please see below).

![iris_eg](https://github.com/SAMarcon/repo-reviews.github.io/assets/60097529/f4c6fe6b-09db-4a95-8a3d-a063f09e2480)

For the examples, I liked the following:


  - [mimerenderers.ipynb](https://github.com/voila-dashboards/voila/blob/main/notebooks/mimerenderers.ipynb): This example shows that person can use a variety of different outputs in a jupyter notebook. In particular, it also displays mathematical equations very well. In this instance, [IPython](https://ipython.org/) is used to produce the desired outputs. Hence, this is another package to keep in mind when using voilà.
  - There are also a couple of examples where multiple widgets are used, namely [mutiple_widgets.ipynb](https://github.com/voila-dashboards/voila/blob/main/notebooks/multiple_widgets.ipynb) and [gridspecLayout.ipynb](https://github.com/voila-dashboards/voila/blob/main/notebooks/gridspecLayout.ipynb). Please see the image below which is an example of an output from gridspecLayout.ipynb.
    <img width="908" alt="gridspecLayout_multiplications" src="https://github.com/SAMarcon/repo-reviews.github.io/assets/60097529/1ca8f1f6-6b17-4a0f-ab15-ba127843816a">


## Concerns
[Heroku](https://help.heroku.com/RSBRUH58/removal-of-heroku-free-product-plans-faq#:~:text=For%20non%2DEnterprise%20users%2C%20free,will%20be%20converted%20to%20mini%20.) is no longer free for deploying. 

There are also different styles and themes for voilà that are not indicated under an example (something that I think would be nice to add). Personally, I had to install gridstack styles using pip as it was not running via the commandline immediately.

<img width="430" alt="gridstack_error" src="https://github.com/SAMarcon/repo-reviews.github.io/assets/60097529/71402078-af4a-4b46-9dcd-32ff02b0fcb0">

From the documentation about voilà, it is indicated that the above issue can be resolved by installing `voila-material`. Personally, I had to also install `voila-gridstack` in order to resolve this issue. Now I can use

`voila iris.ipynb --template=gridstack`

## Similar packages

Here is a list of similar packages that may be worth investigating (just in case you want some other options):

  - RShiny
  - Shiny for python
  - Dash
  - Panel
  - Streamlit

### Comparison with dedicated tools

I think that voilà is for those that are more technically inclined and that are more willing to jump into the code. It does provide a very customed alternative to the powerhouse dashboards like Power BI and Tableau and it looks reactive enough to avoid React.js and using flask, etc.

## Conclusion
This is a lovely package with plenty of room for growth and creativity especially if you want something that you have control over, but you do not want to spend too much time on the semantics of things. It also makes use of existing python and jupyter notebook knowledge (another timesaver).


