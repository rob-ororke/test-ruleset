
# OWNER=rob-ororke
# REPO=test-ruleset

OWNER=University-of-Glasgow-Internal
REPO=examiners2-es

gh api \
  --method POST \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  "repos/$OWNER/$REPO/rulesets" \
  --input ruleset.json \
  --jq '.id, ._links.html.href'

