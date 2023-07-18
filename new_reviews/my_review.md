---
repository_owner: openai
repository_name: whisper
review_title: Well built with easy install
---

# Summary
Whisper is a general-purpose speech recognition model. It is trained on a large dataset of diverse audio and is also a multitasking model that can perform multilingual speech recognition, speech translation, and language identification.

Most heavily developed recently by:
- https://github.com/jongwook, technical staff at OpenAI


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

Also examples exist on https://huggingface.co/spaces/aadnk/whisper-webui
