<h1 align="center">
  <br>
  <a href="https://suyu.dev"><img src="https://git.suyu.dev/suyu/suyu-os/src/branch/master/ui/Logo.svg" alt="suyuOS" height="360"></a>
  <br>
  <b>suyu</b>
  <br>
</h1>

<h2 align="center"><b>suyuOS</b></h2>

<br><br>

<h4>The world's first and only operating system dedicated to handheld console gaming emulation, with support for both native execution and emulation modes. Features minimized support for modern gaming as a whole.
</h4> 

<h4>To Test and Contribute, Try Building the ISO using the BUILDING.md</h4>

## Features

- **Dual Execution Modes**: Support for both native execution (via horinux patches) and traditional emulation
- **Multiple Emulators**: Integrated suyu and eden emulators with automatic selection
- **Gaming Optimizations**: HoloISO-inspired performance tuning, GameMode, MangoHUD, and Gamescope support
- **Controller Support**: Comprehensive gamepad and controller compatibility
- **Performance Tuning**: Automatic CPU governor switching, I/O optimization, and memory management
- **Vulkan Acceleration**: Full Vulkan graphics support for optimal performance

## Legal Notice

This software is provided for educational and research purposes. Users are responsible for ensuring they own legal copies of any games they use with this system. This project does not provide, encourage, or support piracy in any form.

## System Requirements

- **CPU**: x86_64 processor with SSE4.1 support
- **RAM**: 8GB minimum, 16GB recommended
- **GPU**: Vulkan-compatible graphics card (NVIDIA GTX 1060 / AMD RX 580 or better)
- **Storage**: 32GB available space for installation, additional space for games
- **Controllers**: USB or Bluetooth gamepad recommended

## Quick Start

1. Download the latest ISO from the releases page
2. Create a bootable USB drive using Rufus, Etcher, or dd
3. Boot from the USB drive
4. Place your legally obtained game files in the ~/Games directory
5. Launch games using the suyuOS launcher

For detailed building instructions, see [BUILDING.md](BUILDING.md)
