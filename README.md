Investigate how RuleSets work
===

## Apply using UI

## Apply using gh

## Files

Added 2 files:
- .github/workflows/enforce-gitflow.yml
- .github/rulesets.yml

### enforce-gitflow.yml
This file ensures that when a pull request is created against `develop`, itmust be called `feature/`.
When a PR is created against `main` it must be called either `release/` or `hotfix/`.
When these rules are not followed then an error message is displayed and the job exits with status code `1`.

### rulesets.yml

Defines the rulesets that apply to the various branches.

### rule for commit messages

Example Matching Commit Message
EX_123: feat(auth)!: Add login throttling to prevent brute-force attacks
🔍 Breakdown of Pattern Match
EX_123: → Matches ^EX_\d{3}
feat(auth)!: → Matches (type)(scope)?(!)?
feat is one of the allowed types
(auth) is the optional scope
! indicates a breaking change (optional)
Add login throttling to prevent brute-force attacks → Matches the description


### Commands

```bash
# List rulesets
gh ruleset list -R OWNER/REPO

# View one ruleset (pass an ID from the list)
gh ruleset view RULESET_ID -R OWNER/REPO

# Check which rules apply to a branch
gh ruleset check develop -R OWNER/REPO
```
