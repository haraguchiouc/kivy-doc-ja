��    B      ,              <     =  <   J  >   �  *   �     �  &   �  
   $     /  	   G  �   Q  .  �  �   
     �       .      8   O     �  �   	     �	  p   n
  �   �
  �   v  �   "     �  �   �     �     �  �   �  |   e  �   �  q   �  �   9  6        M  !   f  0   �     �     �  `   �  %   F     l     �  �   �  �   �    S  �   X  %   2  �   X  t   �     j  �   �  �     K   �  d   ?  ;   �  �  �  6   �  �   �  �  �  A   �  I   �  #  E     i   B   v   <   �   t  �      k"  <   x"  >   �"  *   �"     #  &   +#  
   R#     ]#  	   u#  �   #  .  	$  �   8%      &     1&  .   N&  8   }&     �&  �   6'     (  p   �(  �   )  �   �)  �   P*     �*  �   �*     �+     �+  �   �+  |   �,  �   -  q   �-  �   g.  6   D/     {/  !   �/  0   �/     �/     �/  `   0  %   t0     �0     �0  �   �0  �   �1    �2  �   �3  %   `4  �   �4  t   #5     �5  �   �5  �   @6  K   !7  d   m7  ;   �7  �  8  6   �9  �   $:  �  �:  A   �<  I   )=  #  s=     �>  B   �>  <   �>   /sdcard/kivy :code:`<yourapplication>` should be a directory containing:: A linux computer or a :ref:`virtual machine <kivy_android_vm>` An example of using multiple permissions:: Android SDK Another containing audio, openssl etc. Apache ant Build your distribution Buildozer Buildozer currently works only in Linux, and is an alpha release, but it already works well and can significantly simplify the apk build. Buildozer has many available options and tools to help you, the steps above are just the simplest way to build and run your APK. The full documentation is available `here <http://buildozer.readthedocs.org/en/latest/>`_. You can also check the Buildozer README at `<https://github.com/kivy/buildozer>`_. Buildozer is a tool that automates the entire build process. It downloads and sets up all the prequisites for python-for-android, including the android SDK and NDK, then builds an apk that can be automatically pushed to the device. Click on Install Create a package for Android Finally, plug in your android device and run:: First, install the prerequisites needed for the project: For example, if we imagine that the touchtracer demo of Kivy is in the directory ~/kivy/examples/demo/touchtracer, you can do:: For new users, we recommend using :ref:`Buildozer` as the easiest way to make a full APK. You can also run your Kivy app without a compilation step with the :ref:`Kivy Launcher <Packaging your application for Kivy launcher>` app. Full list of available permissions are documented here: http://developer.android.com/reference/android/Manifest.permission.html Go to the `Kivy Launcher page <https://market.android.com/details?id=org.kivy.pygame>`_ on the Google Play Store If you don't have access to the Google Play Store on your phone/tablet, you can download and install the APK manually from  http://kivy.org/#download. If you have built your own APK with Buildozer or with python-for-android, you can create a release version that may be released on the Play store or other Android markets. Inside the distribution (`dist/default` by default), you have a tool named `build.py`. This is the script that will create the APK for you:: Installation of Examples It is possible to target specific Android features, both directly and in a (somewhat) cross-platform way. See the `Using Android APIs` section of the :doc:`Kivy on Android documentation </guide/android>` for more details. Java Jinja2 (python module) Kivy applications can be :ref:`released on an Android market <release_on_the_market>` such as the Play store, with a few extra steps to create a fully signed APK. Kivy comes with many examples, and these can be a great place to start trying the Kivy launcher. You can run them as below:: Kivy is designed to operate identically across platforms and as a result, makes some clear design decisions. It includes its own set of widgets and by default, builds an APK with all the required core dependencies and libraries. NOTE: Currently, packages for Android can only be generated with Python 2.7. Python 3.3+ support is on the way... Once the Kivy launcher is installed, you can put your Kivy applications in the Kivy directory in your external storage directory (often available at :code:`/sdcard` even in devices where this memory is internal), e.g. :: One containing a minimal support without audio / video Package your application Packaging with python-for-android Packaging your application for the Kivy Launcher Python 2.7 (not 2.6.) Release on the market Run the launcher and select one of the Pictures, Showcase, Touchtracer, Cymunk or other demos... Select your phone... And you're done! Setup Python for Android Targeting Android The Kivy project includes tools for accessing Android APIs to accomplish vibration, sensor access, texting etc. These, along with information on debugging on the device, are documented at the :doc:`main Android page </guide/android>`. The `Kivy launcher <https://play.google.com/store/apps/details?id=org.kivy.pygame&hl=en>`_ is an Android application that runs any Kivy examples stored on your SD Card. To install the Kivy launcher, you must: The debug binary will be generated in bin/KivyTouchtracer-1.1.0-debug.apk.  The `debug` and `installd` parameters are commands from the Android project itself. They instruct `build.py` to compile the APK in debug mode and install on the first connected device. The distribution is a "directory" containing a specialized python compiled for Android, including only the modules you asked for. You can, from the same python-for-android, compile multiple distributions. For example: The file `android.txt` must contain:: The order of modules provided are important, as a general rule put dependencies first and then the dependent modules, C libs come first then python modules. The result of the compilation will be saved into `dist/default`. Here are other examples of building distributions:: Then open a console and type:: These options are just a very basic configuration. If you create your own APK using the tools above, you can choose many other settings. This creates a `buildozer.spec` file controlling your build configuration. You should edit it appropriately with your app name etc. You can set variables to control most or all of the parameters passed to python-for-android. This section describes how to download and use python-for-android directly. This will install buildozer in your system. Afterwards, navigate to your project directory and run:: To do that, you must use the script named `distribute.sh`:: To do this, you must run Buildozer with the :code:`release` parameter (e.g. :code:`buildozer android release`), or if using python-for-android use the :code:`--release` option to build.py. This creates a release APK in the :code:`bin` directory, which you must properly sign and zipalign. The procedure for doing this is described in the Android documentation at http://developer.android.com/guide/publishing/app-signing.html - all the necessary tools come with the Android SDK. To see the available options for distribute.sh, type:: To use the latest Kivy development version to build your distribution, link "P4A_kivy_DIR" to the kivy folder environment variable to the kivy folder location. On linux you would use the export command, like this:: You can create a package for android using the `python-for-android <https://github.com/kivy/python-for-android>`_ project. This page explains how to download and use it directly on your own machine (see :ref:`Packaging your application into APK`), use the prebuilt :ref:`Kivy Android VM <kivy_android_vm>` image, or use the :ref:`buildozer` tool to automate the entire process. You can also see :ref:`Packaging your application for Kivy Launcher` to run kivy programs without compiling them. You can get buildozer at `<https://github.com/kivy/buildozer>`_:: You can then install the APK directly to your Android device as follows:: You need to be aware that the default target Android SDK version for the build will be SDK v.8, which is the minimum required SDK version for kivy. You should either install this API version, or change the AndroidManifest.xml file (under dist/.../) to match your own target SDK requirements. You'll need: http://python-for-android.readthedocs.org/en/latest/prerequisites/ to build, push and automatically run the apk on your device. Project-Id-Version: Kivy 1.9.1
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
 /sdcard/kivy :code:`<yourapplication>` should be a directory containing:: A linux computer or a :ref:`virtual machine <kivy_android_vm>` An example of using multiple permissions:: Android SDK Another containing audio, openssl etc. Apache ant Build your distribution Buildozer Buildozer currently works only in Linux, and is an alpha release, but it already works well and can significantly simplify the apk build. Buildozer has many available options and tools to help you, the steps above are just the simplest way to build and run your APK. The full documentation is available `here <http://buildozer.readthedocs.org/en/latest/>`_. You can also check the Buildozer README at `<https://github.com/kivy/buildozer>`_. Buildozer is a tool that automates the entire build process. It downloads and sets up all the prequisites for python-for-android, including the android SDK and NDK, then builds an apk that can be automatically pushed to the device. Click on Install Create a package for Android Finally, plug in your android device and run:: First, install the prerequisites needed for the project: For example, if we imagine that the touchtracer demo of Kivy is in the directory ~/kivy/examples/demo/touchtracer, you can do:: For new users, we recommend using :ref:`Buildozer` as the easiest way to make a full APK. You can also run your Kivy app without a compilation step with the :ref:`Kivy Launcher <Packaging your application for Kivy launcher>` app. Full list of available permissions are documented here: http://developer.android.com/reference/android/Manifest.permission.html Go to the `Kivy Launcher page <https://market.android.com/details?id=org.kivy.pygame>`_ on the Google Play Store If you don't have access to the Google Play Store on your phone/tablet, you can download and install the APK manually from  http://kivy.org/#download. If you have built your own APK with Buildozer or with python-for-android, you can create a release version that may be released on the Play store or other Android markets. Inside the distribution (`dist/default` by default), you have a tool named `build.py`. This is the script that will create the APK for you:: Installation of Examples It is possible to target specific Android features, both directly and in a (somewhat) cross-platform way. See the `Using Android APIs` section of the :doc:`Kivy on Android documentation </guide/android>` for more details. Java Jinja2 (python module) Kivy applications can be :ref:`released on an Android market <release_on_the_market>` such as the Play store, with a few extra steps to create a fully signed APK. Kivy comes with many examples, and these can be a great place to start trying the Kivy launcher. You can run them as below:: Kivy is designed to operate identically across platforms and as a result, makes some clear design decisions. It includes its own set of widgets and by default, builds an APK with all the required core dependencies and libraries. NOTE: Currently, packages for Android can only be generated with Python 2.7. Python 3.3+ support is on the way... Once the Kivy launcher is installed, you can put your Kivy applications in the Kivy directory in your external storage directory (often available at :code:`/sdcard` even in devices where this memory is internal), e.g. :: One containing a minimal support without audio / video Package your application Packaging with python-for-android Packaging your application for the Kivy Launcher Python 2.7 (not 2.6.) Release on the market Run the launcher and select one of the Pictures, Showcase, Touchtracer, Cymunk or other demos... Select your phone... And you're done! Setup Python for Android Targeting Android The Kivy project includes tools for accessing Android APIs to accomplish vibration, sensor access, texting etc. These, along with information on debugging on the device, are documented at the :doc:`main Android page </guide/android>`. The `Kivy launcher <https://play.google.com/store/apps/details?id=org.kivy.pygame&hl=en>`_ is an Android application that runs any Kivy examples stored on your SD Card. To install the Kivy launcher, you must: The debug binary will be generated in bin/KivyTouchtracer-1.1.0-debug.apk.  The `debug` and `installd` parameters are commands from the Android project itself. They instruct `build.py` to compile the APK in debug mode and install on the first connected device. The distribution is a "directory" containing a specialized python compiled for Android, including only the modules you asked for. You can, from the same python-for-android, compile multiple distributions. For example: The file `android.txt` must contain:: The order of modules provided are important, as a general rule put dependencies first and then the dependent modules, C libs come first then python modules. The result of the compilation will be saved into `dist/default`. Here are other examples of building distributions:: Then open a console and type:: These options are just a very basic configuration. If you create your own APK using the tools above, you can choose many other settings. This creates a `buildozer.spec` file controlling your build configuration. You should edit it appropriately with your app name etc. You can set variables to control most or all of the parameters passed to python-for-android. This section describes how to download and use python-for-android directly. This will install buildozer in your system. Afterwards, navigate to your project directory and run:: To do that, you must use the script named `distribute.sh`:: To do this, you must run Buildozer with the :code:`release` parameter (e.g. :code:`buildozer android release`), or if using python-for-android use the :code:`--release` option to build.py. This creates a release APK in the :code:`bin` directory, which you must properly sign and zipalign. The procedure for doing this is described in the Android documentation at http://developer.android.com/guide/publishing/app-signing.html - all the necessary tools come with the Android SDK. To see the available options for distribute.sh, type:: To use the latest Kivy development version to build your distribution, link "P4A_kivy_DIR" to the kivy folder environment variable to the kivy folder location. On linux you would use the export command, like this:: You can create a package for android using the `python-for-android <https://github.com/kivy/python-for-android>`_ project. This page explains how to download and use it directly on your own machine (see :ref:`Packaging your application into APK`), use the prebuilt :ref:`Kivy Android VM <kivy_android_vm>` image, or use the :ref:`buildozer` tool to automate the entire process. You can also see :ref:`Packaging your application for Kivy Launcher` to run kivy programs without compiling them. You can get buildozer at `<https://github.com/kivy/buildozer>`_:: You can then install the APK directly to your Android device as follows:: You need to be aware that the default target Android SDK version for the build will be SDK v.8, which is the minimum required SDK version for kivy. You should either install this API version, or change the AndroidManifest.xml file (under dist/.../) to match your own target SDK requirements. You'll need: http://python-for-android.readthedocs.org/en/latest/prerequisites/ to build, push and automatically run the apk on your device. 