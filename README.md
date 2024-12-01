# Dotfiles and Development Environment Setup

This repository contains my personal dotfiles and development environment setup, managed through Taskfile.yml for automated configuration and installation.

## 🚀 Quick Start

1. Clone the repository:

```bash
DOT_CONFIG_REPO=git@gitlab.tikalk.dev:tikalk/users/hagzag/dot-config.git
git clone $DOT_CONFIG_REPO ~/.config
```

2. Navigate to the config directory:

```bash
cd ~/.config
```

3. Install Task (if not already installed):

```bash
brew install go-task
```

4. Setup XDG directories and bash configuration:

```bash
task bash:xdg-setup
```

5. Install Homebrew dependencies:

```bash
task brew:install
```

## 📁 Directory Structure

```bash
~/.config
├── .env
├── .git
├── .gitignore
├── .gitmodules
├── Taskfile.yml
```

## 📁 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 🙏 Acknowledgments

- [go-task](https://taskfile.dev/) for the task runner
- [Homebrew](https://brew.sh/) for package management
- [pre-commit](https://pre-commit.com/) for git hooks framework
- [gnupg](https://gnupg.org/) for GPG encryption
- [gnupg-github](https://docs.github.com/en/authentication/managing-commit-signature-verification/displaying-verification-statuses-for-all-of-your-commits) for GPG key management via GitHub
- [gnupg-gitlab](https://docs.gitlab.com/ee/user/project/repository/signed_commits/gpg.html) for GPG key management via GitLab
