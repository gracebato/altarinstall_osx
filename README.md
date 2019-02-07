# Installing AlTar in MacOS >= High Sierra
Instructions for setting up AlTar inversion software via macports.

## Macports
1. Make sure you have **XCode**. If you haven't installed it yet, get it from the **App Store**.
2. Install command line tools from within XCode.

    `$ sudo xcode-select --install`

3. Agree to the terms of license.

    `$ sudo xcodebuild -license`
    
4. Download and install [Macports](https://www.macports.org/install.php) based on your OSX version.

5. Restart the terminal.    

## Installing the ports needed for AlTar
IMPORTANT! Pick a consistent version for installing your ports. Keep in mind that gcc, python and postgresql always evolve in time. I would also recommend to create and/or manage your environment/privatemodules such that you will only load appropriate environment variables and paths. Dumping everything in the `~/.bash_profile` is a recipe for disaster. For setting up your privatemodule, you can refer to this [link](https://github.com/piyushrpt/elCapitanSetup/blob/master/modules.md): 

For AlTar, I recommend that you stick with the versions listed [here](https://github.com/gracebato/altarinstall_osx/edit/master/macports.md) as these were already tested to work atleast both in High Sierra and Mojave OSX.

1. Before installing the ports run the following script to get the updated macport version:

    `$ sudo port selfupdate`

2. And then to install the [necessary ports](https://github.com/gracebato/altarinstall_osx/edit/master/macports.md), simply do the following in your terminal for each of those ports:

    `$ sudo port install <portname> [+optionalvariant]` 
    
    (e.g. `sudo port install python37 +readline`)

3. Alternatively, you can just clone/download the [ports.requested](https://github.com/gracebato/altarinstall_osx/blob/master/ports.requested) file, `cd` to the location of the file and enter the following in your terminal:

    ```
    $ sudo $SHELL
    $ port -Nu install $(cat ports.requested)
    ```

4. Once all the ports are installed. Type `$ port select --summary`. If you are installing AlTar from scratch, you will notice that the column name, **Selected**, is just filled with **none** entries. To replace them, you have to manually port select from the **Options** column. Or, to make it easier, I wrote a script to do this automatically. Just clone/download [run_portselect.sh](https://github.com/gracebato/altarinstall_osx/blob/master/run_portselect.sh) and do the following in your terminal (assuming you are still in a super user mode, otherwise you have to type `sudo $SHELL` first):

    ```
    $ chmod +x run_portselect.sh
    $ ./run_portselect.sh
    ```

5. Add the following in the privatemodule file that you specifically created for AlTar:

    `prepend-path PATH /opt/local/bin:/opt/local/sbin`

Otherwise if you did not setup your privatemodule, the messy way of doing this (not recommended) is adding the following line in your **~/.bash_profile**:

    ```
    export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
    ```

## Getting the AlTar Package 
Run the following in the terminal:
    
    ```
    $ mkdir ~/Documents/AlTar
    $ cd ~/Documents/AlTar
    $ git clone https://github.com/pyre/pyre.git
    $ git clone https://github.com/aivazis/mm.git
    $ git clone https://github.com/altarframework/altar.git 
    ```

## Compiling AlTar
1. Make sure you have a folder named `tools` in your home directory (otherwise, you can create using `$ mkdir ~/tools`). 
2. Copy the [config.mm file]() for mm and mm.pfg for pyre in their respective folders. Do the following in your terminal:

    ```
    $ mkdir ~/.mm ~/.pyre
    $ mv config.mm ~/.mm
    $ mv mm.pfg ~/.pyre
    ```

3. Edit your **privatemodule file** for Altar:

    ```
    set DV_DIR ${HOME}/Documents/AlTar
    set-alias mm "python3 ${DV_DIR}/mm/mm.py"
    set-alias mm.env "mm --env=sh"
    set-alias mm.show "mm --show --dry"
    ```

Or your **~/.bash_profile**:
    
    ```
    # mm configuration
    export DV_DIR=${HOME}/Documents/AlTar
    alias mm='python3 ${DV_DIR}/mm/mm.py'
    alias mm.env='mm --env=sh'
    alias mm.show='mm --show --dry'
    # end of mm
    ```

4. Add the following to the ~/.bash_profile to be able to call `mm.paths` in your terminal:

    ```
    mm.paths() {
      eval $(python3 ${DV_DIR}/mm/mm.py --quiet --paths=sh $*)
      
    }
    ```

5. You are ready to compile! Restart the terminal and type the following,
   
    ```
    $ cd ~/Documents/AlTar/pyre
    $ mm.paths
    $ mm
    ```

6. To test a simple inversion assuming a point-pressure source (Mogi model), see this link.
