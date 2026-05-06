# Review Journal

This journal records the domain cases that matter before widening the public API.

The local checks classify each case as `ship`, `watch`, or `hold`. That gives the project a small review vocabulary that matches its ml utilities focus without claiming live deployment or external usage.

## Cases

- `baseline`: `feature drift`, score 115, lane `watch`
- `stress`: `window width`, score 138, lane `watch`
- `edge`: `metric stability`, score 149, lane `ship`
- `recovery`: `explainability`, score 183, lane `ship`
- `stale`: `feature drift`, score 145, lane `ship`

## Note

The repository should be understandable without pretending it is larger than it is.
