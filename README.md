# CompCert-Makefile
Simple Makefile example for [CompCert C compiler](https://github.com/AbsInt/CompCert).


## Usage
### Build & Run
*Hello, World!* at CompCert C compiler.
```sh
make run
```

However, it is also possible to build using [CMake](https://github.com/Kitware/CMake) for confirmation.
```sh
mkdir -p cmake-build-debug && cd $_ && cmake ..
make run
```


## How to Install CompCert C compiler
Details are written on the [official page](http://compcert.inria.fr/man/manual002.html), so I will explain how to obtain what you need such as Coq.

1. Install OPAM. On Ubutu 16.04:
```sh
sudo apt install opam
opam init --comp 4.06.1  # Initialize ~/.opam
eval `opam config env`

sudo apt install m4  # If you get a warning about m4
```

2. Install Coq.
```sh
opam update  # Update the packages database
opam install coq.8.7.1
```

3. Install Menhir.
```sh
opam install menhir
```

4. Add the path `$HOME/.opam/4.06.1/bin` and check installation was successful.
```sh
coqc -v
menhir --version
```


## License
[MIT](LICENSE)
