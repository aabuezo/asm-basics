# ASM Basics
## Using GNU Assembler for x86_64

Youtube Tutorial: [Learn with Mxy](https://www.youtube.com/watch?v=PxiMLtsuGO0&list=PL9o2C-4xGfjHl5PF-Xt-yWH2zc4wjJ3AW&index=2)

Compile:
```
$ gcc -nostdlib -static func.s -o func
```

Run:
```
$ ./func
```

Dump:
```
$ objdump -d ./func
```

Debug:
```
$ gdb ./func
```