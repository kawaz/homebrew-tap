# Homebrew Tap for kawaz's tools

## Installation

```bash
brew tap kawaz/tap
brew install authsock-filter
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| [authsock-filter](https://github.com/kawaz/authsock-filter) | SSH agent proxy with filtering and logging |
| [jj-worktree](https://github.com/kawaz/jj-worktree) | Git shim that translates worktree operations to jj workspace commands |
| [stable-which](https://github.com/kawaz/stable-which) | Resolve the stable PATH entry for a binary, verified by canonical path identity |

## Adding a new formula (deploy key setup)

Each repository with a `release.yml` that auto-updates this tap needs its own deploy key:

```bash
# 1. Generate a key pair
ssh-keygen -t ed25519 -f /tmp/{repo}-deploy -N "" -C "{repo} release"

# 2. Add public key to this tap as a deploy key (write access required)
gh repo deploy-key add /tmp/{repo}-deploy.pub --repo kawaz/homebrew-tap --title "{repo} release" --allow-write

# 3. Set private key as a secret in the source repository
gh secret set HOMEBREW_TAP_DEPLOY_KEY --repo kawaz/{repo} < /tmp/{repo}-deploy

# 4. Clean up
rm /tmp/{repo}-deploy /tmp/{repo}-deploy.pub
```
