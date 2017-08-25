# hello-CompCert
"Hello, World!" at [CompCert C compiler](https://github.com/AbsInt/CompCert).

## Usage
### Install
```sh
git clone https://github.com/ahuglajbclajep/hello-CompCert.git
cd hello-CompCert
```

### Build & Run
**CompCert C compiler is required to build this.**
```sh
make run
```

However, it is also possible to build using [CMake](https://github.com/Kitware/CMake) for confirmation.

## How to Install CompCert C compiler
Details are written on the official page, so I will explain how to obtain what you need such as Coq.

1. Install OPAM  
OPAM is OCaml Package Manager.
```sh
# Ubutu16.04 #
sudo apt install opam
opam init  # Initialize ~/.opam using an already installed OCaml
eval `opam config env`
opam switch 4.05.0  # Install OCaml 4.05.0
eval `opam config env`  # Be sure to do after switch

sudo apt install m4  # If you get a warning about m4
```

2. Install Coq
```sh
opam update  # Update the packages database
opam install coq.8.6
```

3. Install Menhir
```sh
opam install menhir
```

4. Add the path & Check  
Add the path `$HOME/.opam/4.05.0/bin` and check installation was successful.
```sh
coqc -v
menhir --version
```

## License
[MIT](LICENSE)
