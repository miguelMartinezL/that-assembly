# Learning assembly language

```bash
docker build -t my_linux_assembly_image .

```

```bash
docker run -it --rm -v "$(pwd)":/my-code my_linux_assembly_image
```

## Object file
```bash
as myexit.s -o myexit.o
```

##

```bash
ld myexit.o -o myexit
```