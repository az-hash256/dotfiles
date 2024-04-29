{
  description = "Flake with templates for development environments.";

  outputs = {self}: {
    templates = {
      javascript = {
        path = ./javascript;
        description = "Flake for Javascript template";
      };

      haskell = {
        path = ./haskell;
        description = "Flake for Haskell template";
      };

      prolog = {
        path = ./prolog;
        description = "Flake for Prolog template";
      };

      fhs = {
        path = ./fhs;
        description = "Flake for FHS environment template";
      };

      java = {
        path = ./java;
        description = "Flake for Java environment template";
      };

      julia = {
        path = ./julia;
        description = "Flake for Julia environment template";
      };

      python = {
        path = ./python;
        description = "Flake for Python  environment template";
      };
    };

    defaultTemplate = self.templates.example;
  };
}
