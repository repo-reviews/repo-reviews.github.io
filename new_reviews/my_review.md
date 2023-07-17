---
repository_owner: bazingagin
repository_name: npc_gzip
review_title: code for paper
---

# Pros
This is a handy repo shared by the authors of the paper **“Low-Resource” Text Classification: A Parameter-Free Classification Method with Compressors**, available at https://aclanthology.org/2023.findings-acl.426/

A copy of the abstract:

Abstract
Deep neural networks (DNNs) are often used for text classification due to their high accuracy. However, DNNs can be computationally intensive, requiring millions of parameters and large amounts of labeled data, which can make them expensive to use, to optimize, and to transfer to out-of-distribution (OOD) cases in practice. In this paper, we propose a non-parametric alternative to DNNs that’s easy, lightweight, and universal in text classification: a combination of a simple compressor like gzip with a k-nearest-neighbor classifier. Without any training parameters, our method achieves results that are competitive with non-pretrained deep learning methods on six in-distribution datasets.It even outperforms BERT on all five OOD datasets, including four low-resource languages. Our method also excels in the few-shot setting, where labeled data are too scarce to train DNNs effectively.

# Cons

Does not provide a reproducible install process.  What should work simply on ubuntu, for example, is:

```
conda env create -n npc python=3.8
conda activate npc
pip install -r requirements.txt
```

However, this leads to installation issues.  Simply `pip installing` what is in the `require` section of the README.md also does not work.

