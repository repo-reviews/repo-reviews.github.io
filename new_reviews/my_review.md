---
repository_owner: community
repository_name: MainmCommunity
review_title: Manim community review
---

<p align="center"><img src="https://github.com/pingwie/repo-reviews.github.io/assets/manim.png" width="300"></p>



# Intro
I’m a mathematician who has been using Manim for years to create mathematical animations :movie_camera: for my classes.  
ManimCommunity is a community-maintained repository, which offers the implementation of the animation engine Manim, designed for the creation of explanatory math videos.
It should be noted that there are two projects around this graphic engine:
- [3b1b/manim](https://github.com/3b1b/manim), which is the original project of the creator (Grant Sanderson created the Manim engine for his Youtube channel [3Blue1Brown](https://www.youtube.com/@3blue1brown)).
- [ManimCommunity](https://github.com/ManimCommunity/manim) which is the project maintained by the community, inspired by Grant Sanderson's original repository, but with an important effort to rewrite all the code in a more structured and logical way.

The last one is updated more frequently than the first one, and it's recommended to use this one if you'd like to use Manim for your own projects, besides the documentation is very good.

Although the installation of Manim is well documented, and the repository provides clear instructions, installing all the dependencies has traditionally been one of the biggest problems faced by those using Manim for the first time, so here goes my recommendation:

If you are familiar with Docker :whale2:, the community maintains a Docker image, which can be found at [on DockerHub](https://hub.docker.com/r/manimcommunity/manim), that you can use to render your own scenes.

**Quick Example**
To render a scene `CircleToSquare` ina file `test_scene.py` you can use 
```bash
docker run --rm -it  --user="$(id -u):$(id -g)" -v "$(pwd)":/manim manimcommunity/manim manim test_scenes.py CircleToSquare -qm
```
You can even spin ap a local server running JupyterLab on whose Python kernel manin is installed.

## Documentation
The repository has good documentation that can help most beginner projects. It has examples and the videos that those scripts generate. However, when we get into more advanced projects, we find that it is common to have to dive into the source code to find out what function you need for certain aspects of your scene.

If you want to try Manim because you have seen the [3Blue1Brown](https://www.youtube.com/@3blue1brown) channel videos, I recommend that you use the ManimCommunity version. Once you are comfortable with this engine, if you want to try for yourself some of the scripts used to create the vidos of that channel, you will have to install the other version ([3b1b/manim](https://github.com/3b1b/manim)).


Love this repo. Requesting approval as a reviewer.
