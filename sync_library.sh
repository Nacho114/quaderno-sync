#!/usr/bin/env bash

# Enter the nix-shell environment
nix-shell --run '
# Synchronize the eBooks and PDFs
dptrp1 sync ~/MEGA/ebooks_and_pdfs/library/ Document/library
'
