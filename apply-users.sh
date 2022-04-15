#!/bin/sh
pushd ~/.nixfiles
home-manager switch -f ./users/rj/home.nix
popd
