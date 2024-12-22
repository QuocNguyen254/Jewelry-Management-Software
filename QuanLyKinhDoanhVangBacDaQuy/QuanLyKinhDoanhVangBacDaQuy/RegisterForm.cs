using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Microsoft.Win32;
using QuanLyKinhDoanhVangBacDaQuy.DAO;

namespace QuanLyKinhDoanhVangBacDaQuy
{
    public partial class RegisterForm : Form
    {
        private Form loginForm;

        public RegisterForm(Form parentForm)
        {
            InitializeComponent();
            loginForm = parentForm;
        }

        private void gotoLogin_Click(object sender, EventArgs e)
        {
            loginForm.Show();
            this.Close();
        }

        private void btnSignUp_Click(object sender, EventArgs e)
        {
            string Username = regUsername.Text.Trim();
            string Password = regPassword.Text.Trim();
            string cPassword = regConfPassword.Text.Trim();
            string TenNV = TenNV_tb.Text.Trim();
            string chucVu = ChucVu_tb.Text.Trim();
            int checkDone;
            if (Username == "" || Password == "" || cPassword == "" || TenNV == "" || chucVu == "")
            {
                MessageBox.Show("Bạn cần nhập đầy đủ thông tin.", "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else if (Password != cPassword)
            {
                MessageBox.Show("Mật khẩu không khớp", "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
            else
            {
                checkDone = AccountDAO.Instance.Register(TenNV, Username, Password, cPassword, chucVu);
                if (checkDone == 1)
                {
                    MessageBox.Show("Tạo tài khoản thành công!", "Information Message", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    loginForm.Show();
                    this.Close();
                }
                else if (checkDone == -1)
                {
                    MessageBox.Show(Username + " đã tồn tại", "Error Message", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                else { }
            }
        }

        private void Exitbutton_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Maxmize_btn_Click(object sender, EventArgs e)
        {
            if (this.WindowState == FormWindowState.Normal)
            {
                this.WindowState = FormWindowState.Maximized;
            }
            else if (this.WindowState == FormWindowState.Maximized)
            {
                this.WindowState = FormWindowState.Normal;
            }
        }

        private void Minimize_btn_Click(object sender, EventArgs e)
        {
            this.WindowState = FormWindowState.Minimized;
        }

        private void Register_ShowPass_CheckedChanged(object sender, EventArgs e)
        {
            regPassword.UseSystemPasswordChar = false;
            regConfPassword.UseSystemPasswordChar = false;
            regPassword.PasswordChar = Register_ShowPass.Checked ? '\0' : '•';
            regConfPassword.PasswordChar = Register_ShowPass.Checked ? '\0' : '•';
        }
    }
}
