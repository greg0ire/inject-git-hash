# inject-git-hash

Zsh plugin to inject a git hash into your current command line.

## Requirements

This plugin requires [`fzf`](https://github.com/junegunn/fzf) to be installed
and available in your `$PATH`.

## Elevator pitch

Are you a ZSH and Git user? Do you love fzf?
Do you often find yourself needing to copy/paste a git hash from your git
history to your command line? This plugin is for you!

Without this plugin, the workflow is painful:

1. You run git log, possibly with `--all` or a branch name to find the commit
   you need.
2. You copy the hash somehow. This might involve using your terminal's copy
   mode, which is often not straightforward, or reaching out for your mouse.
3. You paste the hash into your command line.

With this plugin, the worfklow is keyboard-centric:

1. Start typing your command, e.g. `git cherry-pick` or `git show`.
2. Press `^X^G` (Control-X Control-G). This will open an fzf window with your git history.
3. Select the commit you want to inject.

### Using extra `git log` options or arguments

Of course, this plugin relies on `git log` to get the list of commits to choose
from. If you need to add extra options or arguments to the `git log` command,
you can type them after your git command, then move the cursor left to them
before pressing `^X^G`.
The plugin will then remove the extra options and arguments, and use them along
with `git log`.

```console
git cherry-pick <your cursor is here>--all
```
When you press `^X^G`, the plugin will run `git log --all` and open an fzf
window to allow you to select a commit.

### Inserting several hashes

This is not a feature of this plugin, but `fzf` itself allows you to select
several entries by pressing tab before pressing enter.

### Asciinema demo

[![asciicast demonstrating all the features](https://asciinema.org/a/723241.svg)](https://asciinema.org/a/723241)

## Installation

I have installed this as an Antidote plugin, other plugin managers may work, if
not feel free to submit a PR.

```console
antidote install greg0ire/inject-git-hash
```
