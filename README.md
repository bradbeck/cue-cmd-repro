# CUE Command Bug

I ran across this bug in the context of a much more complex project, but I was able to distill it done to this simplified setup.

## Reproduce Steps

The following example usages produce an unexpected error:

```bash
$ cue cmd hello ./policy/data
could not create command definitions: command: field not allowed: command
```

```bash
$ cd policy/data
$ cue cmd hello
could not create command definitions: command: field not allowed: command
```

```bash
$ cue cmd print ./policy/data
could not create command definitions: command: field not allowed: command
```

```bash
$ cd policy/data
$ cue cmd print
could not create command definitions: command: field not allowed: command
```

But the following invocations produce the expected result:

```bash
$ cue cmd hello :repro ./policy/data
Hello
```

```bash
$ cd policy/data
$ cue cmd hello :repro .
Hello
```

```bash
$ cue cmd print :repro ./policy/data
{"bar":"baz"}
```

```bash
$ cd policy/data
$ cue cmd print :repro .
{"bar":"baz"}
```
