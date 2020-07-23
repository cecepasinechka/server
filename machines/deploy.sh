#! /usr/bin/env nix-shell
#! nix-shell -i bash -p "(nixos {}).nixos-rebuild"

. ./env.sh

deploy() {
    local host=$1
    local config=$2
    nixos-rebuild switch --target-host "$host" -I nixos-config="$config"
}

deploy bastion './bastion/configure.nix'
deploy gateway './gateway/configure.nix'
deploy spum-platform './spum-platform/configure.nix'
deploy spum-mqtt './spum-mqtt/configure.nix'
#deploy spum-docker-registry './spum-docker-registry/configure.nix'
deploy builder './builder/configure.nix'
deploy grades './grades/configure.nix'
deploy ps './ps/configure.nix'
deploy esp './esp/configure.nix'

