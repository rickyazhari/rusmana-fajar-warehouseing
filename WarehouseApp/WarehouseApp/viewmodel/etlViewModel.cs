using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WarehouseApp.model;
using Microsoft.SqlServer.Dts.Runtime;
using System.Windows;

namespace WarehouseApp.viewmodel
{
    public class etlViewModel:BaseBindable
    {
        private Boolean loading;

        private ETLModel etl;

        public ETLModel Etl
        {
            get
            {
                if (etl == null)
                {
                    etl = new ETLModel();
                }
                return etl;
            }
            set { etl = value; }
        }


        public etlViewModel()
        {

        }

        private Package run_etl(Package x, string y, Microsoft.SqlServer.Dts.Runtime.Application z)
        {
            x = z.LoadPackage(@y, null);
            return x;
        }

        public Microsoft.SqlServer.Dts.Runtime.DTSExecResult load_etl()
        {
            Microsoft.SqlServer.Dts.Runtime.DTSExecResult x = new DTSExecResult(); ;
            Etl.Lokasi = Environment.CurrentDirectory.ToString() + "\\Resources\\Package.dtsx";
            try
             {
                Etl.Pack = run_etl(Etl.Pack, Etl.Lokasi, Etl.App);
                 x = Etl.Pack.Execute();
             }
             catch (Exception ex)
             {
                MessageBox.Show("Terjadi kesalahan pada sistem dalam membaca paket, eksekusi dibatalkan", "General Error", MessageBoxButton.OK);
               
             }
            return x;
        }
    }
}
