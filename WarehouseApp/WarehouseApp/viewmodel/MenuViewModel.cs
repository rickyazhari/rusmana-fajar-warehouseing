using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using WarehouseApp.model;

namespace WarehouseApp.viewmodel
{
    public class MenuViewModel : BaseBindable
    {
        private string selectedItem = string.Empty;

        public string SelectedItem
        {
            get { return selectedItem; }
            set { selectedItem = value; }
        }

        private ObservableCollection<MenuModel> menu;

        public ObservableCollection<MenuModel> Menu
        {
            get
            {
                if (menu == null)
                {
                    menu = new ObservableCollection<MenuModel>();
                }
                return menu;
            }
            set { TryChangeProperty(ref menu, value, "Menu"); }
        }

        public MenuViewModel()
        {
            SetOlap();
        }

        public void SetDimensiMenu()
        {
            Menu.Clear();
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_BIDANG });
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_CLIENT });
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_PEGAWAI });
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_PENGELUARAN });
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_SUB_BIDANG});
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_WAKTU });
            Menu.Add(new MenuModel() { NamaMenu = Constant.DIM_Wilayah });
        }

        public void SetFactMenu()
        {
            Menu.Clear();
            Menu.Add(new MenuModel() { NamaMenu = Constant.PREFIX_FAKTA + " " + Constant.HANDLE_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PREFIX_FAKTA + " " + Constant.LOKASI_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PREFIX_FAKTA + " " + Constant.PENDAPATAN_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PREFIX_FAKTA + " " + Constant.PENGELUARAN_NON_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PREFIX_FAKTA + " " + Constant.PENGELUARAN_PROJEK });
        }

        public void SetOlap()
        {
            Menu.Clear();
            Menu.Add(new MenuModel() { NamaMenu = Constant.HANDLE_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.LOKASI_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PENDAPATAN_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PENGELUARAN_NON_PROJEK });
            Menu.Add(new MenuModel() { NamaMenu = Constant.PENGELUARAN_PROJEK });
        }

    }
}
