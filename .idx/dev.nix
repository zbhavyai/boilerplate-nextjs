# Configure your environment: https://firebase.google.com/docs/studio/customize-workspace
{ pkgs, ... }: {
  channel = "stable-25.05";

  packages = [
    pkgs.nodejs_latest
    pkgs.pnpm
    pkgs.git
    pkgs.gnumake
    pkgs.docker
    pkgs.jre_headless
  ];

  services.docker.enable = true;

  env = { };

  idx = {
    extensions = [
      "dbaeumer.vscode-eslint"
      "esbenp.prettier-vscode"
      "foxundermoon.shell-format"
      "pkief.material-icon-theme"
      "redhat.vscode-xml"
      "redhat.vscode-yaml"
      "sonarsource.sonarlint-vscode"
      "visualstudioexptteam.intellicode-api-usage-examples"
      "visualstudioexptteam.vscodeintellicode"
    ];

    previews = {
      enable = true;
      previews = {
        # web = {
        #   # Example: run "npm run dev" with PORT set to IDX's defined port for previews,
        #   # and show it in IDX's web preview panel
        #   command = ["npm" "run" "dev"];
        #   manager = "web";
        #   env = {
        #     # Environment variables to set for your server
        #     PORT = "$PORT";
        #   };
        # };
      };
    };

    workspace = {
      onCreate = {
        npm-install = "pnpm install";
      };
      onStart = {
        # Example: start a background task to watch and re-build backend code
        # watch-backend = "npm run watch-backend";
      };
    };
  };
}
