   M S B A M L   `   `   `  ����G  CWarehouseApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null?$clr-namespace:WarehouseApp.viewmodelWarehouseApp.viewmodel  5          WarehouseApp.view.DimFact   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      :	ViewModel$clr-namespace:WarehouseApp.viewmodel     5      $	��600��5	   7   .��5
      �   � RowDefinitions  5   
   �� 5      $
��auto �6   �� 5      $	��500 �6   .+�5   
   �� $��0��6   $��
20,10,0,15q�5      .+�5      �� ���	#FF094B85$��30(�5      $��SemiBold"�5      ��5      �� *	HeadTabel+5      5      &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ Tabel��5      $   HorizontalScrollBarVisibility$ Visible=�5      "   VerticalScrollBarVisibility$ Visible=�5      $��1��5      $��	20,0,10,0q�5         AutoGenerateColumns . ���	#FFFFFBFB��5      �� *DT+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=� � 	Resources 5       �� 
TargetType	 �� Property
 �� Value��%{   '��       �� 5       " ��6   .�5!      �� 	 � ��
 �#ffffff63   �� 5"      	 � ��$
 0q�68   5#      5$         ColumnHeaderStyle 5%      �� 5&      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5'      �� 	 � ��
 5(      �� 5)       �� EndPoint$ 0.5,1&�62    �� 
StartPoint$ 0.5,0&�6C   .��5*   "   �  � Color$ 	#FF398AC1��6/    � Offset$ 0Q�6A   � 5+   "   $ 	#FFF8F7FF��6/   $ 1Q�6A   � 5,   "   $ 	#FF5E9FD3��6/   $ 0.303Q�6A   5-      5/      �� 50      	 � ��
 �	#FF094B856G   �� 51      	 � ��$

 Bold"�63   6B   �� 52      	 � ��$	
 140��61   6?   �� 53      	 � ��$
 16(�61   6>   �� 54      	 � ��$
 35��6/   6<   �� 55      	 � ��$
 Stretch=�6<   6N   �� 56      	 � ��$
 Center=�6C   6T   57         	CellStyle 59      �� 5:      *  $System.Windows.Controls.DataGridCell"  6   .�5;      �� 	 � ��$
 30��6/   6<   �� 5<      	 � ��$
 0,0,0,0q�6/   6A   �� 5>      	 � ��$
 Stretch=�6<   6N   �� 5?      	 � ��$

 Left=�6C   6R   5@         RowStyle 5B      �� 5C      )  #System.Windows.Controls.DataGridRow"  6   .�5D      �� 	 � ��$
 0,1,0,0q�68   6J   �� 5E      	 � ��

 �����6H   5F      5H      5I      5J      