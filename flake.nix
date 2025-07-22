{
  description = "devenv containing tree-sitter cli and toolchain";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs } :
  let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
  in
  {
    devShells.${system}.default = pkgs.mkShell {
      buildInputs = with pkgs; [
        tree-sitter
	nodejs
	nodePackages.node-gyp
      ];

      shellHook = ''
        export PS1="[with-ts] $PS1"
	# export PS1='\n\[\033[1;34m\][💎:\w]\$\[\033[0m\] '
      '';
    };
  };
}