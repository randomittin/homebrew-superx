# homebrew-superx

Homebrew tap for [superx](https://github.com/randomittin/superx) — autonomous superskill manager for Claude Code.

## Install

```bash
brew tap randomittin/superx
brew install superx
```

## Usage

```bash
cd /path/to/your/project
superx "build a dashboard with auth"    # run end-to-end
superx --dashboard                       # pixel art web UI
superx                                   # interactive mode
```

## Update

```bash
brew upgrade superx
```

## Requirements

- Claude Code 1.0+ (authenticated)
- Python 3.11+ (installed by brew as a dependency)
- Git

## License

MIT
