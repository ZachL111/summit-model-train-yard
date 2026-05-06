# Summit Model Train Yard Walkthrough

I use this file as a small checklist before changing the Haskell implementation.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | feature drift | 115 | watch |
| stress | window width | 138 | watch |
| edge | metric stability | 149 | ship |
| recovery | explainability | 183 | ship |
| stale | feature drift | 145 | ship |

Start with `recovery` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `explainability` against `feature drift`, not the raw score alone.
