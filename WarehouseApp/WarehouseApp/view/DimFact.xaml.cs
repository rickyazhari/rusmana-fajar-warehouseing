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

namespace WarehouseApp.view
{
    /// <summary>
    /// Interaction logic for DimFact.xaml
    /// </summary>
    public partial class DimFact : UserControl
    {
         kon sql = new kon();
        public DimFact()
        {
            InitializeComponent();
            DataContext = App.dimFactViewModel;
            if (App.menuViewModel.SelectedItem == Constant.DIMENSI_SELECTED)
            {
                App.dimFactViewModel.DT = sql.RequestData(Constant.DIMENSI_BIDANG);
                App.dimFactViewModel.HeadTabel = Constant.DIM_BIDANG;
            }
            else if (App.menuViewModel.SelectedItem == Constant.FAKTA_SELECTED)
            {
                App.dimFactViewModel.HeadTabel = Constant.PREFIX_FAKTA + " " + Constant.HANDLE_PROJEK;
                App.dimFactViewModel.DT = sql.RequestData(Constant.FAKTA_HANDLE_PROJEK);
            }
        }
    }
}
