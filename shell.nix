{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.python311
    pkgs.python311Packages.virtualenv
  ];

  shellHook = ''
    # Create a virtual environment and activate it
    if [ ! -d ".venv" ]; then
      python -m virtualenv .venv
    fi
    source .venv/bin/activate
  '';
}
