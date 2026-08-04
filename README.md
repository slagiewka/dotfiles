# Dotfiles

Personal workstation configuration managed with [mise](https://mise.jdx.dev).

Shared dotfiles and development tools are intended for Linux and macOS. System package bootstrapping currently covers Fedora, while macOS preference bootstrapping targets Apple silicon.

## Bootstrap

Install mise using the standalone installer on every platform:

```sh
curl https://mise.run | sh
```

The shell configuration expects the binary at `~/.local/bin/mise`.

Install Git before cloning the repository. On macOS, Git is provided by the Xcode Command Line Tools:

```sh
xcode-select --install
```

Clone this repository:

```sh
git clone https://github.com/slagiewka/dotfiles.git ~/code/slagiewka/dotfiles
cd ~/code/slagiewka/dotfiles
```

Trust the configuration and preview the changes:

```sh
mise trust
mise bootstrap --dry-run
```

Apply the configuration:

```sh
mise bootstrap --yes
```

Verify the resulting state:

```sh
mise bootstrap status --missing
mise doctor
```

## Managed State

Bootstrap currently manages:

- Git and Zsh system packages on Fedora
- Development tools installed through mise
- The Antigen checkout
- Git, Zsh, mise, and Ghostty configuration
- The login shell
- Dock, keyboard, and trackpad preferences on macOS

## macOS

The macOS bootstrap currently manages these preferences:

- Automatically hide the Dock
- Hide recent applications in the Dock
- Preserve the configured order of Spaces
- Disable press-and-hold character selection
- Enable tap to click

Homebrew formulae and casks, Mac App Store applications, and services are intentionally unmanaged. Ghostty and the Monaspace Neon font must be installed separately for the managed terminal configuration to take full effect.

Account authentication, SSH private keys, and privacy permissions such as Accessibility, Screen Recording, and Full Disk Access remain manual steps.

Some macOS preference changes require restarting the affected application or starting a new login session.

## Antigen Version

Antigen is pinned to commit `d3d4ee03897eed73efc20c3f779b31194bfa64d8`, the commit referenced by the `v2.2.3` release.

The commit SHA is used instead of the annotated tag because the tag can cause mise to report the repository as differing even when the correct commit is checked out.
