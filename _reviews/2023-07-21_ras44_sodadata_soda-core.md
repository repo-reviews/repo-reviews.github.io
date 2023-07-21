---
layout: review
repository_owner: sodadata
repository_name: soda-core
review_title: Promising library, quickstart confusion
author_github_id: ras44
date: 2023-07-21
---
![image](https://github.com/repo-reviews/repo-reviews.github.io/assets/9282281/908aefa2-6289-4608-aa37-6410ed14dbb0)

# Summary


From the [README](https://github.com/sodadata/soda-core#readme):

✔ An open-source, CLI tool and Python library for data quality testing
✔ Compatible with the Soda Checks Language (SodaCL)
✔ Enables data quality testing both in and out of your data pipelines and development workflows
✔ Integrated to allow a Soda scan in a data pipeline, or programmatic scans on a time-based schedule

Soda Core is a free, open-source, command-line tool and Python library that enables you to use the Soda Checks Language to turn user-defined input into aggregated SQL queries.

When it runs a scan on a dataset, Soda Core executes the checks to find invalid, missing, or unexpected data. When your Soda Checks fail, they surface the data that you defined as bad-quality.


# Pros

- promising data quality and governance tool
- open-sourced [soda-core](https://github.com/sodadata/soda-core)
- great [online documentation](https://docs.soda.io/)
- proactive and supportive team, members reached out to me directly to resolve issues
- responsive on GitHub

# Cons
- README is a bit verbose, with links in many directions: should focus on pointing to quickstart and then add further detail later
- time-windowed and group by are some of multiple features behind cloud wall
- would be helpful to have a quick taxonomy of what is available in soda-core, soda-library, and soda-scientific; what requires cloud; when evaluating vendors and lock-in this would be a significant time-saver
- confusion in quickstart about whether I a cloud account was required: answer is no/maybe

In my haste to get something working, I went to soda core docs, which then led me to a [quickstart](https://docs.soda.io/soda/quick-start-sip.html), which included a cloud-account creation step, which I avoided.  I then misinterpreted an error meaning that the quickstart would not work without a cloud account.  That's not the case, though!  You will still have all the soda-core functionality, but you will receive errors for any of the extended functionality that soda-library provides.  So use soda-core all you want, and then when you're ready to use any of the soda-library features, like time-windowed features, you'll need to set up an account.  Free accounts currently only last for 45 days after which you'll need to sign up.

When I raised this with the team, the bizdev and pm both reached out to clarify- super helpful, proactive, and informative.

Response on GitHub was also quick and helpful.  I created a postgres quickstart that avoids the cloud account creation issue and runs all in one script.  It's available at [https://github.com/sodadata/soda-core/blob/main/examples/postgres_example.md](https://github.com/sodadata/soda-core/blob/main/examples/postgres_example.md).

Finally, for an [issue](https://github.com/sodadata/soda-core/issues/1912) I'd called out, they clearly have an internal JIRA tracking issues and ensuring bugs are followed up on.

All in all, this is a helpful tool and I'm going to stay tuned to soda.  Soda excels is in customer support and engagement- they clearly want to build a winning product and I've observed motivation across multiple teams.  That will lead to long-term success and reliable support for enterprise customers.

