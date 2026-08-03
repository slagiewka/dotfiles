# Dotfiles

Personal workstation configuration managed with [mise](https://mise.jdx.dev).

Shared dotfiles and development tools are intended for Linux and macOS. System package bootstrapping currently covers Fedora only.

## Bootstrap

Install mise and Git, then clone this repository:

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

## Antigen Version

Antigen is pinned to commit `d3d4ee03897eed73efc20c3f779b31194bfa64d8`, the commit referenced by the `v2.2.3` release.

The commit SHA is used instead of the annotated tag because the tag can cause mise to report the repository as differing even when the correct commit is checked out.
