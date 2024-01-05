{
  description = "Flake with templates for development environments.";

  outputs = {self}: {
    templates = {
      javascript = {
        path = ./javascript;
        description = "Flake for javascript template";
      };

      haskell = {
        path = ./haskell;
        description = "Flake for haskell template";
      };
    };

    defaultTemplate = self.templates.example;
  };
}
