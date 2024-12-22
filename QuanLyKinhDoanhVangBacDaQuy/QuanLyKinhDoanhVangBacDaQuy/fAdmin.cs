using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Data.SqlClient;
using QuanLyKinhDoanhVangBacDaQuy.DAO;

namespace QuanLyKinhDoanhVangBacDaQuy
{
    public partial class fAdmin : Form
    {
        public fAdmin()
        {
            InitializeComponent();

            LoadAccountList();
            //LoadServiceList();
            //LoadProductList();
            //LoadProductCategoryList();
            //LoadProviderList();
            //LoadBillList();

        }

        void LoadAccountList()
        {
            //Tạo câu truy vấn
            //string query = "select MaNhanVien as ID, TenNhanVien as Tên, TaiKhoan, MatKhau from NHANVIEN";
            //string query1 = "EXEC Danh_Sach_Nhan_Vien_Theo_ID @MaNhanVien";

            //dtgvStaff.DataSource = DataProvider.Instance.ExecuteQuery(query1, new object[] { "3" });
        }

        //void LoadServiceList()
        //{
        //    //Tạo câu truy vấn
        //    string query = "select * from LOAIDICHVU";

        //    dtgvService.DataSource = DataProvider.Instance.ExecuteQuery(query);
        //}

        //void LoadProductList()
        //{
        //    //Tạo câu truy vấn
        //    string query = "select * from SANPHAM";

        //    dtgvProduct.DataSource = DataProvider.Instance.ExecuteQuery(query);
        //}

        //void LoadProductCategoryList()
        //{
        //    //Tạo câu truy vấn
        //    string query = "select * from LOAISANPHAM";

        //    dtgvProductCategory.DataSource = DataProvider.Instance.ExecuteQuery(query);
        //}

        //void LoadProviderList()
        //{
        //    //Tạo câu truy vấn
        //    string query = "select * from NHACUNGCAP";

        //    dtgvProvider.DataSource = DataProvider.Instance.ExecuteQuery(query);
        //}

        //void LoadBillList()
        //{
        //    //Tạo câu truy vấn
        //    string query = "select * from LICHSUKHO";

        //    dtgvBill.DataSource = DataProvider.Instance.ExecuteQuery(query);
        //}


        private void fAdmin_Load(object sender, EventArgs e)
        {
            this.ControlBox = false;
        }

        private void btnAddStaff_1_Click(object sender, EventArgs e)
        {

        }
    }
}
