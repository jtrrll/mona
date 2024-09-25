{inputs, ...}: {
  perSystem = {
    pkgs,
    system,
    ...
  }: {
    packages = {
      mona = inputs.gomod2nix.legacyPackages.${system}.buildGoApplication {
        modules = ../gomod2nix.toml;
        nativeBuildInputs = [pkgs.vips];
        pname = "mona";
        src = ../.;
        version = "0.0";
      };
    };
  };
}
