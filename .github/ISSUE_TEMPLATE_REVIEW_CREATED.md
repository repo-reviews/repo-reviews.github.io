---
title: Review next steps
labels: review-created
---
Someone just pushed a new review. Here's who did it: {{ payload.sender.login }}.

{{ toJson(payload) }}


actor: @{{actor}}

ENV
sha: @{{ GITHUB_SHA }}

GITHUB CONTEXT
sha: @{{ GITHUB_CONTEXT.sha }}
actor: @{{ GITHUB_CONTEXT.actor }}
author: @{{ GITHUB_CONTEXT.event.commits[0].author.username }}
