package repro

import (
    "tool/cli"
)

command: hello: cli.Print & {text: "Hello"}