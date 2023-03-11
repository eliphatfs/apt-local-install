# apt-local-install (aptli)
Tool for installing `apt` packages without root permission in local space.

## Get Started
To use `aptli`, there are a few requirements (but should be satisfied in almost all use cases of the program):
1. The script is written in Python. You will need a `python3` available in the system.
2. `aptli` depends on `apt-get`, `ldconfig` and `dpkg`. These should come with all linux systems with `apt`.
3. `aptli` does not fetch `apt` registries by now, and the system need to have an up-to-date `apt` registry.
   An `apt update` needs to be done by the system admin beforehand.
   This should always be okay on a system under maintenance.

Then, clone the repository or copy the contents of `aptli` to some local file and execute:
```bash
./aptli
```

`aptli` will configure itself. You probably need to re-login (or re-enter the `bash` shell at least) into the system before
the configurations come into effect.

Now, you can install packages without root permission by:
```bash
aptli <package-name> [<package-name> ...]
```

The package will be installed under `~/.local/`.
You may also specify a `.deb` file at the `<package-name>` to install the package file.

To update the configured `aptli` with a new `aptli` downloaded from this repository, you can call
```bash
./aptli --upgrade-aptli
```

To remove a package installed with `aptli`, call
```bash
aptli --remove <package-name>
```

## Why `aptli`
I have met it a lot of times when I need to install a package on a system where I am not a sudo-er.
Moreover, the package is not for general use so it is better to install user-wise instead of system-wise.
We may build from the source or extract `.deb` files manually.
But this is a nasty and time-consuming process if some of the dependencies and the dependencies of the dependencies
are not available on the system either.
As a result, I made `aptli`, to install packages locally without sudo permission.

## How `aptli` works
`aptli` configures `.bashrc` so the executables in relevant folders in `.local` could be found by the system command line and
the shared libraries could be loaded by the system linker (`ld`).
It reads and parses `.deb` files, automatically finds and handles the dependencies, and downloads required packages with `apt-get download`.

## Future
+ Set up test cases and CI for the tool.
+ Try to support triggers and custom install configuration scripts.
+ Version resolution and conflict resolution.
+ Different verbose levels.
