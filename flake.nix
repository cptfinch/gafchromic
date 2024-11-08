{
  inputs={ nixpkgs.url="github:nixos/nixpkgs/nixos-unstable"; };
  outputs={self, nixpkgs}: 
  { devShell.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.mkShell 
    { buildInputs = 
      [ 
        nixpkgs.legacyPackages.x86_64-linux.python38
        nixpkgs.legacyPackages.x86_64-linux.python38Packages.numpy
        nixpkgs.legacyPackages.x86_64-linux.python38Packages.scikitlearn
        nixpkgs.legacyPackages.x86_64-linux.python38Packages.scipy
        nixpkgs.legacyPackages.x86_64-linux.python38Packages.matplotlib
      ];
    };
  }; 
}

