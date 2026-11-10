# homebrew-macpm

Homebrew tap for [macpm](https://github.com/visualcjy/macpm) — a rootless
performance monitor for Apple Silicon.

## Install

```sh
brew install visualcjy/macpm/macpm
```

That single command taps this repository and installs `macpm` together with
`macpm-sensors`. To tap explicitly first:

```sh
brew tap visualcjy/macpm
brew install macpm
```

This is a third-party tap, so a recent Homebrew may ask you to trust it; answer
yes, or run `brew trust visualcjy/macpm` first.

## Upgrade

```sh
brew update
brew upgrade macpm
```

## Uninstall

```sh
brew uninstall macpm
brew untap visualcjy/macpm
```

## Notes

- Apple Silicon only (`depends_on arch: :arm64`); macpm does not support Intel
  Macs.
- The formula installs the prebuilt arm64 binaries from the
  [upstream releases](https://github.com/visualcjy/macpm/releases), so no
  Python installation is required.
- `macpm-sensors` reads temperatures and fan speeds through the SMC; the
  default TUI stays identical to macpm 0.x.
