using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Dts.Runtime;


namespace WarehouseApp.model
{
    public class ETLModel
    {
        private Package pack;

        public Package Pack
        {
            get
            {
                if (pack == null)
                {
                    pack = new Package();
                }
                return pack;
            }
            set { pack = value; }
        }

        private Application app;

        public Application App
        {
            get
            {
                if (app == null)
                {
                    app = new Application();
                }
                return app;
            }
            set { app = value; }
        }

        private string lokasi;

        public string Lokasi
        {
            get { return lokasi; }
            set { lokasi = value; }
        }
    }
  }