package repro

import (
    "encoding/json"
    "tool/cli"
)

command: {
    hello: cli.Print & {text: "Hello"}
    print: cli.Print & {
        f: string | *"N/A"
        if foo != _|_ {
            f: json.Marshal(foo)
        }
        text: f
    }
}