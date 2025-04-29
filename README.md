# Intro

I created this repo to track changes to my dotfiles. The goal is to be able to clone the repo on a new system and get to work as quickly as possible. Currently, this setup relies on Homebrew as its package manager and the only supported host is MacOS. I plan on adding support to any Unix-like system in the future.

# Pre-requistes

- [Git](https://git-scm.com/)
- [Homebrew](https://brew.sh/)

# Setup

I've configured my local environment using [GNU Stow](https://www.gnu.org/software/stow/stow.html). I'm using the default behavior which is to symlink files up one directory. To get started on a new system, follow these steps:

```shell
git clone git@github.com:Lucioschenkel/dotfiles.git ~/dotfiles

cd ~/dotfiles

brew bundle install --file=Brewfile

stow .

```
