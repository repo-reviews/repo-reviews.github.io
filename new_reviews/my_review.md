---
repository_owner: AuroraCoboAguilera
repository_name: huggingface
review_title: Hugging face, the accelerator to develop your own NLP
---

# Review of Hugging face, a Transformers library 🤗

I recently had the opportunity to explore the **Huging face** repository, and I wanted to share my experience and thoughts. It is a repository I have explored and applied during my PhD and it may help many other who want to try their own transformer models.

## Overview

The **Hugging face** is a fantastic open-source project that aims to use pre-trained NLP models. It provides a user-friendly interface and powerful features to help individuals and teams take advantages of others' model or even share their own.

In addition, this repo offers solutions for classification, information extraction, question answering, summarization, translation, text generation, among other tasks in more than 100 languages.

As they textually say in their repo...

> Transformers provides APIs to quickly download and use those pretrained models on a given text, fine-tune them on your own datasets and then share them with the community on our model hub. At the same time, each python module defining an architecture is fully standalone and can be modified to enable quick research experiments.

and...

> Transformers is backed by the three most popular deep learning libraries — Jax, PyTorch and TensorFlow — with a seamless integration between them. It's straightforward to train your models with one before loading them for inference with the other.

It seems to be a perfect tool for NLP. Here I expose my thoughts!

### Pros

- The user interface is intuitive and visually appealing, making it easy to navigate and understand. ✅
- The project has excellent documentation in the form of a detailed README file, providing clear instructions on how to get started and use the application effectively. ✅
- The codebase is well-structured and follows best practices, making it easy to understand and contribute to, as well as reuse it. ✅

### Cons

- I encountered a minor issue while trying to import text from a CSV file. The import functionality failed when the file contained special characters. It would be great to have better handling of such cases. ❌
- The Pyhon class for loading the dataset beforee training or finetuning a model is difficult to fit in the data sometimes. ❌

## Suggestions

- It would be beneficial to have more flexible functions to read data for a dataset. ❔
- Adding support for integrations with popular project management tools like Jira or Trello would further enhance the project's capabilities. ❔


## Examples
Some code lines examples in Python of the easy-to-use tool are the following:

```
config = AutoConfig.from_pretrained(model_name)
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelWithLMHead.from_pretrained(model_name, config=config)
```

where you only have to choose the type of model class (for example AutoModelWithLMHead) and the pretrained model in the [web](https://huggingface.co/models). You can search by task, topic, type of transformers, etc!

## Conclusion✨

Overall, I had a positive experience exploring the **Hugging face** repository. It offers a well-designed solution for NLP projects, and with some minor improvements, it has the potential to become even more powerful and widely adopted.

See the whole documentation in the following [link](https://huggingface.co/docs/transformers/index).

![Screenshot](screenshots/Screenshot.png)

For more details and code examples, you can check out my repository with one of my PhD models: [NoRBERT](https://github.com/AuroraCoboAguilera/NoRBERT).

Kudos to the maintainers for creating such a useful tool!
