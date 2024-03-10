{pkgs, ...}: {
  kernel.python.cad = {
    enable = true;
    displayName = "VivCAD Kernel";
    projectDir = ./.;
    overrides = ./overrides.nix;
    extraPackages = ps: [
      # ps.numpy
    ];
  };
}
