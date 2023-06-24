#!/bin/bash

function recursive
{
        local arg="${1}"

        if [[ "${#}" -eq 0 ]]
        then
                return
        fi

        echo "${arg}"
        shift
        recursive "${@}"
}

recursive "${@}"