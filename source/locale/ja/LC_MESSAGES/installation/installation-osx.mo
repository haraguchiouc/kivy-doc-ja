��    '      T              �  =   �  h   �  D   4  �   y  �   x  e   �  K   _  �   �  ;   b  �   �  �   8     �  ,   �  (   '  =   P     �     �  Z   �     	  �   	     �	  u   �	     0
     K
  �   g
  B     �   Y     -     I     d  A   |     �  	   �  &   �  <     �   ?     �  _     t  b  =   �  h     D   ~  �   �  �   �  e   C  K   �  �   �  ;   �  �   �  �   �     3  ,   D  (   q  =   �     �     �  Z         [  �   d     �  u        z     �  �   �  B   `  �   �     w     �     �  A   �       	     &   %  <   L  �   �     ,  _   L   Alternatively you can install Kivy using the following steps: Copy the Kivy2.app or Kivy3.app as Kivy.app to /Applications. Paste the following line in the terminal:: Create a symlink named `kivy` to easily launch apps with kivy venv:: Do not forget to replace <Framework_name> with your framework. This tool `osxrelocator` essentially changes the path for the libs in the framework such that they are relative to the executable within the .app, making the Framework portable with the .app. Download the latest version from http://kivy.org/#download Kivy2.7z is using using Python 2 (System Python), Kivy3.7z (Python 3) Examples and all the normal kivy tools are present in the Kivy.app/Contents/Resources/kivy directory. Extract it using an archive program like `Keka <http://www.kekaosx.com/>`_. For OS X 10.7 and later, we provide a Kivy.app with all dependencies bundled. Download it from our `Download Page <http://kivy.org/#download>`_. It comes as a .7z file that contains: If it just goes to the next line without errors, it worked. If you install a module that installs a binary for example like kivy-garden. That binary will be only available from the venv above, as in after you do:: If you want to use Kivy from the command line, double-click the ``Make Symlinks`` script after you have dragged the Kivy.app into the Applications folder. To test if it worked: In there, type:: Inside the portable venv within the app at:: Install cython 0.23 and kivy using pip:: Install the requirements using `homebrew <http://brew.sh>`_:: Installation on OS X Installing modules Just copy the binary to the /Applications/Kivy.app/Contents/Resources/venv/bin/ directory. Kivy.app Kivy.app comes with SDL2 and Gstreamer frameworks provided. To include frameworks other than the ones provided do the following:: Open Terminal.app and enter:: Running any Kivy application from the command line is now simply a matter of executing a command like the following:: Start any Kivy Application Start from the Command Line The Kivy SDK on OS X uses its own virtual env that is activated when you run your app using the `kivy` command. To install any module you need to install the module like so:: The garden lib will be only available when you activate this env:: This method has only been tested on OS X 10.7 and above (64-bit). For versions prior to 10.7 or 10.7 32-bit, you have to install the components yourself. We suggest using `homebrew <http://brew.sh>`_ to do that. To include other frameworks To install Kivy, you must: To install binary files To install the development version, use this in the second step:: Using The Kivy.app Using pip Where are the modules/files installed? You can just drag and drop your main.py to run your app too. You can run any Kivy application by simply dragging the application's main file onto the Kivy.app icon. Just try this with any python file in the examples folder. You should get a Python prompt. You should now have a `kivy` script that you can use to launch your kivy app from the terminal. Project-Id-Version: Kivy 1.9.1
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
 Alternatively you can install Kivy using the following steps: Copy the Kivy2.app or Kivy3.app as Kivy.app to /Applications. Paste the following line in the terminal:: Create a symlink named `kivy` to easily launch apps with kivy venv:: Do not forget to replace <Framework_name> with your framework. This tool `osxrelocator` essentially changes the path for the libs in the framework such that they are relative to the executable within the .app, making the Framework portable with the .app. Download the latest version from http://kivy.org/#download Kivy2.7z is using using Python 2 (System Python), Kivy3.7z (Python 3) Examples and all the normal kivy tools are present in the Kivy.app/Contents/Resources/kivy directory. Extract it using an archive program like `Keka <http://www.kekaosx.com/>`_. For OS X 10.7 and later, we provide a Kivy.app with all dependencies bundled. Download it from our `Download Page <http://kivy.org/#download>`_. It comes as a .7z file that contains: If it just goes to the next line without errors, it worked. If you install a module that installs a binary for example like kivy-garden. That binary will be only available from the venv above, as in after you do:: If you want to use Kivy from the command line, double-click the ``Make Symlinks`` script after you have dragged the Kivy.app into the Applications folder. To test if it worked: In there, type:: Inside the portable venv within the app at:: Install cython 0.23 and kivy using pip:: Install the requirements using `homebrew <http://brew.sh>`_:: Installation on OS X Installing modules Just copy the binary to the /Applications/Kivy.app/Contents/Resources/venv/bin/ directory. Kivy.app Kivy.app comes with SDL2 and Gstreamer frameworks provided. To include frameworks other than the ones provided do the following:: Open Terminal.app and enter:: Running any Kivy application from the command line is now simply a matter of executing a command like the following:: Start any Kivy Application Start from the Command Line The Kivy SDK on OS X uses its own virtual env that is activated when you run your app using the `kivy` command. To install any module you need to install the module like so:: The garden lib will be only available when you activate this env:: This method has only been tested on OS X 10.7 and above (64-bit). For versions prior to 10.7 or 10.7 32-bit, you have to install the components yourself. We suggest using `homebrew <http://brew.sh>`_ to do that. To include other frameworks To install Kivy, you must: To install binary files To install the development version, use this in the second step:: Using The Kivy.app Using pip Where are the modules/files installed? You can just drag and drop your main.py to run your app too. You can run any Kivy application by simply dragging the application's main file onto the Kivy.app icon. Just try this with any python file in the examples folder. You should get a Python prompt. You should now have a `kivy` script that you can use to launch your kivy app from the terminal. 