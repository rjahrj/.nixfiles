#!/bin/sh
pushd ~/.nixfiles
sudo nixos-rebuild switch -I nixos-config=./system/configuration.nix
popd
