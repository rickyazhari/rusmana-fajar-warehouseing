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
using System.Windows.Shapes;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows.Threading;
using System.Threading.Tasks;
using System.ComponentModel;

namespace WarehouseApp.view
{
    /// <summary>
    /// Interaction logic for etl.xaml
    /// </summary>
    public partial class etl : Window
    {
        public etl()
        {
            InitializeComponent();
            DataContext = App.ETLViewModel;
        }

        private void ETLBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            DTSExecResult x = new DTSExecResult();
            etl_Wrapper.Dispatcher.BeginInvoke(new Action(() => etl_Wrapper.Visibility = System.Windows.Visibility.Collapsed));
            pbLoading.Dispatcher.BeginInvoke(new Action(() => pbLoading.Visibility = System.Windows.Visibility.Visible));
            etlLbl.Dispatcher.BeginInvoke(new Action(() => etlLbl.Text = Constant.ETL_PROCESS));
            var bw = new BackgroundWorker();
            App.ETLViewModel.Loading = true;
            bw.DoWork += (Sender, args) =>
            {
                x = App.ETLViewModel.load_etl();
            };
            bw.RunWorkerCompleted += (Sender, args) =>
            {
                App.ETLViewModel.Loading = false;
                if (x == DTSExecResult.Success)
                {
                    var cont = new main();
                    cont.Show();
                    this.Close();
                    //MessageBox.Show(x.ToString());
                }
                else
                {
                    string err = string.Empty;
                    foreach (var p in App.ETLViewModel.Etl.Pack.Errors)
                    {
                        err += p.Description.ToString();
                    }
                    MessageBox.Show(err);
                    MessageBox.Show("Terjadi kesalahan pada sistem. proses ekseskusi data dibatalkan. silahkan di coba lagi", "General Error", MessageBoxButton.OK);
                    ETLBtn.Dispatcher.BeginInvoke(new Action(() => ETLBtn.Visibility = System.Windows.Visibility.Visible));
                    pbLoading.Dispatcher.BeginInvoke(new Action(() => pbLoading.Visibility = System.Windows.Visibility.Hidden));
                    etlLbl.Dispatcher.BeginInvoke(new Action(() => etlLbl.Text = Constant.ETL_INIT));
                }
            };
            bw.RunWorkerAsync();
        }

        private void StackPanel_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            ETLBtn_MouseLeftButtonUp(sender, e);
        }

        private void exitbtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

    }
}
