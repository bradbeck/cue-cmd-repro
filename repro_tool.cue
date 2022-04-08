package repro

import (
    "encoding/json"
    "tool/cli"
)

// currently only emitted at the data level
foo?: _

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