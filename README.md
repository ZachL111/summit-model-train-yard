# summit-model-train-yard

`summit-model-train-yard` is a compact Haskell repository for ml utilities, centered on this goal: Create a Haskell reference implementation for train workflows, centered on state machine modeling, transition tables, and invalid-transition tests.

## Purpose

The point is to make a small domain rule concrete enough that a reader can change it and immediately see what broke.

## Summit Model Train Yard Review Notes

The first comparison I would make is `explainability` against `feature drift` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for feature drift and window width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/summit-model-train-walkthrough.md` walks through the case spread.
- The Haskell code includes a review path for `explainability` and `feature drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The fixture data drives the tests. The code stays thin, while `metadata/domain-review.json` and `config/review-profile.json` explain what each case is meant to protect.

The Haskell code keeps the review rule close to the tests.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The same command runs the local verification path. The highest-scoring domain case is `recovery` at 183, which lands in `ship`. The most cautious case is `baseline` at 115, which lands in `watch`.

## Limits

No external service is required. A deeper version would add more negative cases and a clearer boundary around invalid input.
