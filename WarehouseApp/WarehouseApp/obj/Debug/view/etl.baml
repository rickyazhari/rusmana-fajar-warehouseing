   M S B A M L   `   `   `  ����G  CWarehouseApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WarehouseApp.viewmodelWarehouseApp.viewmodel  5   	       WarehouseApp.view.etl   5   	   a ]DevExpress.Xpf.Core.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a?dxe5http://schemas.devexpress.com/winfx/2008/xaml/editors  \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   :	ViewModel$clr-namespace:WarehouseApp.viewmodel     5   	     � Title$	  etl��5   	   $	��400��5   	   $	��500��5   	    � 
ResizeMode$ NoResize=�5	   	    � WindowStartupLocation$ CenterScreen=�5
   	    � WindowStyle$
 None=�5   	   
�����_�$��1q�5   	    � 	Resources 5      ��%    5      .��5      �  � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $��1* �6   6*   .+�5   
   �� $��0��6   $��	10,0,0,10q�5      .+�5      �� -   5         ��Name$ exitbtn��5      $��Right=�5       $��X��5!      $��16��5"      $��16��5#      ���#BF0000$
��Bold"�5%      $��ExtraExpanded&�5&      $��15(�5'       � Cursor$
 Hand��5(      6   ]� 5)      .+�5*      �� -   5         ��Name$ LogoImg��5+      $0��*/WarehouseApp;component/Resources/logo.png��5,      $��50��5-      $��50��5.      $
��Left=�5/      $
��Left=�50      �� 51      $��PT. Blantackindo��52      	 �� TextAlignment$
	 Left=�53      $
��Bold"�54      $
��Left=�55      $��Center=�56      $��36(�57      $��Italic$�58      ���#09D92B5;      5<      �� 5=      -   5        $ etlLbl��5>      $?��9Silahkan, tekan tombol Proses, untuk melakukan proses ETL��5?      $��0,20,0,0q�5@      5B      � 5C   
   $��1��5D      $��10q�5E       5G      �� 5H      $	��200 �6    6/   �� 5I      $
��auto �6    60   .+�5K      �� $��0��5L      $��Center=�5M      $��Bottom=�5N      .+�5O      � -   5        
 �Name$
 etl_Wrapper��5P      $	��130��5Q      $	��130��5R      .+�5S      A� -   5         A�Name$ ETLBtn��5W      $	��120��5T      $	��120��5U      $��5q�5V      $��Center=�5X      $	��Top=�5Y      ���	#FF3D7A11��5Z      �� 5[       �� EndPoint$ 0.5,1&�62    �� 
StartPoint$ 0.5,0&�6C   .��5\   "   �  � Color$ Black��6/    � Offset$ 0Q�6=   � 5]   "   $ 	#FF71FF88��6/   $ 0.003Q�6A   � 5^   "   $ 	#FF79FF5B��6/   $ 1Q�6A   5_      5a      �� 5b      -   5        $��Center=�5c      $��Center=�5d       �� Orientation$ Vertical=�5e      $��0,15,0,0q�5f      $��90��5g      $��90��5h      .+�5i      �� $2��,/WarehouseApp;component/Resources/etlbtn.png��5j      $
��60px��5k      $
��60px��5l      $��Center=�5m      $��Center=�5n      5p      �� 5q      $��Center=�5r      $��Center=�5s      $��PROSES��5t      $
��Bold"�5u      ���#3D7A115v      5x      5y      5z      �� 5{      $��1��6   .+�5|      � -   5         �Name$ 	pbLoading��5}      
�������$	��Top=�5�      $y�Hidden=�5�      $	��250��5�      ���	#FF3D7A11 � IsIndeterminate 5~      �� *	Loading+��5�      Z� 5�   !   5�      5�      5�      5�      