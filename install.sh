#!/bin/sh

ROLES=~/.ansible/roles
ROLE_NAME=cmtops.docker_rootless

install ()
{
    [ ! -f ${ROLES}/${ROLE_NAME} ] && mkdir -pv ${ROLES}/${ROLE_NAME}
    cp -rv src/* ${ROLES}/${ROLE_NAME}
}

uninstall ()
{
    rm -rv ${ROLES}/${ROLE_NAME}
}

case "${1:-NONE}" in
    (NONE) install;;
    (uninstall) uninstall;;
    (*) echo "Either zero arguments, or 'uninstall' expected"; exit 1;;
esac
