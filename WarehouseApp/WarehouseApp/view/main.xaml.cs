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
using WarehouseApp.view.OLAP;
namespace WarehouseApp.view
{
    /// <summary>
    /// Interaction logic for main.xaml
    /// </summary>
    public partial class main : Window
    {
        public main()
        {
            InitializeComponent();
            submenu.Children.Add(new menu(this));
            //Content.Children.Add(new olap());
            App.menuViewModel.SelectedItem = Constant.OLAP_SELECTED;
            Content.Children.Clear();
            Content.Children.Add(new HandleProjek());
        }

        private void exitbtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        private void LaporanBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (App.menuViewModel.SelectedItem != Constant.OLAP_SELECTED)
            {
                App.menuViewModel.SetOlap();
                App.menuViewModel.SelectedItem = Constant.OLAP_SELECTED;
                Content.Children.Clear();
                Content.Children.Add(new HandleProjek());
            }

            App.menuViewModel.SetOlap();
            App.menuViewModel.SelectedItem = Constant.OLAP_SELECTED;
        }

        private void FactBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (App.menuViewModel.SelectedItem != Constant.FAKTA_SELECTED)
            {
                App.menuViewModel.SetFactMenu();
                App.menuViewModel.SelectedItem = Constant.FAKTA_SELECTED;
            }
            Content.Children.Clear();
            Content.Children.Add(new DimFact());
        }

        private void dimBtn_MouseLeftButtonUp(object sender, MouseButtonEventArgs e)
        {
            if (App.menuViewModel.SelectedItem != Constant.DIMENSI_SELECTED)
            {
                App.menuViewModel.SetDimensiMenu();
                App.menuViewModel.SelectedItem = Constant.DIMENSI_SELECTED;
            }
            Content.Children.Clear();
            Content.Children.Add(new DimFact());
        }
    }
}
