# Installing AlTar in MacOS >= High Sierra
Instructions for setting up AlTar inversion software via macports.

## Macports
1. Make sure you have XCode. If you haven't installed it yet, get it from the App Store.
2. Install command line tools from within XCode.

    `$ sudo xcode-select --install`

3. Agree to the terms of license.

    `$ sudo xcodebuild -license`
    
4. Download and install [Macports](https://www.macports.org/install.php) based on your OSX version.

5. Restart terminal.    

## Installing the ports needed for AlTar
IMPORTANT! Pick a consistent version for installing your ports. Keep in mind that gcc, python and postgresql always evolve in time. I would also recommend to create and/or manage your environment/privatemodules such that you will only load appropriate environment variables and paths. Dumping everything in the `~/.bash_profile` is a recipe for disaster. For setting up your privatemodule, you can refer to this [link](https://github.com/piyushrpt/elCapitanSetup/blob/master/modules.md): 

For AlTar, I recommend that you stick with the listed versions below as these were already tested to work atleast both in High Sierra and Mojave OSX.

1. Before installing the ports run the following script to get updated macport upgrades:

    `$ sudo port selfupdate`

2. And then to install the ports below, simply do the following in your terminal:

    `$ sudo port install <portname> [+optionalvariant]` 
    
    (e.g. `sudo port install python37 +readline`)
    
    
    #### C/C++ Compiler
  
   * gcc8
   
   * openmpi-gcc8 +fortran +threads
   
    #### Python 

   * python37 +readline
   
    #### Python Packages
    
    * py37-coverage
    
    * py37-cython
    
    * py37-gdal
    
    * py37-gnupg
    
    * py37-ipython
    
    * py37-jupyter
    
    * py37-keyring
    
    * py37-matplotlib
    
    * py37-matplotlib-basemap
    
    * py37-nose
    
    * py37-numpy
    
    * py37-pylint
    
    * py37-pyobjc
   
    * py37-regex
    
    * py37-reportlab

    * py37-sympy

    * py37-zmq

    #### Linux / Development Tools
    
    * xorg-libXt +flat_namespace
    
    * bash
    
    * bash-completion
    
    * clang-7.0
    
    * autoconf
    
    * gnupg2
    
    * gmake
    
    * sshfs

    * emacs +x11

    * ispell
    
    * zip
    
    * unzip

    * vim +python37
    
    * wget +ssl
    
    * gdb +python37
    
    * openmotif
    
    * openblas +gcc8
    
    * yarn
    
    * npm6
    
    #### Repository Managers
    
    * git +bash_completion
    
    * bzr +bash_completion

    * bzr-fastimport
    
    * py37-pip
    
    #### Computational/Visualization Tools
    
    * metis +gcc8
    
    * parmetis +gcc8 +openmpi
    
    * fftw-3-single

    * vtk +python37
    
    * gsl +gcc8
    
    * graphviz
    
    #### Data Formats
    
    * postgresql10 +python3
    
    * postgresql10-server
    
    * hdf5 +cxx +gcc8 +openmpi
    
    #### Documentation
    
    * texlive-bin

    * texlive-bin-extra
    
    * texlive-latex
    
    * texlive-latex-recommended
    
    * texlive-latex-extra
    
    * texlive-xetex
    
    * texlive-fonts-recommended
    
    * texlive-fonts-extra
    
    * texlive-fontutils
    
    * texlive-pstricks
    
    * texlive-math-science
    
    * doxygen +latex
    
    * py37-sphinx
    
    #### GIS
    
    * gdal +gcc8 +hdf5 +postgresql10 +openmpi +sqlite3 +spatialite
