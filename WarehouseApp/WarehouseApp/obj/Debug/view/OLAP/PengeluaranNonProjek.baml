   M S B A M L   `   `   `  ����  WarehouseApp1    +WarehouseApp.view.OLAP.PengeluaranNonProjek   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Core.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      f bDevExpress.Xpf.PivotGrid.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aBdxpg7http://schemas.devexpress.com/winfx/2008/xaml/pivotgrid  6L   c _DevExpress.Xpf.Charts.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxc4http://schemas.devexpress.com/winfx/2008/xaml/charts  6�     � 	Resources  5	      9  3DevExpress.Xpf.Core.DataSources.PivotOlapDataSource   PivotOlapDataSource   Cube   Catalog   ConnectionTimeout   LocaleIdentifier   Provider   QueryTimeout   Server   Password	   UserId7  1DevExpress.Xpf.Core.DataSources.DesignDataManager
   
DesignData8  2DevExpress.Xpf.Core.DataSources.DesignDataSettings   RowCount��%�   &	          5
   
   $ PengeluaranNonProjekCube��6=   $ BlantackindoCube��6]   $ 60��6x   $
 1057��6�   $ MSOLAP.6��6�   $ 30��6�   $ 
TOSHIBA-PC��6�    6�   Z� 	 6�   Z� 
 5        5      $ 5��6(   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��1* �6   .+�5   
   ��  �� Orientation$ Vertical=�5      $��0��5      .+�5      �� ���	#FF254264$��Pengeluaran Non Projek��5      $��27(�5      $
��Bold"�5      $
��Left=�5      $	��Top=�5      5!      �� 5"   
   $��1��5#      $	��500��5$      .��5&      �� $ Vertical=�5'      .+�5(      /  )DevExpress.Xpf.PivotGrid.PivotGridControl  -   5          Name$ pivotGridControl��5(   (   $	��500��6B      ChartSelectionOnly .     OlapDataProvider$ OleDb=�6�   !   ChartMaxPointCountInSeries$	 999��6�      ChartMaxSeriesCount$	 498��6     OlapConnectionString 6j   �� *ConnectionString+ �� Source# [     Fields 5)      -  'DevExpress.Xpf.PivotGrid.PivotGridField  5*         Area$ RowArea=�6.      Caption$ Jenis Pengeluaran��6=      	FieldName$7 1[Dim Pengeluaran].[Hierarchy].[Jenis Pengeluaran]��6Y      	AreaIndex$ 0��6�     5+      $ 
ColumnArea=�6.   $ 
Nama Bulan��6@   $* $[Dim Waktu].[Hierarchy].[Nama Bulan]��6U   $ 1��6�      SortMode$
 None=�6�     5,      $ 
ColumnArea=�6.   $ Tahun��6@   $% [Dim Waktu].[Hierarchy].[Tahun]��6P   $ 0��6|     5-      $ DataArea=�6.   $ Pengeluaran��6>   $ [Measures].[Nominal]��6T   $ 0��6u      
CellFormat$ c2��6�      EmptyCellText$ -��6�      EmptyValueText$ -��6�   5/      (  "DevExpress.Xpf.Charts.ChartControl  50      -   5          Name$ chartControl��50   #   $	��400��6   $y�	Collapsed=�6�      
DataSource 6:   �� *ChartDataSource+  �� ElementName$  pivotGridControl��!   Diagram.! 51      '  !DevExpress.Xpf.Charts.XYDiagram2D  #  DevExpress.Xpf.Charts.Diagram"   SeriesDataMember$" Series��6&   #   SeriesTemplate# 52      1	  +DevExpress.Xpf.Charts.BarSideBySideSeries2D	  53      "
  DevExpress.Xpf.Charts.Series$ 
  ArgumentDataMember$$ 	Arguments��68   % 
  ValueDataMember$% Values��6W   55      56      57      58      �� 5:   
   $ 
Horizontal=�5;      $��Right=�5<      $��2��5=      .+�5?      � -   5        & �Name$& pivot_Wrapper��5@      $	��100��5A      $	��100��5B      .+�5C      A� -   5        ' A�Name$' PivotBtn��5H      $��90��5D      $��90��5E      ( � Cursor$
( Hand��5F      $��5q�5G      $��Center=�5I      $	��Top=�5J      ���	#FF3D7A11��5K      �� 5L      ) �� EndPoint$) 0.5,1&�6.   * �� 
StartPoint$* 0.5,0&�6?   .��5M      � + � Color$+ Black��6+   , � Offset$, 0Q�69   � 5N      $+ 	#FF71FF88��6+   $, 0.003Q�6=   � 5O      $+ 	#FF79FF5B��6+   $, 1Q�6=   5P      5R      �� 5S      -   5        - ��Name$- 
spPivotBtn��5X      $��Center=�5T      $��Center=�5U      $ Vertical=�5V      $
( Hand��5W      $��0,15,0,0q�5Y      $��90��5Z      $��90��5[      .+�5\      �� $0��*/WarehouseApp;component/Resources/olap.png��5]      $
��60px��5^      $
��60px��5_      $��Center=�5`      $��Center=�5a      5c      �� 5d      $��Center=�5e      $��Center=�5f      $��Pivot��5g      $
��Bold"�5h      ���#3D7A115i      5k      5l      � 5n      -   5        $& chartWrapper��5o      $	��100��5p      $	��100��5q      .+�5s      A� -   5        $' ChartBtn��5x      $��90��5t      $��90��5u      $
( Hand��5v      $��5q�5w      $��Center=�5y      $	��Top=�5z      ���	#FF3D7A11��5{      �� 5|      $) 0.5,1&�6.   $* 0.5,0&�6?   .��5}      � $+ Black��6+   $, 0Q�69   � 5~      $+ 	#FF71FF88��6+   $, 0.003Q�6=   � 5      $+ 	#FF79FF5B��6+   $, 1Q�6=   5�      5�      �� 5�      -   5        $- 
spChartBtn��5�      $��Center=�5�      $��Center=�5�      $ Vertical=�5�      $
( Hand��5�      $��0,15,0,0q�5�      $��90��5�      $��90��5�      .+�5�      �� $1��+/WarehouseApp;component/Resources/chart.png��5�      $
��60px��5�      $
��60px��5�      $��Center=�5�      $��Center=�5�      5�      �� 5�      $��Center=�5�      $��Center=�5�      $��Chart��5�      $
��Bold"�5�      ���#3D7A115�      5�      5�      � 5�      -	   5        $& printWrapper��5�      $	��100��5�      $	��100��5�      .+�5�      A� -
   5        $' printBtn��5�      $��90��5�      $��90��5�      $��5q�5�      $
( Hand��5�      $��Center=�5�      $	��Top=�5�      ���	#FF3D7A11��5�      �� 5�      $) 0.5,1&�6.   $* 0.5,0&�6?   .��5�      � $+ Black��6+   $, 0Q�69   � 5�      $+ 	#FF71FF88��6+   $, 0.003Q�6=   � 5�      $+ 	#FF79FF5B��6+   $, 1Q�6=   5�      5�      �� 5�      -   5        $- 
SpPrintBtn��5�      $��Center=�5�      $��Center=�5�      $
( Hand��5�      $ Vertical=�5�      $��0,15,0,0q�5�      $��90��5�      $��90��5�      .+�5�      �� $3��-/WarehouseApp;component/Resources/printer.png��5�      $
��60px��5�      $
��60px��5�      $��Center=�5�      $��Center=�5�      5�      �� 5�      $��Center=�5�      $��Center=�5�      $��Print��5�      $
��Bold"�5�      ���#3D7A115�      5�      5�      5�      5�      5�      