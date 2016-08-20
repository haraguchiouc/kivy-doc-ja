��    T      �              \  ,   ]  2   �  $   �  "   �  #        )     ?     P     a  �   r  P   C     �  !   �  '   �     �               #     (     ,     0  !   6  H   X  0   �  '   �  '   �     "	     .	  a   B	     �	     �	  }   �	     C
  �   J
     �
  ;   M     �  0   �  �   �  m   I  �   �  u   w  Y   �     G  &   T     {     �     �     �  
   �  �   �     �     �  ^   �          )  �   2     �  6   �  1   �  G   .  ,   v  "  �  6   �  =   �     ;     X     t  3   �  ?   �     �  �     E   �  J   >  �  �     a     j     s  D   �  D   �  >     >   U     �  t  �  ,     2   B  $   u  "   �  #   �     �     �            �   *  P   �     L  !   e  '   �     �     �     �     �     �     �     �  !   �  H     0   Y  '   �  '   �     �     �  a   �     \     c  }   }     �  �        �  ;         A   0   H   �   y   m   !  �   o!  u   /"  Y   �"     �"  &   #     3#     @#     V#     f#  
   k#  �   v#     V$     _$  ^   h$     �$     �$  �   �$     o%  6   }%  1   �%  G   �%  ,   .&  "  [&  6   ~'  =   �'     �'     (     ,(  3   ;(  ?   o(     �(  �   �(  E   �)  J   �)  �  A*     ,     ",     +,  D   D,  D   �,  >   �,  >   -     L-   $ sudo add-apt-repository ppa:kivy-team/kivy $ sudo add-apt-repository ppa:kivy-team/kivy-daily $ sudo apt-get install kivy-examples $ sudo apt-get install python-kivy $ sudo apt-get install python3-kivy $ sudo apt-get update **Fedora 16** :: **Fedora 17** :: **Fedora 18** :: **Note:**  Depending on your Linux version, you may receive error messages related to the "ffmpeg" package. In this scenario, use "libav-tools \" in place of "ffmpeg \" (above), or use a PPA (as shown below): **Notice**: Wheezy is not supported - You'll need to upgrade to Jessie at least! *Dependencies with SDL2* *Dependencies with legacy PyGame* *Installation in a Virtual Environment* *Start from the Command Line* 0.20.2 0.21.2 0.23 1.8 1.9 1.9.1 Add one of the PPAs as you prefer Add one of the PPAs to your sources.list in apt manually or via Synaptic Add the GPG key to your apt keyring by executing Adding the repository via the terminal: And you should have a path similar to:: Bodhi Linux Common dependencies Continue as described for Ubuntu above, depending on which version your installation is based on. Cython Debian  (Jessie or newer) Different versions of Kivy have only been tested up to a certain Cython version. It may or may not work with a later version. Fedora Find out on which Ubuntu release your installation is based on, using this `overview <http://www.linuxmint.com/oldreleases.php>`_. Find out which version of the distribution you are running and use the table below to find out on which Ubuntu LTS it is based. For installing distribution relative packages .deb/.rpm/... Gentoo Get the example path from the command line above If you are familiar with Unix and symbolic links, you can create a link directly in your home directory for easier access. For example: If you want to use Python 3 you install "python3" and "python3-dev" and then pass "-p python3" to virtualenv. If you wish to start your Kivy programs as scripts (by typing `./main.py`) or by double-clicking them, you will want to define the correct version of Python by linking to it. Something like:: If you would like access to the examples, please select **python-Kivy-examples** in the upcoming installation wizard. Install **python-Kivy** and optionally the examples, as found in **python-Kivy-examples** Install Kivy Install additional Virtualenv packages Installation Installation on Linux Jessie/Testing: Kivy Linux Mint NOTE: Beware of Python files stored with Windows-style line endings (CR-LF). Linux will not ignore the <CR> and will try to use it as part of the file name. This makes confusing error messages. Convert to Unix line endings. OpenSuSE OpenSuse Or, if you are running Kivy inside a virtualenv, link to the Python interpreter for it, like:: Paste into your console:: Python 3 Refresh your package list and install **python-kivy** and/or **python3-kivy** and optionally the examples found in **kivy-examples** Sid/Unstable: Then you can go to the example directory, and run it:: Then, inside each main.py, add a new first line:: Then, you can access to kivy-examples directly in your home directory:: There is a kivy ebuild (kivy stable version) To install kivy go to http://software.opensuse.org/package/python-Kivy and use the "1 Click Install" for your openSuse version. You might need to make the latest kivy version appear in the list by clicking on "Show unstable packages". We prefer to use packages by " devel:languages:python". Ubuntu / Kubuntu / Xubuntu / Lubuntu (Saucy and above) Ubuntu 10.04 LTS aka Lucid (No packages, just manual install) Ubuntu 12.04 LTS aka Precise Ubuntu 14.04 LTS aka Trusty Ubuntu example Update your package list using your package manager Use your preferred package-manager to refresh your packagelists Using software packages We ship some examples that are ready-to-run. However, these examples are packaged inside the package. This means you must first know where easy_install has installed your current kivy package, and then go to the examples directory:: ``apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A863D2D6`` ``sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A863D2D6`` `cairo: Standard flag, let kivy use cairo graphical libraries.` `camera: Install libraries needed to support camera.` `doc: Standard flag, will make you build the documentation localy.` `examples: Standard flag, will give you kivy examples programs.` `garden: Install garden tool to manage user maintained widgets.` `gstreamer: Standard flag, kivy will be able to use audio/video streaming libraries.` `spell: Standard flag, provide enchant to use spelling in kivy apps.` as root: as user: available USE-flags are: deb http://ppa.launchpad.net/kivy-team/kivy-daily/ubuntu trusty main deb http://ppa.launchpad.net/kivy-team/kivy-daily/ubuntu utopic main deb http://ppa.launchpad.net/kivy-team/kivy/ubuntu trusty main deb http://ppa.launchpad.net/kivy-team/kivy/ubuntu utopic main emerge Kivy Project-Id-Version: Kivy 1.9.1
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2016-07-02 17:46+0900
PO-Revision-Date: YEAR-MO-DA HO:MI+ZONE
Last-Translator: FULL NAME <EMAIL@ADDRESS>
Language: ja
Language-Team: ja <LL@li.org>
Plural-Forms: nplurals=1; plural=0
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.3.4
 $ sudo add-apt-repository ppa:kivy-team/kivy $ sudo add-apt-repository ppa:kivy-team/kivy-daily $ sudo apt-get install kivy-examples $ sudo apt-get install python-kivy $ sudo apt-get install python3-kivy $ sudo apt-get update **Fedora 16** :: **Fedora 17** :: **Fedora 18** :: **Note:**  Depending on your Linux version, you may receive error messages related to the "ffmpeg" package. In this scenario, use "libav-tools \" in place of "ffmpeg \" (above), or use a PPA (as shown below): **Notice**: Wheezy is not supported - You'll need to upgrade to Jessie at least! *Dependencies with SDL2* *Dependencies with legacy PyGame* *Installation in a Virtual Environment* *Start from the Command Line* 0.20.2 0.21.2 0.23 1.8 1.9 1.9.1 Add one of the PPAs as you prefer Add one of the PPAs to your sources.list in apt manually or via Synaptic Add the GPG key to your apt keyring by executing Adding the repository via the terminal: And you should have a path similar to:: Bodhi Linux Common dependencies Continue as described for Ubuntu above, depending on which version your installation is based on. Cython Debian  (Jessie or newer) Different versions of Kivy have only been tested up to a certain Cython version. It may or may not work with a later version. Fedora Find out on which Ubuntu release your installation is based on, using this `overview <http://www.linuxmint.com/oldreleases.php>`_. Find out which version of the distribution you are running and use the table below to find out on which Ubuntu LTS it is based. For installing distribution relative packages .deb/.rpm/... Gentoo Get the example path from the command line above If you are familiar with Unix and symbolic links, you can create a link directly in your home directory for easier access. For example: If you want to use Python 3 you install "python3" and "python3-dev" and then pass "-p python3" to virtualenv. If you wish to start your Kivy programs as scripts (by typing `./main.py`) or by double-clicking them, you will want to define the correct version of Python by linking to it. Something like:: If you would like access to the examples, please select **python-Kivy-examples** in the upcoming installation wizard. Install **python-Kivy** and optionally the examples, as found in **python-Kivy-examples** Install Kivy Install additional Virtualenv packages Installation Installation on Linux Jessie/Testing: Kivy Linux Mint NOTE: Beware of Python files stored with Windows-style line endings (CR-LF). Linux will not ignore the <CR> and will try to use it as part of the file name. This makes confusing error messages. Convert to Unix line endings. OpenSuSE OpenSuse Or, if you are running Kivy inside a virtualenv, link to the Python interpreter for it, like:: Paste into your console:: Python 3 Refresh your package list and install **python-kivy** and/or **python3-kivy** and optionally the examples found in **kivy-examples** Sid/Unstable: Then you can go to the example directory, and run it:: Then, inside each main.py, add a new first line:: Then, you can access to kivy-examples directly in your home directory:: There is a kivy ebuild (kivy stable version) To install kivy go to http://software.opensuse.org/package/python-Kivy and use the "1 Click Install" for your openSuse version. You might need to make the latest kivy version appear in the list by clicking on "Show unstable packages". We prefer to use packages by " devel:languages:python". Ubuntu / Kubuntu / Xubuntu / Lubuntu (Saucy and above) Ubuntu 10.04 LTS aka Lucid (No packages, just manual install) Ubuntu 12.04 LTS aka Precise Ubuntu 14.04 LTS aka Trusty Ubuntu example Update your package list using your package manager Use your preferred package-manager to refresh your packagelists Using software packages We ship some examples that are ready-to-run. However, these examples are packaged inside the package. This means you must first know where easy_install has installed your current kivy package, and then go to the examples directory:: ``apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A863D2D6`` ``sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A863D2D6`` `cairo: Standard flag, let kivy use cairo graphical libraries.` `camera: Install libraries needed to support camera.` `doc: Standard flag, will make you build the documentation localy.` `examples: Standard flag, will give you kivy examples programs.` `garden: Install garden tool to manage user maintained widgets.` `gstreamer: Standard flag, kivy will be able to use audio/video streaming libraries.` `spell: Standard flag, provide enchant to use spelling in kivy apps.` as root: as user: available USE-flags are: deb http://ppa.launchpad.net/kivy-team/kivy-daily/ubuntu trusty main deb http://ppa.launchpad.net/kivy-team/kivy-daily/ubuntu utopic main deb http://ppa.launchpad.net/kivy-team/kivy/ubuntu trusty main deb http://ppa.launchpad.net/kivy-team/kivy/ubuntu utopic main emerge Kivy 