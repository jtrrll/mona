{
  perSystem = {config, ...}: {
    apps = {
      mona = {
        program = "${config.packages.mona}/bin/mona";
        type = "app";
      };
    };
  };
}
