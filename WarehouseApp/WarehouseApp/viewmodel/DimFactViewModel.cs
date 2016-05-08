using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace WarehouseApp.viewmodel
{
    public class DimFactViewModel:BaseBindable
    {
        private DataTable dT;

        public DataTable DT
        {
            get
            {
                if (dT == null)
                {
                    dT = new DataTable();
                }
                return dT;
            }
            set { TryChangeProperty(ref dT, value, "DT"); }
        }
        public kon sql = new kon();
        private string headTabel;

        public string HeadTabel
        {
            get { return headTabel; }
            set { TryChangeProperty(ref headTabel, value, "HeadTabel"); }
        }

        public DimFactViewModel()
        {
            //HeadTabel = Constant.DIM_DIVISI;
            //GenerateTabel(Constant.DIMENSI_DIVISI);
        }
        public void GenerateTabel(string x)
        {
            DT = sql.RequestData(x);
        }

        public void Generateheader(string x)
        {
            HeadTabel = x;
        }
    }
}
