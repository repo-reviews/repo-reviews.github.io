---
layout: review
repository_owner: openai
repository_name: whisper
review_title: Well built with easy install
author_github_id: richardanderson001
date: 2023-07-18
---

![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/136455818/2008b37a-abbe-4b85-912a-cb80f1a9c90b)

![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/136455818/b31c5498-ba5a-4273-9a01-99fb5b7f587b)


# Summary
Whisper is a general-purpose speech recognition model. It is trained on a large dataset of diverse audio and is also a multitasking model that can perform multilingual speech recognition, speech translation, and language identification.

Most heavily developed recently by:
- [https://github.com/jongwook](https://github.com/jongwook): technical staff at OpenAI


## pros

- great examples on colab, 
- very easy install process, was able build in a conda env with python=3.8
- active development: 41.4k stars, 368 watching, 4.7k forks

## cons
- heavily developed by one person, support is likely subject to their bandwidth constraints
- does not have issues enabled
  - because of this errors seem to have migrated to [discussions](https://github.com/openai/whisper/discussions/categories/general) (eg. PyPI build out of date, installation issues, etc.)
  - reports of issues hosting on AWS lambda layer, with model being too big

## Next
Would love to get a better perspective on what the biggest issues for this repo are and if anyone is using it in production.

The [Show and tell](https://github.com/openai/whisper/discussions/categories/show-and-tell) has helpful stories.

Also examples exist on [https://huggingface.co/spaces/aadnk/whisper-webui](https://huggingface.co/spaces/aadnk/whisper-webui)

