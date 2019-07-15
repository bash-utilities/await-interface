#!/usr/bin/env bash


## Lists interface names that match provided hint
## @returns {string|list}
## @param {string} _interface_hint - Hint of interface name to look out for, example `tun` or `tap0`
## @param {number} _sleep_interval - Number of seconds to sleep between checks
## @param {number} _loop_limit     - Max number of loops before function returns error code
## @author S0AndS0
## @copyright AGPL-3.0
## @example As an array
##     _interface_names_list=($(await_interface 'tun'))
##     printf 'Active interface name: %s\n' "${_interface_names_list[@]}"
##     #> Active interface name: tun0
##     #> Active interface name: tun1
##     #> Active interface name: tun2
## @example As a string
##     _interface_names_string="$(await_interface 'tap0' '1' '3')"
##     printf 'Active interface name(s): %s\n' "${_interface_names_string}"
##     #> Active interface name(s): tap0
await_interface(){
    local _interface_hint="${1:?# Parameter_Error: ${FUNCNAME[0]} not provided an interface hint}"
    local _sleep_interval="${2:-1}"
    local _loop_limit="${3:-10}"

    local _loop_count='0'
    local -a _interface_names
    while true; do
        while IFS= read -r _interface_name; do
            [[ -n "${_interface_name}" ]] || continue
            _interface_names+=("${_interface_name}")
        done <<<"$(ls -1 '/sys/class/net' | grep -- "${_interface_hint}")"

        if [ "${#_interface_names[@]}" -gt '0' ]; then
            printf '%s\n' "${_interface_names[*]}"
            break
        elif [ "${_loop_count}" -gt "${_loop_limit}" ]; then
            break
        fi

        let _loop_count+=1
        sleep "${_sleep_interval}"
    done

    [[ "${#_interface_names[@]}" -gt '0' ]]; return "${?}"
}
