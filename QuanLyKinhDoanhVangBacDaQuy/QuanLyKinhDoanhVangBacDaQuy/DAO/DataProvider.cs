using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.Data.SqlClient;

namespace QuanLyKinhDoanhVangBacDaQuy.DAO
{
    public class DataProvider
    {
        private static DataProvider instance = null; //Singleton
        private static object locker = new object(); //Giới hạn access cho người đang sử dụng
        //Tạo kết nối từ client tới server
        private string connectionSTR = "Data Source=MSI;Initial Catalog=QuanLyKinhDoanhVangBacDaQuy;Integrated Security=True;Encrypt=False;Trust Server Certificate=True";

        public static DataProvider Instance 
        { 
            get
            {
                lock (locker) 
                {
                    if (instance == null)
                        instance = new DataProvider();
                    return instance;
                }
                
            }
            private set { instance = value; }
        }

        public DataProvider() { }
        public DataTable ExecuteQuery (string query, object[] parameter = null)
        {
            //Tạo bảng để truyền dữ liệu
            DataTable data = new DataTable();

            using (SqlConnection connection = new SqlConnection(connectionSTR)) //tự giải phóng dữ liệu khai báo
            {
                //Mở connection
                connection.Open();
                //Thực thi lệnh query trên connection
                SqlCommand command = new SqlCommand(query, connection);

                if (parameter != null)
                {
                    string[] listPara = query.Split(' ');
                    int i = 0;
                    foreach (string id in listPara)
                    {
                        if (id.Contains("@"))
                        {
                            command.Parameters.AddWithValue(id, parameter[i]);
                            i++;
                        }
                    }
                }
                //Lấy dữ liệu từ câu truy vấn
                SqlDataAdapter adapter = new SqlDataAdapter(command);

                adapter.Fill(data);

                connection.Close();
            }    
            return data;
        } // trả ra dòng kết quả 

        //public int ExecuteNonQuery(string query, object[] parameter = null) //trả về số dòng được insert delete update
        //{
        //    int dataDone = 0;
        //    using (SqlConnection connection = new SqlConnection(connectionSTR)) //tự giải phóng dữ liệu khai báo
        //    {
        //        //Mở connection
        //        connection.Open();
        //        //Thực thi lệnh query trên connection
        //        SqlCommand command = new SqlCommand(query, connection);

        //        if (parameter != null)
        //        {
        //            string[] listPara = query.Split(' ');
        //            int i = 0;
        //            foreach (string id in listPara)
        //            {
        //                if (id.Contains("@"))
        //                {
        //                    command.Parameters.AddWithValue(id, parameter[i]);
        //                    i++;
        //                }
        //            }
        //        }
        //        dataDone = command.ExecuteNonQuery();

        //        connection.Close();
        //    }
        //    return dataDone;
        //}

        public int InsertData(string query, string TenNV, string Username, string Password, string cPassword, string chucVu)
        {
            int done = 0;
            using (SqlConnection connection = new SqlConnection(connectionSTR)) //tự giải phóng dữ liệu khai báo
            {
                connection.Open();
                //Thực thi lệnh query trên connection
                //Kiem tra username trung
                string checkUsername = "SELECT * FROM NHANVIEN WHERE TaiKhoan = @TaiKhoan";

                using (SqlCommand cmd = new SqlCommand(checkUsername, connection)) 
                {
                    cmd.Parameters.AddWithValue("@TaiKhoan", Username);

                    //Lấy dữ liệu từ câu truy vấn truyen vao bang
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable table = new DataTable();
                    adapter.Fill(table);
                    if (table.Rows.Count > 0)
                    {
                        done = -1;
                    }
                    else
                    {
                        using (SqlCommand insert = new SqlCommand(query, connection))
                        {
                            insert.Parameters.AddWithValue("@TenNhanVien", TenNV);
                            insert.Parameters.AddWithValue("@TaiKhoan", Username);
                            insert.Parameters.AddWithValue("@MatKhau", Password);
                            insert.Parameters.AddWithValue("@ChucVu", chucVu);

                            insert.ExecuteNonQuery(); //Trả về số dòng bị ảnh hưởng (insert, delete, update)
                            done = 1;
                        }
                    }
                    connection.Close();
                }
                return done;
            }
        }
        //public object ExecuteScalar(string query, object[] parameter = null) //trả về cột đầu tiên của các dòng
        //{
        //    object data = 0;
        //    using (SqlConnection connection = new SqlConnection(connectionSTR)) //tự giải phóng dữ liệu khai báo
        //    {
        //        //Mở connection
        //        connection.Open();
        //        //Thực thi lệnh query trên connection
        //        SqlCommand command = new SqlCommand(query, connection);

        //        if (parameter != null)
        //        {
        //            string[] listPara = query.Split(' ');
        //            int i = 0;
        //            foreach (string id in listPara)
        //            {
        //                if (id.Contains("@"))
        //                {
        //                    command.Parameters.AddWithValue(id, parameter[i]);
        //                    i++;
        //                }
        //            }
        //        }
        //        data = command.ExecuteScalar();

        //        connection.Close();
        //    }
        //    return data;
        //}
    }
}
