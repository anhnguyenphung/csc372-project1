# Introduction to Haskell

## Introduction
This repository contains multiple Haskell files that cover different concept in Haskell.


## How to install Haskell


### Windows
* Download the Installshield `setup.exe` from the GHC download page [haskell.org](https://www.haskell.org/ghc/)
* Run `setup.exe`. On Windows, all of GHC's files are installed in a single directory. If you choose `Custom` from the list of install options, you will be given a 
choice about where this directory is; otherwise it will be installed in `c:/ghc/ghc-version`. The executable binary for GHC will be installed in the `bin/` 
sub-directory of the installation directory you choose.
* If you have already installed the same version of GHC, Installshield will offer to `modify`, or `remove` GHC. Choose `remove`; then run `setup.exe` a second time.
This time it should offer to install.
* When installation is complete, you should find GHCi and the GHC documentation are available in your Start menu under `Start/Programs/Glasgow Haskell Compiler`.
* The final dialogue box from the install process reminds you where the GHC binary has been installed (usually `c:/ghc/ghc-version/bin/`. If you want to invoke GHC 
from a command line, add this to your PATH environment variable. 
* Since the process of installing Haskell on Windows is complicated, I recommend that you can install Cygwin/Ubuntu on Windows and then follow the instructions of 
how to install Haskell on Linux/Ubuntu.

### Linux/Ubuntu
* Open the terminal and run the one of these two commands:
```
curl -sSL https://get.haskellstack.org/ | sh
```
```
wget -qO- https://get.haskellstack.org/ | sh
```

### macOS
* Open the terminal and run the following command:
```
curl -sSL https://get.haskellstack.org/ | sh
```
* If you use Homebrew on macOS, you can use the following command:
```
brew install haskell-stack
```


## How to run Haskell
### Interactive
Open the terminal and run the following command:
```
ghci
```

### Haskell Files
There are multiple ways to run Haskell files. Haskell files end with extension `.hs`.

For example, you have a Haskell file `example.hs` and you want to run this file. 

If you just simply want to run the file to get the output (i.e you run the `main` function in the file), you can either use the following command:
```
runhaskell example.hs
```
or you can either compile the file and run the executable:
```
ghc -o example example.hs
```
```
./example
```
If you want to load the modules/functions in the file and use those modules/functions in the interactive shell later, you can run:
```
ghci example.hs
```

