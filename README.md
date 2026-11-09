# GaryWenneker/homebrew-tap

Homebrew tap for [AX (Agent Xpansion)](https://getax.wenneker.io).

## Install

```bash
brew tap GaryWenneker/tap
brew install ax
```

## Upgrade / uninstall

```bash
brew upgrade ax
brew uninstall ax
```

Uninstall removes only the Homebrew-managed binary. Project data under `<project>/.ax/` and user data under `~/.ax/` are preserved.

Homebrew-managed installs refuse `ax upgrade` — use `brew upgrade ax` instead.

## Formula source

`Formula/ax.rb` is stamped from published [GaryWenneker/ax](https://github.com/GaryWenneker/ax) release archives and `SHA256SUMS` by the ax release pipeline (`scripts/homebrew_tap_prepare.py`).
