---
repository_owner: hashicorp
repository_name: terraform
review_title: Terraform is dead long live Pulumi
---

This review quotes from:

[https://matduggan.com/terraform-is-dead-long-live-pulumi/](https://matduggan.com/terraform-is-dead-long-live-pulumi/)

# Screenshot stars and forks
![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/135327276/0fcde7d5-4216-49ff-a1db-eba211e36996)


# Screenshot headline image

![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/135327276/f73c2bef-f6d2-4936-802f-74863fd15bb6)

# Summary

From the [article](https://matduggan.com/terraform-is-dead-long-live-pulumi/):

> Do I think Pulumi can take over the Terraform throne? There's a lot to like here. The product is one of those great ideas, a natural evolution from where we started in DevOps to where we want to go. Moving towards treating infrastructure like everything else is the next logical leap and they have already done a lot of the ground work. I want Pulumi to succeed, I like it as a product.

> However it needs to get out of its own way. The pricing needs a rethink, make it a no-brainier for me to use your cloud product and get fully integrated into it. If you give me a reliable, consistent bill I can present to leadership, I don't have to worry about Pulumi as a service I need to police. The entire organization can be let loose to write whatever infra they need, which benefits us and Pulumi as we'll be more dependent on their internal tooling.

> If cost management is a big issue, have me bring my own object storage and VMs for runners. Pulumi can still thrive and be very successfully without being a zero-setup business. This is a tool for people who maintain large infrastructures. We can handle some infrastructure requirements if that is the sticking point.  

> Hopefully the folks running Pulumi see this moment as the opportunity it is, both for the field at large to move past markup languages and for them to make a grab for a large share of the market.


# Pros

> Not every tool is like this. I've been using Terraform at least once a week for the last 5 years. I have led migrating two companies to Infrastructure as Code with Terraform from using the web UI of their cloud provider, writing easily tens of thousands of lines of HCL along the way. At first I loved Terraform, HCL felt easy to write, the providers from places like AWS and GCP are well maintained and there are tons of resources on the internet to get you out of any problem.
> 
# Cons

- License change:

> All of this is annoying, but I've learned to grumble and live with it. Then HashiCorp decided to pull the panic lever of "open-source" companies which is a big license change. Even though Terraform Cloud, their money-making product, was never open-source, they decided that the Terraform CLI needed to fall under the BSL. You can read it here. The specific clause people are getting upset about is below:

>> You may make production use of the Licensed Work,
provided such use does not include offering the Licensed Work to third parties on a hosted or embedded basis which is competitive with HashiCorp's products.

> Now this clause, combined with the 4 year expiration date, effectively kills the Terraform ecosystem. Nobody is going to authorize internal teams to open-source any complementary tooling with the BSL in place and there certainly isn't going to be any competitive pressure to improve Terraform. While it doesn't, at least how I read it as not a lawyer, really impact most usage of Terraform as just a tool that you run on your laptop, it does make the future of Terraform development directly tied to Terraform Cloud. This wouldn't be a problem except Terraform Cloud is bad.

- Terraform Cloud
I've used it for a year, it's extremely bare-bones software. It picks the latest version when you make the workspace of Terraform and then that's it. It doesn't help you upgrade Terraform, it doesn't really do any checking or optimizations, structure suggestions or anything else you need as Terraform scales. It sorta integrates with Terragrunt but not really. Basically it is identical to the CLI output of Terraform with some slight visual dressing. Then there's the kicker: the price.

- Pricing

# How to support author

[https://matduggan.com/terraform-is-dead-long-live-pulumi/](https://matduggan.com/terraform-is-dead-long-live-pulumi/)



