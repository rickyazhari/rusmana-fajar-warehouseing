   M S B A M L   `   `   `  ����  WarehouseApp    WarehouseApp.view.main   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	     � Title$  PTP Warehouse��5       � WindowStyle$
 None=�6    � WindowStartupLocation$ CenterScreen=�6+    � WindowState$ 	Maximized=�6P   .��5	      �  � RowDefinitions 5
   
   �� 5      $
��auto �6   6,   �� 5      $��1* �6   6*   .+�5   
   �� $��0��6   $��	10,5,5,10q�5      .+�5      �� -   5         ��Name$ exitbtn��5      $��Right=�5      $��X��5      $��16��5      $��16��5      ���#BF0000$
��Bold"�5      $��ExtraExpanded&�5      $��15(�5       � Cursor$
 Hand��5      6   ]� 5      .+�5      �� -   5         ��Name$ LogoImg��5      $0��*/WarehouseApp;component/Resources/logo.png��5      $��50��5      $��50��5       $
��Left=�5!      $
��Left=�5"      �� 5#      $��PT. Blantackindo��5$       �� TextAlignment$
 Left=�5%      $
��Bold"�5&      $
��Left=�5'      $��Center=�5(      $��36(�5)      $��Italic$�5*      ���#09D92B5,      5-      5.      � 5/   
   $��10q�50      $��1��51       52      �� 53      $
��auto �6    �� 54      $��1* �6    	 � ColumnDefinitions	 56      �� 57      $	��300 �6#   �� 58      $��1* �6#   .+�5;      �� -   5        
 ��Name$
 
menu_utama��5<      $��0��5=      $y�	Collapsed=�5>      $��2��5?       �� Orientation$ 
Horizontal=�5@      $��0,5,0,10q�5A      .+�5C      ]� -   5         ]�Name$ 
LaporanBtn��5D      $	��110��5E      $��50��5F      $��0,0,10,0q�5G      .+�5H      �� $0��*/WarehouseApp;component/Resources/olap.png��5I      $��30��5J      $��30��5K      $
��Left=�5L      $
��Left=�5M      �� 5N      -   5        $ laporan_menu��5O      $��Laporan��5P      $��80��5Q      $��25��5R      ���#3D7A11$
��Bold"�5T      $��18(�5U      $
 Hand��5V      $��5q�5W      5X      ]� 5Y      -   5        $ FactBtn��5Z      $	��110��5[      $��50��5\      $��0,0,10,0q�5]      .+�5^      �� $1��+/WarehouseApp;component/Resources/table.png��5_      $��30��5`      $��30��5a      $
��Left=�5b      $
��Left=�5c      �� 5d      -   5        $ 
fakta_menu��5e      $��Fakta��5f      $��55��5g      $��25��5h      ���#3D7A11$
��Bold"�5j      $��18(�5k      $��5q�5l      5m      ]� 5o      -   5        $ dimBtn��5s      $	��110��5p      $��50��5q      $��0,0,10,0q�5r      .+�5t      �� $1��+/WarehouseApp;component/Resources/table.png��5u      $��30��5v      $��30��5w      $
��Left=�5x      $
��Left=�5y      �� 5z      -	   5        $ dimensi_menu��5{      $��Dimensi��5|      $��80��5}      $��25��5~      ���#3D7A11$
��Bold"�5�      $��18(�5�      $
 Hand��5�      $��5q�5�      5�      5�      �� 5�      $��2��5�      ���	#FF71FF88$��2��5�      $��Stretch=�5�      $��Bottom=�5�      �� 5�      -
   5        $
 submenu��5�      $��0��5�      $��1��5�      $��Hidden=�5�      ��5�      �� 5�       �� EndPoint$ 0.5,1&�6*    �� 
StartPoint$ 0.5,0&�6;   .��5�      �  � Color$ Black��6'    � Offset$ 0Q�65   � 5�      $ 	#FF71FF88��6'   $ 0.003Q�69   � 5�      $ 	#FF79FF5B��6'   $ 1Q�69   5�      +�5�      5�      �� 5�      -   5        $
 Content��5�      $��1��5�      $��1��5�      5�      5�      5�      5�      