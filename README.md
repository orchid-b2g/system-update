# System Updater
Orchid's native system updater for backend updates.

## How to build
Step 1. Open terminal and type
```sh
make bootstrap
```
It installs what the code needs to compile.

Step 2. Type this to get the binaries in the `binary` folder.
```sh
make build
```

## Notice
Running this program on your host might not touch your system files but it will create a `/system` folder with orchid binaries that are probably incompatible with your Linux distro.
