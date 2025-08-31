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
