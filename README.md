# PLFA-experiment

This repo is for experiment in PLFA, maybe will implement some exercise in agda, or will try to find some interesting point in agda

- will update in parallel with rust-tiny-malloc if I have some free time

## compile

For example, you can compile `power.agda` file by using the following command:

```shell
$ mkdir build
$ agda --no-main --compile-dir ./build --compile power.agda
```

After building successfully, you can find there should be a binary file named `power` under the folder `build`, you can run this binary file directly.
