#! /bin/bash

GITHUB_TOKEN="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"

REPOSITORY_NAME="repo-reviews"
GITHUB_AUTHOR="test-author"
REVIEW_URL="test-url"


BODY_RAW="

### Hello from Repo Reviews 👋

| [Project Source](https://github.com/repo-reviews/repo-reviews.github.io) | [Website](https://repo-reviews.github.io) |

Support the GitHub community with a helpful ❤️ [repo review](https://github.com/repo-reviews/repo-reviews.github.io/blob/main/create.md) ❤️

---

A review was just submitted for **$REPOSITORY_NAME** on [repo-reviews.github.io](https://repo-reviews.github.io) by @$GITHUB_AUTHOR.

It can be found at: $REVIEW_URL.


We've created this issue to help you:

- Create a review for any GitHub repo at: https://github.com/repo-reviews/repo-reviews.github.io/blob/main/create.md

- Include review badges for your repo's README by following the [instructions](https://github.com/repo-reviews/repo-reviews.github.io#add-badges) in our README.md.

---

### Mission
#### *Increase productivity and success in the GitHub community with a transparent, trusted forum that publishes user experiences.*

### Why?

*GitHub repos don’t include stories of user experiences.*

*Sharing these stories can avoid rabbit-holes and save time, greatly increasing productivity across the community.*

![visitors](https://visitor-badge.laobi.icu/badge?page_id=repo-reviews)

---

We welcome your contributions!

"

echo "$BODY_RAW"

BODY=`echo "$BODY_RAW" | jq -Rsa .`

echo "$BODY"

curl --location --request POST 'https://api.github.com/repos/repo-reviews/repo-reviews.github.io/issues' \
--header "Authorization: Bearer $GITHUB_TOKEN" \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "repo review added by @'"$GITHUB_AUTHOR"'",
    "body": '"$BODY"'
}'

#curl --location --request POST 'https://api.github.com/repos/ras44/condusco/issues' \
#--header "Authorization: Bearer $GITHUB_TOKEN" \
#--header 'Content-Type: application/json' \
#--data-raw '{
#    "title": "repo review added by @'"$GITHUB_AUTHOR"'",
#    "body": '"$BODY"'
#}'

