   M S B A M L   `   `   `  ����  WarehouseApp)    #WarehouseApp.view.OLAP.LokasiProjek   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      a ]DevExpress.Xpf.Core.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a;dx2http://schemas.devexpress.com/winfx/2008/xaml/core  5      f bDevExpress.Xpf.PivotGrid.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49aBdxpg7http://schemas.devexpress.com/winfx/2008/xaml/pivotgrid  6L   c _DevExpress.Xpf.Charts.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a>dxc4http://schemas.devexpress.com/winfx/2008/xaml/charts  6�     � 	Resources  5	      9  3DevExpress.Xpf.Core.DataSources.PivotOlapDataSource   PivotOlapDataSource   Cube   Catalog   ConnectionTimeout   LocaleIdentifier   Provider   QueryTimeout   Server   Password	   UserId7  1DevExpress.Xpf.Core.DataSources.DesignDataManager
   
DesignData8  2DevExpress.Xpf.Core.DataSources.DesignDataSettings   RowCount��%�   &	          5
   
   $ LokasiProjectCube��6=   $ BlantackindoCube��6V   $ 60��6q   $
 1057��6�   $ MSOLAP.6��6�   $ 30��6�   $ 
TOSHIBA-PC��6�    6�   Z� 	 6�   Z� 
 5        5      $ 5��6(   5      5      .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $��1* �6   .+�5   
   ��  �� Orientation$ Vertical=�5      $��0��5      .+�5      �� ���	#FF254264$��Lokasi Projek��5      $��27(�5      $
��Bold"�5      $
��Left=�5      $	��Top=�5      5!      �� 5"   
   $��1��5#      $	��500��5$      .��5&      �� $ Vertical=�5'      .+�5(      /  )DevExpress.Xpf.PivotGrid.PivotGridControl  -   5          Name$ pivotGridControl��5(   (   $	��500��6B      ChartSelectionOnly .     OlapDataProvider$ OleDb=�6�   !   ChartMaxPointCountInSeries$	 999��6�      ChartMaxSeriesCount$	 498��6     OlapConnectionString 6j   �� *ConnectionString+ �� Source# [     Fields 5)      -  'DevExpress.Xpf.PivotGrid.PivotGridField  5*         Area$ RowArea=�6.      Caption$ Nama Client��6=      	FieldName$, &[Dim Client].[Hierarchy].[Nama Client]��6S      	AreaIndex$ 1��6�     5+      $ 
ColumnArea=�6.   $ 
Nama Bulan��6@   $* $[Dim Waktu].[Hierarchy].[Nama Bulan]��6U   $ 1��6�      SortMode$
 None=�6�     5,      $ 
ColumnArea=�6.   $ Tahun��6@   $% [Dim Waktu].[Hierarchy].[Tahun]��6P   $ 0��6|     5-      $ RowArea=�6.   $ Wilayah��6=   $) #[Dim Wilayah].[Hierarchy].[Wilayah]��6O   $ 0��6     5.      $ DataArea=�6.   $ Jumlah��6>   $  [Measures].[Jumlah Lokasi]��6O   $ 0��6v      EmptyCellText$ -��6�      EmptyValueText$ -��6�   50      (  "DevExpress.Xpf.Charts.ChartControl  51      -   5          Name$ chartControl��51   #   $	��400��6   $y�	Collapsed=�6�      
DataSource 6:   �� *ChartDataSource+ �� ElementName$ pivotGridControl��    Diagram.  52      '  !DevExpress.Xpf.Charts.XYDiagram2D  #  DevExpress.Xpf.Charts.Diagram!   SeriesDataMember$! Series��6&   "   SeriesTemplate" 53      1	  +DevExpress.Xpf.Charts.BarSideBySideSeries2D	  54      "
  DevExpress.Xpf.Charts.Series# 
  ArgumentDataMember$# 	Arguments��68   $ 
  ValueDataMember$$ Values��6W   56      57      58      59      �� 5;   
   $ 
Horizontal=�5<      $��Right=�5=      $��2��5>      .+�5@      � -   5        % �Name$% pivot_Wrapper��5A      $	��100��5B      $	��100��5C      .+�5D      A� -   5        & A�Name$& PivotBtn��5I      $��90��5E      $��90��5F      $��5q�5G      ' � Cursor$
' Hand��5H      $��Center=�5J      $	��Top=�5K      ���	#FF3D7A11��5L      �� 5M      ( �� EndPoint$( 0.5,1&�6.   ) �� 
StartPoint$) 0.5,0&�6?   .��5N      � * � Color$* Black��6+   + � Offset$+ 0Q�69   � 5O      $* 	#FF71FF88��6+   $+ 0.003Q�6=   � 5P      $* 	#FF79FF5B��6+   $+ 1Q�6=   5Q      5S      �� 5T      -   5        , ��Name$, 
spPivotBtn��5Y      $��Center=�5U      $��Center=�5V      $ Vertical=�5W      $
' Hand��5X      $��0,15,0,0q�5Z      $��90��5[      $��90��5\      .+�5]      �� $0��*/WarehouseApp;component/Resources/olap.png��5^      $
��60px��5_      $
��60px��5`      $��Center=�5a      $��Center=�5b      5d      �� 5e      $��Center=�5f      $��Center=�5g      $��Pivot��5h      $
��Bold"�5i      ���#3D7A115j      5l      5m      � 5o      -   5        $% chartWrapper��5p      $	��100��5q      $	��100��5r      .+�5t      A� -   5        $& ChartBtn��5y      $��90��5u      $��90��5v      $��5q�5w      $
' Hand��5x      $��Center=�5z      $	��Top=�5{      ���	#FF3D7A11��5|      �� 5}      $( 0.5,1&�6.   $) 0.5,0&�6?   .��5~      � $* Black��6+   $+ 0Q�69   � 5      $* 	#FF71FF88��6+   $+ 0.003Q�6=   � 5�      $* 	#FF79FF5B��6+   $+ 1Q�6=   5�      5�      �� 5�      -   5        $, 
spChartBTn��5�      $��Center=�5�      $��Center=�5�      $ Vertical=�5�      $
' Hand��5�      $��0,15,0,0q�5�      $��90��5�      $��90��5�      .+�5�      �� $1��+/WarehouseApp;component/Resources/chart.png��5�      $
��60px��5�      $
��60px��5�      $��Center=�5�      $��Center=�5�      5�      �� 5�      $��Center=�5�      $��Center=�5�      $��Chart��5�      $
��Bold"�5�      ���#3D7A115�      5�      5�      � 5�      -	   5        $% printWrapper��5�      $	��100��5�      $	��100��5�      .+�5�      A� -
   5        $& printBtn��5�      $��90��5�      $��90��5�      $��5q�5�      $
' Hand��5�      $��Center=�5�      $	��Top=�5�      ���	#FF3D7A11��5�      �� 5�      $( 0.5,1&�6.   $) 0.5,0&�6?   .��5�      � $* Black��6+   $+ 0Q�69   � 5�      $* 	#FF71FF88��6+   $+ 0.003Q�6=   � 5�      $* 	#FF79FF5B��6+   $+ 1Q�6=   5�      5�      �� 5�      -   5        $, 
spPrintBtn��5�      $��Center=�5�      $��Center=�5�      $
' Hand��5�      $ Vertical=�5�      $��0,15,0,0q�5�      $��90��5�      $��90��5�      .+�5�      �� $3��-/WarehouseApp;component/Resources/printer.png��5�      $
��60px��5�      $
��60px��5�      $��Center=�5�      $��Center=�5�      5�      �� 5�      $��Center=�5�      $��Center=�5�      $��Print��5�      $
��Bold"�5�      ���#3D7A115�      5�      5�      5�      5�      5�      