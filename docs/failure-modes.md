# Failure Modes

For `summit-model-train-yard`, I would look first for these mistakes:

- `feature drift` cases moving lanes without a matching threshold change.
- `metric stability` scoring higher after drag increases.
- Duplicate fixture ids hiding a stale golden row.
- README examples drifting away from the verifier.

The local checks are intentionally strict about these cases.
