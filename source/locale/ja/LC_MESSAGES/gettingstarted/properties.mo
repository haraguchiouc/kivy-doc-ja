��          �               �   �  �       �  I   �     �  ;     H   J  J   �  '   �       
   !  u   ,  J  �  t  �  �  b      �  I   	     i	  ;   �	  H   �	  J   
  '   S
     {
  
   �
  u   �
  J     :mod:`~kivy.properties.NumericProperty`, :mod:`~kivy.properties.StringProperty`, :mod:`~kivy.properties.ListProperty`, :mod:`~kivy.properties.ObjectProperty`, :mod:`~kivy.properties.BooleanProperty`, :mod:`~kivy.properties.BoundedNumericProperty`, :mod:`~kivy.properties.OptionProperty`, :mod:`~kivy.properties.ReferenceListProperty`, :mod:`~kivy.properties.AliasProperty`, :mod:`~kivy.properties.DictProperty`, After, using Kivy's properties:: Automatically observe any changes and dispatch functions/code accordingly Check and validate values Easily manipulate widgets defined in the :doc:`/guide/lang` For an in-depth explanation, take a look at :doc:`/api-kivy.properties`. Kivy introduces a new way of declaring properties within a class. Before:: Kivy provides the following properties: Optimize memory management Properties These properties implement the `Observer pattern <http://en.wikipedia.org/wiki/Observer_pattern>`_. They help you to: To use them, **you have to declare them at class level**. That is, directly in the class, not in any method of the class. A property is a class attribute that will automatically create instance attributes. Each property by default provides an ``on_<propertyname>`` event that is called whenever the property's state/value changes. Project-Id-Version: Kivy 1.9.1
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
 :mod:`~kivy.properties.NumericProperty`, :mod:`~kivy.properties.StringProperty`, :mod:`~kivy.properties.ListProperty`, :mod:`~kivy.properties.ObjectProperty`, :mod:`~kivy.properties.BooleanProperty`, :mod:`~kivy.properties.BoundedNumericProperty`, :mod:`~kivy.properties.OptionProperty`, :mod:`~kivy.properties.ReferenceListProperty`, :mod:`~kivy.properties.AliasProperty`, :mod:`~kivy.properties.DictProperty`, After, using Kivy's properties:: Automatically observe any changes and dispatch functions/code accordingly Check and validate values Easily manipulate widgets defined in the :doc:`/guide/lang` For an in-depth explanation, take a look at :doc:`/api-kivy.properties`. Kivy introduces a new way of declaring properties within a class. Before:: Kivy provides the following properties: Optimize memory management Properties These properties implement the `Observer pattern <http://en.wikipedia.org/wiki/Observer_pattern>`_. They help you to: To use them, **you have to declare them at class level**. That is, directly in the class, not in any method of the class. A property is a class attribute that will automatically create instance attributes. Each property by default provides an ``on_<propertyname>`` event that is called whenever the property's state/value changes. 