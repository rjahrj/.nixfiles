#!/bin/sh
pushd ~/.nixfiles
home-manager switch -f ./users/rj/home.nix
bn=$(home-manager generations | head -1 | grep -o '7')
hm=hm
git checkout -b "$hm$bn"
popd
