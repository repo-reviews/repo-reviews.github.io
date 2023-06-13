#! /bin/bash

GITHUB_TOKEN=$1

REPOSITORY_OWNER=$2
REPOSITORY_NAME=$3
GITHUB_AUTHOR=$4
REVIEW_URL=$5

echo "-----[notify_repo_via_issue.sh]------"
echo "REPOSITORY OWNER $REPOSITORY_OWNER..."
echo "REPOSITORY_NAME $REPOSITORY_NAME..."
echo "GITHUB_AUTHOR $GITHUB_AUTHOR..."
echo "REVIEW_URL $REVIEW_URL..."

BODY_RAW="

### Hello from Repo Reviews 👋

| [Project Source](https://github.com/repo-reviews/repo-reviews.github.io) | [Website](https://repo-reviews.github.io) |

Support the GitHub community with a helpful ❤️ [repo review](https://github.com/repo-reviews/repo-reviews.github.io/blob/main/create.md) ❤️

---

A review was just submitted for [$REPOSITORY_NAME](https://www.github.com/$REPOSITORY_OWNER/$REPOSITORY_NAME) on [repo-reviews.github.io](https://repo-reviews.github.io) by @$GITHUB_AUTHOR.

It can be found [here]($REVIEW_URL).


We've created this issue to help you:

- [Create a review](https://github.com/repo-reviews/repo-reviews.github.io/blob/main/create.md)

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

#echo "******************** IN notify_repo_via_issue.sh: ******************"
#echo "$BODY_RAW"

BODY=`echo "$BODY_RAW" | jq -Rsa .`

#echo "$BODY"

echo "******************** IN notify_repo_via_issue.sh: add repo to repo-reviews, github token ******************"
curl --location --request POST "https://api.github.com/repos/repo-reviews/repo-reviews.github.io/issues" \
--header "Authorization: Bearer $GITHUB_TOKEN" \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "repo review added for '"$REPOSITORY_NAME"'",
    "body": '"$BODY"'
}'

echo "******************** IN notify_repo_via_issue.sh: add repo to variable repo, github token ******************"
curl --location --request POST "https://api.github.com/repos/$REPOSITORY_OWNER/$REPOSITORY_NAME/issues" \
--header "Authorization: Bearer $GITHUB_TOKEN" \
--header 'Content-Type: application/json' \
--data-raw '{
    "title": "repo review added for '"$REPOSITORY_NAME"'",
    "body": '"$BODY"'
}'

