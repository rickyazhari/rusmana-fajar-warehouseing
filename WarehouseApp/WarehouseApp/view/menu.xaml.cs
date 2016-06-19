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
    /// Interaction logic for menu.xaml
    /// </summary>
    public partial class menu : UserControl
    {
        private main parent;
        public menu( main x)
        {
            InitializeComponent();
            parent = x;
            DataContext = App.menuViewModel;
        }

        private void ListMenu_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (App.menuViewModel.SelectedItem == Constant.DIMENSI_SELECTED)
            {
                switch (ListMenu.SelectedIndex)
                {
                    case 1 :
                        App.dimFactViewModel.HeadTabel = Constant.DIM_CLIENT;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_CLIENT);
                        break;

                    case 2:
                        App.dimFactViewModel.HeadTabel = Constant.DIM_PEGAWAI;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_PEGAWAI);
                        break;

                    case 3:
                        App.dimFactViewModel.HeadTabel = Constant.DIM_PENGELUARAN;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_PENGELUARAN);
                        break;

                    case 4 :
                        App.dimFactViewModel.HeadTabel = Constant.DIM_SUB_BIDANG;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_SUB_BIDANG);
                        break;

                    case 5 :
                        App.dimFactViewModel.HeadTabel = Constant.DIM_WAKTU;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_WAKTU);
                        break;

                    case 6 :
                        App.dimFactViewModel.HeadTabel = Constant.DIM_Wilayah;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_WILAYAH);
                        break;

                    default :
                        App.dimFactViewModel.HeadTabel = Constant.DIM_BIDANG;
                        App.dimFactViewModel.GenerateTabel(Constant.DIMENSI_BIDANG);
                        break;
                }
            }
            else if (App.menuViewModel.SelectedItem == Constant.FAKTA_SELECTED)
            {
                switch (ListMenu.SelectedIndex)
                {
                    case 1:
                        App.dimFactViewModel.Generateheader(Constant.PREFIX_FAKTA +" "+ Constant.LOKASI_PROJEK);
                        App.dimFactViewModel.GenerateTabel(Constant.FAKTA_LOKASI_PROJEK);
                        break;

                    case 2 :
                        App.dimFactViewModel.Generateheader(Constant.PREFIX_FAKTA +" "+ Constant.PENDAPATAN_PROJEK);
                        App.dimFactViewModel.GenerateTabel(Constant.FAKTA_PENDAPATAN_PROJEK);
                        break;

                    case 3 :
                        App.dimFactViewModel.Generateheader(Constant.PREFIX_FAKTA +" "+ Constant.PENGELUARAN_NON_PROJEK);
                        App.dimFactViewModel.GenerateTabel(Constant.FAKTA_PENGELUARAN_NON_PROJEK);
                        break;

                    case 4 :
                        App.dimFactViewModel.Generateheader(Constant.PREFIX_FAKTA +" "+ Constant.PENGELUARAN_PROJEK);
                        App.dimFactViewModel.GenerateTabel(Constant.FAKTA_PENGELUARAN_PROJEK);
                        break;

                    default :
                        App.dimFactViewModel.Generateheader(Constant.PREFIX_FAKTA +" "+ Constant.HANDLE_PROJEK);
                        App.dimFactViewModel.GenerateTabel(Constant.FAKTA_HANDLE_PROJEK);
                        break;
                }
            }
            else if (App.menuViewModel.SelectedItem == Constant.OLAP_SELECTED)
            {
                parent.Content.Children.Clear();
                switch (ListMenu.SelectedIndex)
                {
                    case 1 :
                        parent.Content.Children.Add(new OLAP.LokasiProjek());
                        break;
                    case 2 :
                        parent.Content.Children.Add(new OLAP.PendapatanProjek());
                        break;
                    case 3 :
                        parent.Content.Children.Add(new OLAP.PengeluaranNonProjek());
                        break;
                    case 4 :
                        parent.Content.Children.Add(new OLAP.PengeluaranProjek());
                        break;
                    default :
                        parent.Content.Children.Add(new OLAP.HandleProjek());
                        break;

                }
            }
        }
    }
}
