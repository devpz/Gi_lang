### Usage
- Give as argument path to file with source code e.g. `./src/test/ex1.txt` \
- Specify output file to `example.ll` \
- Execute program and use following commands

```shell 
clang .\example.ll -o .\example.exe
```
```shell 
.\example.exe
```

```shell 
docker cp example.ll 297688198d2b1f3981eee299fdb90f8e16d98710d6175939fd9e8a3a8dd3f0c8:/example.ll
```