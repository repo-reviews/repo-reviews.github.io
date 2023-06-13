---
title: Review next steps
labels: review-created
---
Someone just pushed a new review. Here's who did it: {{ payload.sender.login }}.

actor: @{{actor}}

ENV
sha: @{{ env.GITHUB_SHA }}
action_state: @{{ env.action_state }}

review_repository_owner: @{{ env.review_repository_owner }}
review_repository_name: {{ env.review_repository_name }}
review_author: @{{ env.review_author }}
review_file: {{ env.review_file }}
