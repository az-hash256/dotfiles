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
    };

    defaultTemplate = self.templates.example;
  };
}
