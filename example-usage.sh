#!/usr/bin/env bash


## Enable sourcing via absolute path
__SOURCE__="${BASH_SOURCE[0]}"
while [[ -h "${__SOURCE__}" ]]; do
    __SOURCE__="$(find "${__SOURCE__}" -type l -ls | sed -n 's@^.* -> \(.*\)@\1@p')"
done
__DIR__="$(cd -P "$(dirname "${__SOURCE__}")" && pwd)"


source "${__DIR__}/modules/await-interface/await-interface.sh"

_interface_hint_list=('tun' 'tap0')
for _interface_hint in "${_interface_hint_list[@]}"; do
    _interface_names_list=($(await_interface "${_interface_hint}" '1' '3')) || _exit_status="${?}"

    if ((_exit_status)); then
        printf 'await_interface got board of waiting for an interface\n'
    else
        printf 'Active interface name: %s\n' "${_interface_names_list[@]}"
    fi
done
