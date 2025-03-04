{ config, lib, pkgs, modulesPath, ... }:

{
  # Installing NVIDIA drivers
  hardware.nvidia = {
    modesetting.enable = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
    open = true;
  };
  services.xserver.videoDrivers = [ "nvidia" ];

  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];

  boot.initrd.availableKernelModules = [ "nvme" "xhci_pci" "ahci" "usb_storage" "usbhid" "sd_mod" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-amd" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/86fc690b-450a-474e-980a-142e7f30e222";
      fsType = "ext4";
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/A67E-C659";
      fsType = "vfat";
      options = [ "fmask=0022" "dmask=0022" ];
    };

  fileSystems."/mnt/win10" =
    { device = "/dev/disk/by-uuid/A40897C408979440";
      fsType = "ntfs-3g";
      options = [ "rw" "uid=1000" "gid=100" "user" "exec" "umask=000" ]; # important: change uid and gid to the right numbers :D
    };

  fileSystems."/mnt/games" =
    { device = "/dev/disk/by-uuid/F4462E50462E13C0";
      fsType = "ntfs-3g";
      options = [ "rw" "uid=1000" "gid=100" "user" "exec" "umask=000" ]; # important: change uid and gid to the right numbers :D
    };

  swapDevices = [ ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.
  networking.useDHCP = lib.mkDefault true;
  # networking.interfaces.enp8s0.useDHCP = lib.mkDefault true;

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.amd.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
