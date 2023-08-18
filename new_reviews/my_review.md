---
repository_owner: pulumi
repository_name: pulummi
review_title: OSS is good alternative to Terraform
---

This review quotes from:

[https://matduggan.com/terraform-is-dead-long-live-pulumi/](https://matduggan.com/terraform-is-dead-long-live-pulumi/)

# Screenshot stars and forks

![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/135327276/0b8db9cb-6a48-4746-826c-4ae3a7084aea)


# Screenshot headline image

![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/135327276/7f8d0f20-717d-42b2-9120-7e489293c054)

# Summary
Pulumi's Infrastructure as Code SDK is the easiest way to build and deploy infrastructure, of any architecture and on any cloud, using programming languages that you already know and love. Code and ship infrastructure faster with your favorite languages and tools, and embed IaC anywhere with Automation API.

Simply write code in your favorite language and Pulumi automatically provisions and manages your resources on AWS, Azure, Google Cloud Platform, Kubernetes, and 120+ providers using an infrastructure-as-code approach. Skip the YAML, and use standard language features like loops, functions, classes, and package management that you already know and love.


From the [article](https://matduggan.com/terraform-is-dead-long-live-pulumi/):

> Do I think Pulumi can take over the Terraform throne? There's a lot to like here. The product is one of those great ideas, a natural evolution from where we started in DevOps to where we want to go. Moving towards treating infrastructure like everything else is the next logical leap and they have already done a lot of the ground work. I want Pulumi to succeed, I like it as a product.

> However it needs to get out of its own way. The pricing needs a rethink, make it a no-brainier for me to use your cloud product and get fully integrated into it. If you give me a reliable, consistent bill I can present to leadership, I don't have to worry about Pulumi as a service I need to police. The entire organization can be let loose to write whatever infra they need, which benefits us and Pulumi as we'll be more dependent on their internal tooling.

> If cost management is a big issue, have me bring my own object storage and VMs for runners. Pulumi can still thrive and be very successfully without being a zero-setup business. This is a tool for people who maintain large infrastructures. We can handle some infrastructure requirements if that is the sticking point.  

> Hopefully the folks running Pulumi see this moment as the opportunity it is, both for the field at large to move past markup languages and for them to make a grab for a large share of the market.


# Pros

> Here are some delightful (maybe obvious) things I ran into while working with Pulumi.

> We already have experts in these languages. It was great to be able to ask someone with years of Python development experience "what is the best way to structure large Python projects". There is so much expertise and documentation out there vs the wasteland that is Terraform project architecture.

> Being able to use a database. Holy crap, this was a real game-changer to me. I pulled down the GCP IAM stock roles, stuck them in SQLite and then was able to query them depending on the set of permissions the service account or user group required. Very small thing, but a massive time-saver vs me going to the website and searching around. It also lets me automate the entire process of Ticket -> PR for IAM role.

# Cons

- Cloud costs are expensive relative to Terraform

# How to support author

[https://matduggan.com/terraform-is-dead-long-live-pulumi/](https://matduggan.com/terraform-is-dead-long-live-pulumi/)

[https://github.com/pulumi/pulumi](https://github.com/pulumi/pulumi)


