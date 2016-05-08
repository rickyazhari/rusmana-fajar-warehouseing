using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace WarehouseApp.model
{
    public class DimensiFakta
    {
        private DataTable dt;
        private string headerTabel;
        public DataTable DT
        {
            get
            {
                if (dt == null)
                {
                    dt = new DataTable();
                }
                return dt;
            }
            set { dt = value; }
        }

        public string HeaderTabel
        {
            get
            {
                return headerTabel;
            }
            set
            {
                headerTabel = value;
            }
        }
    }
}
