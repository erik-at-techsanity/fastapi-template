#!/bin/bash

BIN_DIR=$(dirname "$0")
BASE_DIR="${BIN_DIR}/.."
VENV_DIR="${BASE_DIR}/venv"
ACTIVATE_SCRIPT="${VENV_DIR}/bin/activate"

if [[ -z "${VIRTUALENV}" ]] ; then
    echo "Activating Virtualenv"
    if [[ -e "${ACTIVATE_SCRIPT}" ]] ; then
        # shellcheck source=../venv/bin/activate
        . "${ACTIVATE_SCRIPT}"
    fi
fi

uvicorn app.main:app --reload --host 0.0.0.0 --port 8080
