<h1 align="center">
  <br>
  <a href="https://suyu.dev"><img src="https://git.suyu.dev/suyu/suyu/raw/branch/dev/dist/readme/suyu__Logo-Pill.svg" alt="suyu" height="128"></a>
  <br>
  <b>suyu</b>
  <br>
</h1>

<h2 align="center"><b>suyuOS - Building Guide</b></h2>

<br><br>

## Prerequisites

You'll need the following to build suyuOS:

- **[Arch Linux](https://www.archlinux.org/)** (recommended) or Arch-based distribution
- **[archiso](https://wiki.archlinux.org/title/Archiso)** - Arch Linux ISO building toolkit
- **Git** - For cloning repositories and source management
- **Base Development Tools** - gcc, make, cmake, etc.

## Quick Build

### 1. Install Dependencies

```bash
# Update system and install archiso
sudo pacman -Syu archiso

# Install additional build dependencies
sudo pacman -S git base-devel cmake ninja qt5-base qt5-tools
sudo pacman -S vulkan-headers vulkan-validation-layers
sudo pacman -S ffmpeg opus libzip zstd lz4 mbedtls boost
```

### 2. Clone Repository

```bash
git clone https://github.com/your-org/suyuos.git
cd suyuos
```

### 3. Build ISO

```bash
# Create build directories
mkdir -p build-iso
mkdir -p /tmp/suyuos-build

# Build the ISO (corrected command)
sudo mkarchiso -v -w '/tmp/suyuos-build' -o 'build-iso' .
```

### 4. Verify Build

After the build completes, you should find the ISO file in the `build-iso` directory:

```bash
ls -lh build-iso/*.iso
```

## Advanced Building

### Custom Configuration

You can customize the build by modifying:

- `packages.x86_64` - Add or remove packages
- `airootfs/` - Customize the root filesystem
- `profiledef.sh` - Modify ISO metadata and build options

### Emulator Source Integration

The build system automatically clones and builds emulators from source:

- **Suyu**: Latest stable release with suyuOS optimizations
- **Eden**: Most advanced handheld console emulator
- **Horinux**: Kernel patches for native execution support
- **HoloISO**: Gaming optimizations and performance tuning

### Build Options

You can customize the build process:

```bash
# Debug build with additional logging
BUILD_TYPE=debug sudo mkarchiso -v -w '/tmp/suyuos-build' -o 'build-iso' .

# Minimal build without emulator compilation
SKIP_EMULATORS=1 sudo mkarchiso -v -w '/tmp/suyuos-build' -o 'build-iso' .
```

## Automated Building

### GitHub Actions

This repository includes automated building via GitHub Actions. Every push to the main branch triggers:

1. Package validation
2. Repository cloning
3. Emulator compilation
4. ISO building
5. Artifact upload
6. Release creation (for main branch)

### Local CI Testing

You can test the build process locally using Docker:

```bash
# Build using the same environment as CI
docker run --privileged -v $(pwd):/workspace archlinux:latest \
  bash -c "cd /workspace && .github/workflows/build-iso.yml"
```

## Troubleshooting

### Common Issues

**Package not found errors:**
- Ensure your Arch Linux system is up to date
- Check if packages exist in AUR and install manually if needed

**Emulator build failures:**
- Check internet connectivity for repository cloning
- Verify all development dependencies are installed
- Review build logs in `/tmp/suyuos-build/work/`

**ISO build fails:**
- Ensure you have sufficient disk space (>10GB free)
- Run as root or with proper sudo permissions
- Check `/tmp/suyuos-build/` for detailed error logs

**Permission errors:**
- Ensure archiso scripts have execute permissions
- Run mkarchiso with sudo privileges
- Check that build directories are writable

### Getting Help

1. Check the [Issues](https://github.com/your-org/suyuos/issues) page for known problems
2. Review build logs in the CI artifacts
3. Join our community discussions for support

## Development

### Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test the build process
5. Submit a pull request

### Testing Changes

Always test your changes by building a complete ISO:

```bash
# Clean build to test changes
sudo rm -rf /tmp/suyuos-build
sudo mkarchiso -v -w '/tmp/suyuos-build' -o 'build-iso' .
```

### Code Style

- Use bash best practices for shell scripts
- Comment complex operations
- Follow existing naming conventions
- Test on clean Arch Linux installations

## Legal Considerations

This build system creates an operating system for educational and research purposes. Users must:

- Own legal copies of any games they use
- Comply with local laws regarding emulation
- Respect intellectual property rights
- Not distribute copyrighted game content

The build process does not include any copyrighted material and relies only on open-source components.


