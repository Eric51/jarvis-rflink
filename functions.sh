#!/usr/bin/env bash

# Turn rflink 

jv_pg_rflink_turn () {
    # $1: action [on|off]
    # $2: received order
    local -r order="$(jv_sanitize "$2")"
  while read device; do
    local sdevice="$(jv_sanitize "$device" ".*")"
    if [[ "$order" =~ .*$sdevice.* ]]; then
      local on="$(echo $jv_pg_rflink_config | jq -r ".devices[] | select(.name==\"$device\") | .on")"
      local off="$(echo $jv_pg_rflink_config | jq -r ".devices[] | select(.name==\"$device\") | .off")"
      local dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
        say "$(jv_pg_rflink_lg "switching_$1" "$2")"
      if [[ "$1" = "on" ]]; then
		local cmd="python $dir/fr/rflink_send.py $jv_pg_rflink_portserie $on"
	  else 
		local cmd="python $dir/fr/rflink_send.py $jv_pg_rflink_portserie $off"
	  fi
	$verbose && jv_debug "$> $cmd"
      eval $cmd | while read line; do jv_debug "$line"; done
        say "$(jv_pg_rflink_lg "switching_done")"
      return $?
    fi
  done <<< "$(echo $jv_pg_rflink_config | jq -r '.devices[].name')"
    say "$(jv_pg_rflink_lg "no_device_matching" "$2")"
  return 1
}
