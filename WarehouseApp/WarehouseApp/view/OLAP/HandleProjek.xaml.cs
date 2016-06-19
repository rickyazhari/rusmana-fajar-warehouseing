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
    /// Interaction logic for HandleProjek.xaml
    /// </summary>
    public partial class HandleProjek : UserControl
    {
        private String vis = "pivot";
        public HandleProjek()
        {
            InitializeComponent();
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

        private void ChartBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (vis.Equals("pivot"))
            {
                pivotGridControl.Visibility = Visibility.Collapsed;
                chartControl.Visibility = Visibility.Visible;
                vis = "chart";
            }
        }

        private void printBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            var parent = Window.GetWindow(this);
            pivotGridControl.ShowPrintPreviewDialog(parent, "Laporan Handle Projek", "Laporan Handle Projek");
        }


    }
}
