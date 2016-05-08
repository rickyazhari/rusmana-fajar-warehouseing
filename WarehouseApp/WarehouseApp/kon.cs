using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace WarehouseApp
{
    public class kon
    {
        private SqlCommand com = null;
        private string konf = "Data Source=LENOVO-PC;Initial Catalog=blantickindo_warehouse;Integrated Security=True";
        private SqlConnection koneksi = null;
        

        private void open_kon()
        {
            koneksi = new SqlConnection(konf);
            koneksi.Open();
        }

        private void close_kon(){
           koneksi.Close();
           koneksi=null;
        }

       public DataTable tampil_data(string x)
        {
            DataTable dt = new DataTable();
            try
            {
                
                open_kon();
                com = new SqlCommand();
                com.Connection = koneksi;
                com.CommandType = CommandType.Text;
                com.CommandText = x;
                SqlDataReader mdr = com.ExecuteReader();
                dt.Load(mdr);
                close_kon();
               
            }
            catch (SqlException ex)
            {
                System.Windows.MessageBox.Show(ex.ToString());
            }
            com = null;
            return dt;
       }
        public DataTable RequestData(string tabel)
       {
           DataTable data = new DataTable();
           string sql = "select * from "+tabel;
           data = tampil_data(sql);
           return data;
       }
    }
}
