#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"

echo "Starting EdgeDC ARM64 development environment..."
echo "Project directory: $PROJECT_DIR"

qemu-system-aarch64 \
  -M virt \
  -cpu cortex-a72 \
  -smp 2 \
  -m 2048 \
  -bios "/c/Program Files/qemu/share/edk2-aarch64-code.fd" \
  -drive file="$PROJECT_DIR/vm/edgedc-arm64.qcow2",format=qcow2,if=virtio \
  -device virtio-net-device,netdev=net0 \
  -netdev user,id=net0,hostfwd=tcp::2222-:22 \
  -device virtio-gpu-pci \
  -device qemu-xhci \
  -device usb-kbd \
  -device usb-tablet