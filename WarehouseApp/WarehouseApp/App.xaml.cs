using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Threading.Tasks;
using System.Windows;
using WarehouseApp.viewmodel;

namespace WarehouseApp
{
    /// <summary>
    /// Interaction logic for App.xaml
    /// </summary>
    public partial class App : Application
    {
        private static etlViewModel _ETLViewModel;

        public static etlViewModel ETLViewModel
        {
            get
            {
                if (_ETLViewModel == null)
                {
                    _ETLViewModel = new etlViewModel();
                }
                return _ETLViewModel;
            }
            set
            {
                _ETLViewModel = value;
            }
        }

        private static MenuViewModel _MenuViewModel;

        public static MenuViewModel menuViewModel
        {
            get
            {
                if (_MenuViewModel == null)
                {
                    _MenuViewModel = new MenuViewModel();
                }
                return _MenuViewModel;
            }
            set
            {
                _MenuViewModel = value;
            }
        }

        private static DimFactViewModel _dimFactViewModel;

        public static DimFactViewModel dimFactViewModel
        {
            get
            {
                if (_dimFactViewModel == null)
                {
                    _dimFactViewModel = new DimFactViewModel();
                }
                return _dimFactViewModel;
            }
            set
            {
                _dimFactViewModel = value;
            }
        }

        private void OnAppStartup_UpdateThemeName(object sender, StartupEventArgs e)
        {

            DevExpress.Xpf.Core.ApplicationThemeHelper.UpdateApplicationThemeName();
        }

    }
}
