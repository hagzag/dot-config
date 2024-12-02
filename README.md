# Dotfiles and Development Environment Setup

A comprehensive dotfiles management system using Taskfile for automated macOS environment setup and configuration.

## 🎯 Features

- Automated XDG directory structure setup
- Homebrew package management with Brewfile
- Git configuration with GPG signing support
- Pre-commit hooks integration
- Bash environment configuration
- Rosetta 2 support for Apple Silicon

## 🚀 Prerequisites

- macOS (Apple Silicon or Intel)
- [Homebrew](https://brew.sh/)
- [go-task](https://taskfile.dev/)

## 📥 Installation

1. Install Homebrew and go-task:
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install go-task
```

2. Clone the repository:
```bash
export DOT_CONFIG_REPO=git@gitlab.tikalk.dev:tikalk/users/hagzag/dot-config.git
task bash:dot_config:get
```

3. Setup environment:
```bash
cd ~/.config
cp .env.example .env  # Configure your environment variables
```

## 🛠️ Available Tasks

### Basic Setup
- `task bash:xdg-setup` - Initialize XDG directory structure and bash configuration
- `task xcode:rosetta` - Install Rosetta 2 for Apple Silicon Macs

### Homebrew Management
- `task brew:install` - Install all dependencies from Brewfile
- `task brew:status` - Check Brewfile status and outdated packages
- `task brew:dump` - Update Brewfile with current packages
- `task brew:cleanup` - Remove unused dependencies
- `task brew:commit` - Commit Brewfile changes to git

### Git Configuration
- `task git:config:generator` - Generate git configuration (requires USER_EMAIL and USER_FULL_NAME)
- `task git:config:from-repo` - Configure git symlinks and validation from dot-config repo
- `task git:lfs` - Install and configure Git LFS

### Security & Signing
- `task gnupg` - Install GnuPG
- `task gnupg:validate` - Validate GnuPG setup and keys

### Pre-commit Hooks
- `task pre-commit:install` - Configure pre-commit hooks
- `task pre-commit:run` - Run pre-commit checks on staged files
- `task pre-commit:run-all-files` - Run pre-commit checks on all files

## 📁 Directory Structure

```
~/.config/
├── .env                # Environment variables
├── Brewfile           # Homebrew dependencies
├── Taskfile.yml       # Task definitions
├── bash/              # Bash configuration files
│   ├── env
│   ├── profile
│   └── rc
└── git/               # Git configuration
    └── .gitconfig
```

## ⚙️ Configuration

1. Copy the example environment file:
```bash
cp .env.example .env
```

2. Configure required variables in `.env`:
```bash
USER_EMAIL="your.email@example.com"
USER_FULL_NAME="Your Name"
USER_SIGNING_KEY="YOUR_GPG_KEY_ID"  # Optional, for commit signing
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Run pre-commit checks (`task pre-commit:run`)
4. Commit your changes (`git commit -m 'Add amazing feature'`)
5. Push to the branch (`git push origin feature/amazing-feature`)
6. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [go-task](https://taskfile.dev/) - Task runner
- [Homebrew](https://brew.sh/) - Package manager
- [pre-commit](https://pre-commit.com/) - Git hooks framework
- [GnuPG](https://gnupg.org/) - Encryption tools
- [GitHub GPG Guide](https://docs.github.com/en/authentication/managing-commit-signature-verification)
- [GitLab GPG Guide](https://docs.gitlab.com/ee/user/project/repository/signed_commits/gpg.html)
