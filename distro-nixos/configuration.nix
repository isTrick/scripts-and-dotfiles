{ config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
    ];

  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true;

  time.timeZone = "America/Sao_Paulo";
  i18n.defaultLocale = "en_US.UTF-8";

  i18n.extraLocaleSettings = {
    LC_ADDRESS = "pt_BR.UTF-8";
    LC_IDENTIFICATION = "pt_BR.UTF-8";
    LC_MEASUREMENT = "pt_BR.UTF-8";
    LC_MONETARY = "pt_BR.UTF-8";
    LC_NAME = "pt_BR.UTF-8";
    LC_NUMERIC = "pt_BR.UTF-8";
    LC_PAPER = "pt_BR.UTF-8";
    LC_TELEPHONE = "pt_BR.UTF-8";
    LC_TIME = "pt_BR.UTF-8";
  };

  services.xserver.enable = true;
  services.xserver.excludePackages = [ pkgs.xterm ];
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia.prime.sync.enable = true;
  hardware.nvidia.modesetting.enable = true;
  hardware.nvidia.prime.intelBusId = "PCI:0:2:0";
  hardware.nvidia.prime.nvidiaBusId = "PCI:1:0:0";

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.gnome.core-utilities.enable = false;
  services.gnome.sushi.enable = true;
  environment.gnome.excludePackages = [ pkgs.gnome-tour ];

  services.xserver = {
    layout = "br";
    xkbVariant = "";
  };
  console.keyMap = "br-abnt2";

  services.printing.enable = true;

  sound.enable = true;
  hardware.pulseaudio.enable = false;
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    #jack.enable = true;
    #media-session.enable = true;
  };

  users.users.patrickg = {
    isNormalUser = true;
    description = "Patrick Girardi";
    extraGroups = [ "networkmanager" "wheel" "libvirtd" "vboxusers" "docker" ];
    packages = with pkgs; [
      # cavalier
    ];
  };

  nixpkgs.config.allowUnfree = true;

    environment.systemPackages = with pkgs; [
      vim 
      wget
      fastfetch
      tree
      tmux
      vagrant
      distrobox
     
      ferdium
      brave
      anytype
      bitwarden-desktop
      onlyoffice-bin
      qbittorrent

      gnome.gnome-weather
      gnome.gnome-clocks
      gnome.gnome-calendar
      gnome.geary
      gnome.gnome-font-viewer
      gnome.file-roller
      gnome.gnome-calculator
      gnome.nautilus
      gnome.eog
      gnome.gnome-disk-utility
      gnome.gnome-boxes
      gnome-console
      gnome.gnome-tweaks
      gnome-text-editor    
      evince
      gnome-frog
      resources
      g4music
      celluloid
      dialect
      furtherance

      audacity
      kdenlive
      obs-studio
      handbrake
      losslesscut-bin
      parabolic
      openshot-qt

      krita
      gthumb
      upscayl

      stremio
      easyeffects
      cava
      spotify
      
      wine
      bottles
  
      nerdfonts
      sassc
      gtk-engine-murrine
      gnome.gnome-themes-extra
      adw-gtk3
      yaru-theme
      font-awesome
  
      gnomeExtensions.dash-to-dock
      gnomeExtensions.clipboard-indicator
      gnomeExtensions.caffeine
      gnomeExtensions.appindicator
      gnomeExtensions.lock-keys
      gnomeExtensions.tiling-assistant
      gnomeExtensions.color-picker
      gnomeExtensions.gnome-40-ui-improvements
      gnomeExtensions.gsconnect
  
      vscode-with-extensions
      vscode-extensions.vscodevim.vim
      vscode-extensions.ms-python.python
      vscode-extensions.yzhang.markdown-all-in-one
      vscode-extensions.jnoortheen.nix-ide
  
      vimPlugins.vim-vagrant
      vimPlugins.python-mode
  
      python312
      spotdl
      python312Packages.numpy
  ];

  system.stateVersion = "24.05";

  programs.zsh.enable = true;
  users.defaultUserShell = pkgs.zsh;
  environment.shells = with pkgs; [ zsh ];
  
  programs.starship.enable = true;
  
  programs.zsh.syntaxHighlighting.enable = true;
  programs.zsh.autosuggestions.enable = true;

  virtualisation.libvirtd = {
    enable = true;
    qemu = {
      package = pkgs.qemu_kvm;
      runAsRoot = true;
      swtpm.enable = true;
      ovmf = {
        enable = true;
        packages = [(pkgs.OVMF.override {
          secureBoot = true;
          tpmSupport = true;
        }).fd];
      };
    };
  };
  
  virtualisation.vmware.host.enable = true;
  
  virtualisation.virtualbox.host.enable = true;
  # virtualisation.virtualbox.host.enableKvm = true;
  
  programs.virt-manager.enable = true;
  
  virtualisation.docker.enable = true;
}
