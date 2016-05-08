using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WarehouseApp
{
    public class Constant
    {
        public const string ETL_SUKSES = "success";
        public const string ETL_FAILURE = "failure";

        public const string OLAP_SELECTED = "olap";
        public const string FAKTA_SELECTED = "fakta";
        public const string DIMENSI_SELECTED = "dimensi";

        public const string DIMENSI_BIDANG = "dim_bidang";
        public const string DIMENSI_CLIENT = "dim_client";
        public const string DIMENSI_PEGAWAI = "dim_pegawai";
        public const string DIMENSI_PENGELUARAN = "dim_pengeluaran";
        public const string DIMENSI_SUB_BIDANG = "dim_sub_bidang";
        public const string DIMENSI_WAKTU = "dim_waktu";
        public const string DIMENSI_WILAYAH = "dim_wilayah";

        public const string FAKTA_HANDLE_PROJEK = "fact_handle_projek";
        public const string FAKTA_LOKASI_PROJEK = "fact_lokasi_projek";
        public const string FAKTA_PENDAPATAN_PROJEK = "fact_pendapatan_projek";
        public const string FAKTA_PENGELUARAN_NON_PROJEK = "fact_pengeluaran_nonprojek";
        public const string FAKTA_PENGELUARAN_PROJEK = "fact_pengeluaran_projek";

        public const string DIM_BIDANG = "Dimensi Bidang";
        public const string DIM_CLIENT = "Dimensi Client";
        public const string DIM_PEGAWAI = "Dimensi Pegawai";
        public const string DIM_PENGELUARAN = "Dimensi Pengeluaran";
        public const string DIM_SUB_BIDANG = "Dimensi Sub Bidang";
        public const string DIM_WAKTU = "Dimensi Waktu";
        public const string DIM_Wilayah = "Dimensi Wilayah";

        public const string HANDLE_PROJEK = "Handle Projek";
        public const string LOKASI_PROJEK = "Lokasi Projek";
        public const string PENDAPATAN_PROJEK = "Pendapatan Projek";
        public const string PENGELUARAN_NON_PROJEK = "Pengeluaran Non Projek";
        public const string PENGELUARAN_PROJEK = "Pengeluaran Projek";

        public const string PREFIX_FAKTA = "Fakta";

        public const string ETL_INIT = "Silahkan, tekan tombol Proses, untuk melakukan proses ETL";
        public const string ETL_PROCESS="Memproses ETL, Silahkan tunggu";
    }
}
