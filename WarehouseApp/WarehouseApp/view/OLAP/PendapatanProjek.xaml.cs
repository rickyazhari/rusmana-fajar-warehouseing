using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace WarehouseApp.view.OLAP
{
    /// <summary>
    /// Interaction logic for PendapatanProjek.xaml
    /// </summary>
    public partial class PendapatanProjek : UserControl
    {
        private String vis = "pivot";
        public PendapatanProjek()
        {
            InitializeComponent();
        }

        private void printBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            var parent = Window.GetWindow(this);
            pivotGridControl.ShowPrintPreviewDialog(parent, "Laporan Pendapatan Projek", "Laporan Pendapatan Projek");
        }

        private void ChartBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (vis.Equals("pivot"))
            {
                pivotGridControl.Visibility = Visibility.Collapsed;
                chartControl.Visibility = Visibility.Visible;
                vis = "chart";
            }
        }

        private void PivotBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (vis.Equals("chart"))
            {
                chartControl.Visibility = Visibility.Collapsed;
                pivotGridControl.Visibility = Visibility.Visible;
                vis = "pivot";
            }
        }

        private void spPrintBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            printBtn_MouseLeftButtonUp(sender, e);
        }

        private void spChartBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            ChartBtn_MouseLeftButtonUp(sender, e);
        }

        private void spPivotBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            PivotBtn_MouseLeftButtonUp(sender, e);
        }
    }
}
