#!/usr/bin/zsh

function calculate(){
    equation=$(printf '%s\n' "${calc_list[@]}" | fuzzel --dmenu --lines "${#calc_list[@]}" --placeholder "  $1")

    if [ -z "$equation" ]; then
        exit
    fi

    result=$(calc "$equation")
    calc_list=($result ${calc_list[@]} )

    if [ $? -ne 0 ]; then
        calculate "Bad formula"
    else
        calculate $result
    fi
}

calc_list=()

calculate "Calculator"
