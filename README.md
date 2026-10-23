# Homebrew tap

Apps by Fernando Conde, distributed with [Homebrew](https://brew.sh).

## Toolbelt

Six menu bar utilities in one ~13 MB app for macOS 14+: hidden icons behind the notch, window switcher, clipboard history, window layouts, system monitor and Claude Code accounts. Signed with Developer ID and notarized by Apple. Site: https://toolbelt.oconde.dev

```bash
brew install --cask nandobrazil/tap/toolbelt
```

Toolbelt updates itself; `brew upgrade --cask --greedy toolbelt` also works. Remove with `brew uninstall --cask toolbelt` (add `--zap` to delete settings and history too).

The cask is updated automatically by the Toolbelt release pipeline.
