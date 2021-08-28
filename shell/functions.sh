NORMAL=$(tput sgr0)
GREEN=$(tput setaf 2; tput bold)
YELLOW=$(tput setaf 3)
RED=$(tput setaf 1)

function red() {
  echo -e "$RED$*$NORMAL"
}

function green() {
  echo -e "$GREEN$*$NORMAL"
}

function yellow() {
  echo -e "$YELLOW$*$NORMAL"
}

function notice() {
  green "${1}"
}

function warn() {
  yellow "${1}"
}

function error() {
  red "${1}"
}

function header() {
  green "--------------------------------------------------------------------------------------"
  green "| $1"
  green "--------------------------------------------------------------------------------------"
}
