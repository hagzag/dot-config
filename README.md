# Dotfiles and Development Environment Setup

A comprehensive dotfiles management system using Taskfile for automated macOS environment setup and configuration.

## 🎯 Features

- Automated XDG directory structure setup
- Homebrew package management with Brewfile
- Git configuration with GPG signing support
- Pre-commit hooks integration
- Bash environment configuration
- Rosetta 2 support for Apple Silicon
- EditorConfig for consistent coding styles
- Cloud provider credential management (AWS, GCP)
- VS Code configuration

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

### IDE Configuration
- `task create-vscode-config` - Creates VS Code settings with Taskfile schema support

### Cloud Provider Setup
#### AWS
- `task aws:tutorial:credentials` - Guide for setting up AWS credentials
- `task aws:validate:credentials` - Validate AWS credentials configuration

#### GCP
- `task gcp:tutorial:credentials` - Guide for setting up GCP service account
- `task gcp:tutorial:login` - Interactive GCP login process
- `task gcp:validate:credentials` - Validate GCP credentials configuration

## 📁 Directory Structure

```
~/.config/
├── .env                # environment variables part of .gitignore - intended to be used for local development
├── .env-example        # Template for environment variables
├── .editorconfig       # Editor configuration for consistent coding styles
├── Brewfile           # Homebrew dependencies
├── Taskfile.yml       # Task definitions
├── .vscode/           # VS Code configuration
├── bash/              # Bash configuration files
│   ├── env            # ~/.bash_env links to this
│   ├── profile        # ~/.bash_profile links to this
│   └── rc             # ~/.bashrc links to this
└── git/               # Git configuration
    └── .gitconfig     # ~/.gitconfig links to this
```

## ⚙️ Configuration

### EditorConfig
The repository includes an `.editorconfig` file that maintains consistent coding styles across different editors and IDEs. It provides settings for:
- Indentation style and size
- Line endings
- Character encoding
- Language-specific configurations (Python, HTML, YAML, etc.)

Make sure your editor has EditorConfig support installed.

### Environment Variables
The repository uses a `.env` file for configuration. Generate it using the provided task:

```bash
task generate:dot:env \
  DOT_CONFIG_REPO="your-repo-url" \
  USER_FULL_NAME="Your Name" \
  USER_EMAIL="your.email@example.com" \
  USER_SIGNING_KEY="your-gpg-key"
```

### Cloud Provider Configuration

#### AWS

```bash
# View AWS setup instructions
task aws:tutorial:credentials

# Validate AWS configuration
task aws:validate:credentials
```

#### GCP

```bash
# View GCP setup instructions
task gcp:tutorial:credentials

# Login to GCP
task gcp:tutorial:login

# Validate GCP configuration
task gcp:validate:credentials
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
