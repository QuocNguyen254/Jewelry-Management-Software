using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using QuanLyKinhDoanhVangBacDaQuy.DAO;

namespace QuanLyKinhDoanhVangBacDaQuy
{
    public partial class FormInventory : Form
    {
        private string month;
        public FormInventory()
        {
            InitializeComponent();
            for (int i = 1; i <= 12; i++)
            {
                comboBox1.Items.Add(i.ToString()); 
            }

            comboBox1.SelectedIndexChanged += comboBox1_SelectedIndexChanged;

        }

        private void FormInventory_Load(object sender, EventArgs e)
        {
            this.ControlBox = false;
        }
        void LoadInventory()
        {
          
            string query = "EXEC Show_Lich_Su_Kho @Thang";

            DataProvider provider = new DataProvider();

            dataGridView1.DataSource = provider.ExecuteQuery(query, new object[] {month});

            dataGridView1.ColumnHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;

            foreach (DataGridViewColumn column in dataGridView1.Columns)
            {
                column.DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter; // Căn giữa ngang
                column.DefaultCellStyle.WrapMode = DataGridViewTriState.False;                 // Không ngắt dòng
            }

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            month = comboBox1.SelectedItem.ToString();
            LoadInventory();


        }
    }
}
