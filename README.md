# proot-distro-extras

Adds extra distributions to the default `proot-distro` list via scripts. This addon also patches `proot-distro` to allow the installation of "hax" distributions (Kali, Parrot, Nethunter, etc.) which are typically restricted.

## Features

- [x] **Standalone Installer**: Install with a single command without cloning the repository.
- [x] **Auto-Patching**: Automatically enables restricted distributions in `proot-distro`.
- [x] **Extra Distros**: Adds support for Kali, NetHunter, Parrot OS, and CentOS.
- [x] **Improved Stability**: Better error handling and dependency checks.

## Installation

To install `proot-distro-extras` in Termux, run the following command:

```bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ManiacBoy777/proot-distro-extras/master/install.sh)"
```

## Usage

After installation, the extra distributions will be available in `proot-distro`.

1. **List distributions**:
   ```bash
   proot-distro list
   ```

2. **Install a distribution**:
   ```bash
   proot-distro install <alias>
   ```
   *(e.g., `proot-distro install kali`)*

3. **Login to a distribution**:
   ```bash
   proot-distro login <alias>
   ```

## Important Note

The Termux team occasionally updates `proot-distro` to restrict these distributions. If `proot-distro` updates and the extra distros stop working, simply re-run the installation command to re-apply the patch and configs.

## Credits

Created by [ManiacBoy777](https://github.com/ManiacBoy777).
