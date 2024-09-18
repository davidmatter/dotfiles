eval "$(/opt/homebrew/bin/brew shellenv)"

# Disable Golang telemetry
export GOPROXY=direct
export GOSUMDB=off
export GOTELEMETRY=off
export GOTOOLCHAIN=local