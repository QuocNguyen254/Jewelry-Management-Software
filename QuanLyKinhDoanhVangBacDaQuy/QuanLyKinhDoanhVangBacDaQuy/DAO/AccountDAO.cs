using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Identity.Client;

namespace QuanLyKinhDoanhVangBacDaQuy.DAO
{
    public class AccountDAO
    {
        private static AccountDAO instance = null;

        public static AccountDAO Instance
        {
            get 
            { 
                if (instance == null) instance = new AccountDAO(); 
                return instance; 
            }
            private set { instance = value; }
        }

        private AccountDAO() { }

        public bool Login(string userName, string passWord)
        {
            string query = "USP_Login @TaiKhoan , @MatKhau";

            DataTable result = DataProvider.Instance.ExecuteQuery(query, new object[] { userName, passWord });
            
            return result.Rows.Count > 0;
        }

        public int Register(string tenNhanVien, string Username, string Password, string cPassword, string chucVu)
        { 
            string query = "INSERT INTO NHANVIEN (TenNhanVien, TaiKhoan, MatKhau, ChucVu)" +
                " VALUES (@TenNhanVien, @TaiKhoan, @MatKhau, @ChucVu)";

            int result = DataProvider.Instance.InsertData(query, tenNhanVien, Username, Password, cPassword, chucVu);
            return result;
        }
    }
}
