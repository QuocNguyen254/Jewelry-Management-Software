﻿namespace QuanLyKinhDoanhVangBacDaQuy
{
    partial class LoginForm
    {
        /// <summary>
        ///  Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        ///  Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        ///  Required method for Designer support - do not modify
        ///  the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(LoginForm));
            panel1 = new Panel();
            Login_ShowPass = new CheckBox();
            userBoxLog = new PictureBox();
            gotoRegister = new Label();
            label2 = new Label();
            Loginlabel = new Label();
            btnLogin = new Button();
            panel3 = new Panel();
            txbPassWord = new TextBox();
            labelMatKhau = new Label();
            panel2 = new Panel();
            txbUserName = new TextBox();
            labelTaiKhoan = new Label();
            panel7 = new Panel();
            Maxmize_btn = new Button();
            Minimize_btn = new Button();
            Exitbutton = new Button();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)userBoxLog).BeginInit();
            panel3.SuspendLayout();
            panel2.SuspendLayout();
            panel7.SuspendLayout();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = Color.White;
            panel1.Controls.Add(Login_ShowPass);
            panel1.Controls.Add(userBoxLog);
            panel1.Controls.Add(gotoRegister);
            panel1.Controls.Add(label2);
            panel1.Controls.Add(Loginlabel);
            panel1.Controls.Add(btnLogin);
            panel1.Controls.Add(panel3);
            panel1.Controls.Add(panel2);
            panel1.Location = new Point(12, 50);
            panel1.Margin = new Padding(2);
            panel1.Name = "panel1";
            panel1.Size = new Size(850, 562);
            panel1.TabIndex = 0;
            // 
            // Login_ShowPass
            // 
            Login_ShowPass.AutoSize = true;
            Login_ShowPass.Font = new Font("Microsoft Sans Serif", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            Login_ShowPass.Location = new Point(440, 359);
            Login_ShowPass.Margin = new Padding(4, 4, 4, 4);
            Login_ShowPass.Name = "Login_ShowPass";
            Login_ShowPass.Size = new Size(151, 26);
            Login_ShowPass.TabIndex = 6;
            Login_ShowPass.Text = "Hiện mật khẩu";
            Login_ShowPass.UseVisualStyleBackColor = true;
            Login_ShowPass.CheckedChanged += Login_ShowPass_CheckedChanged;
            // 
            // userBoxLog
            // 
            userBoxLog.Image = Properties.Resources.user1;
            userBoxLog.Location = new Point(369, 32);
            userBoxLog.Margin = new Padding(4, 4, 4, 4);
            userBoxLog.Name = "userBoxLog";
            userBoxLog.Size = new Size(129, 125);
            userBoxLog.TabIndex = 5;
            userBoxLog.TabStop = false;
            // 
            // gotoRegister
            // 
            gotoRegister.AutoSize = true;
            gotoRegister.Cursor = Cursors.Hand;
            gotoRegister.Font = new Font("Microsoft Sans Serif", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            gotoRegister.ForeColor = Color.SlateBlue;
            gotoRegister.Location = new Point(486, 469);
            gotoRegister.Margin = new Padding(4, 0, 4, 0);
            gotoRegister.Name = "gotoRegister";
            gotoRegister.Size = new Size(76, 22);
            gotoRegister.TabIndex = 4;
            gotoRegister.Text = "Đăng ký";
            gotoRegister.Click += gotoRegister_Click;
            // 
            // label2
            // 
            label2.AutoSize = true;
            label2.Font = new Font("Microsoft Sans Serif", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            label2.Location = new Point(292, 469);
            label2.Margin = new Padding(4, 0, 4, 0);
            label2.Name = "label2";
            label2.Size = new Size(165, 22);
            label2.TabIndex = 3;
            label2.Text = "Chưa có tài khoản?";
            // 
            // Loginlabel
            // 
            Loginlabel.BackColor = Color.White;
            Loginlabel.Font = new Font("Microsoft Sans Serif", 13.8F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Loginlabel.Location = new Point(329, 159);
            Loginlabel.Margin = new Padding(4, 0, 4, 0);
            Loginlabel.Name = "Loginlabel";
            Loginlabel.Size = new Size(210, 58);
            Loginlabel.TabIndex = 1;
            Loginlabel.Text = "Đăng nhập";
            Loginlabel.TextAlign = ContentAlignment.MiddleCenter;
            Loginlabel.UseCompatibleTextRendering = true;
            // 
            // btnLogin
            // 
            btnLogin.BackColor = Color.FromArgb(107, 0, 128);
            btnLogin.Cursor = Cursors.Hand;
            btnLogin.FlatStyle = FlatStyle.Flat;
            btnLogin.Font = new Font("Microsoft Sans Serif", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            btnLogin.ForeColor = Color.White;
            btnLogin.Location = new Point(284, 408);
            btnLogin.Margin = new Padding(2);
            btnLogin.Name = "btnLogin";
            btnLogin.Size = new Size(300, 55);
            btnLogin.TabIndex = 2;
            btnLogin.Text = "Đăng nhập";
            btnLogin.UseVisualStyleBackColor = false;
            btnLogin.Click += btnLogin_Click;
            // 
            // panel3
            // 
            panel3.Controls.Add(txbPassWord);
            panel3.Controls.Add(labelMatKhau);
            panel3.Location = new Point(98, 292);
            panel3.Margin = new Padding(2);
            panel3.Name = "panel3";
            panel3.Size = new Size(620, 69);
            panel3.TabIndex = 1;
            // 
            // txbPassWord
            // 
            txbPassWord.Cursor = Cursors.IBeam;
            txbPassWord.ForeColor = SystemColors.WindowText;
            txbPassWord.Location = new Point(176, 18);
            txbPassWord.Margin = new Padding(2);
            txbPassWord.Name = "txbPassWord";
            txbPassWord.PasswordChar = '•';
            txbPassWord.Size = new Size(344, 31);
            txbPassWord.TabIndex = 1;
            // 
            // labelMatKhau
            // 
            labelMatKhau.AutoSize = true;
            labelMatKhau.Font = new Font("Microsoft Sans Serif", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            labelMatKhau.Location = new Point(69, 19);
            labelMatKhau.Margin = new Padding(2, 0, 2, 0);
            labelMatKhau.Name = "labelMatKhau";
            labelMatKhau.Size = new Size(83, 22);
            labelMatKhau.TabIndex = 0;
            labelMatKhau.Text = "Mật khẩu";
            // 
            // panel2
            // 
            panel2.Controls.Add(txbUserName);
            panel2.Controls.Add(labelTaiKhoan);
            panel2.Location = new Point(98, 214);
            panel2.Margin = new Padding(2);
            panel2.Name = "panel2";
            panel2.Size = new Size(620, 75);
            panel2.TabIndex = 0;
            // 
            // txbUserName
            // 
            txbUserName.BackColor = SystemColors.Window;
            txbUserName.Cursor = Cursors.IBeam;
            txbUserName.Location = new Point(176, 25);
            txbUserName.Margin = new Padding(2);
            txbUserName.Name = "txbUserName";
            txbUserName.Size = new Size(344, 31);
            txbUserName.TabIndex = 0;
            txbUserName.TextChanged += txbUserName_TextChanged;
            // 
            // labelTaiKhoan
            // 
            labelTaiKhoan.AutoSize = true;
            labelTaiKhoan.Font = new Font("Microsoft Sans Serif", 9F, FontStyle.Regular, GraphicsUnit.Point, 0);
            labelTaiKhoan.Location = new Point(64, 25);
            labelTaiKhoan.Margin = new Padding(2, 0, 2, 0);
            labelTaiKhoan.Name = "labelTaiKhoan";
            labelTaiKhoan.Size = new Size(90, 22);
            labelTaiKhoan.TabIndex = 0;
            labelTaiKhoan.Text = "Tài khoản";
            // 
            // panel7
            // 
            panel7.BackColor = Color.Lavender;
            panel7.BorderStyle = BorderStyle.FixedSingle;
            panel7.Controls.Add(Maxmize_btn);
            panel7.Controls.Add(Minimize_btn);
            panel7.Controls.Add(Exitbutton);
            panel7.Dock = DockStyle.Top;
            panel7.Location = new Point(0, 0);
            panel7.Margin = new Padding(4, 4, 4, 4);
            panel7.Name = "panel7";
            panel7.Size = new Size(875, 37);
            panel7.TabIndex = 9;
            // 
            // Maxmize_btn
            // 
            Maxmize_btn.BackColor = Color.FromArgb(173, 188, 223);
            Maxmize_btn.FlatAppearance.BorderColor = Color.Lavender;
            Maxmize_btn.FlatAppearance.BorderSize = 0;
            Maxmize_btn.FlatStyle = FlatStyle.Flat;
            Maxmize_btn.Font = new Font("Microsoft Sans Serif", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Maxmize_btn.ForeColor = SystemColors.ButtonHighlight;
            Maxmize_btn.Image = (Image)resources.GetObject("Maxmize_btn.Image");
            Maxmize_btn.Location = new Point(784, 0);
            Maxmize_btn.Margin = new Padding(4, 4, 4, 4);
            Maxmize_btn.Name = "Maxmize_btn";
            Maxmize_btn.Size = new Size(44, 38);
            Maxmize_btn.TabIndex = 8;
            Maxmize_btn.TabStop = false;
            Maxmize_btn.UseVisualStyleBackColor = false;
            Maxmize_btn.Click += Maxmize_btn_Click;
            // 
            // Minimize_btn
            // 
            Minimize_btn.BackColor = Color.FromArgb(173, 188, 223);
            Minimize_btn.FlatAppearance.BorderColor = Color.Lavender;
            Minimize_btn.FlatAppearance.BorderSize = 0;
            Minimize_btn.FlatStyle = FlatStyle.Flat;
            Minimize_btn.Font = new Font("Microsoft Sans Serif", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Minimize_btn.ForeColor = SystemColors.ButtonHighlight;
            Minimize_btn.Image = (Image)resources.GetObject("Minimize_btn.Image");
            Minimize_btn.Location = new Point(739, -1);
            Minimize_btn.Margin = new Padding(4, 4, 4, 4);
            Minimize_btn.Name = "Minimize_btn";
            Minimize_btn.Size = new Size(44, 38);
            Minimize_btn.TabIndex = 7;
            Minimize_btn.TabStop = false;
            Minimize_btn.UseVisualStyleBackColor = false;
            Minimize_btn.Click += Minimize_btn_Click;
            // 
            // Exitbutton
            // 
            Exitbutton.BackColor = Color.Firebrick;
            Exitbutton.FlatAppearance.BorderColor = Color.Lavender;
            Exitbutton.FlatAppearance.BorderSize = 0;
            Exitbutton.FlatStyle = FlatStyle.Flat;
            Exitbutton.Font = new Font("Microsoft Sans Serif", 10.2F, FontStyle.Bold, GraphicsUnit.Point, 0);
            Exitbutton.ForeColor = SystemColors.ButtonHighlight;
            Exitbutton.Image = (Image)resources.GetObject("Exitbutton.Image");
            Exitbutton.Location = new Point(829, 0);
            Exitbutton.Margin = new Padding(4, 4, 4, 4);
            Exitbutton.Name = "Exitbutton";
            Exitbutton.Size = new Size(44, 38);
            Exitbutton.TabIndex = 6;
            Exitbutton.TabStop = false;
            Exitbutton.UseVisualStyleBackColor = false;
            Exitbutton.Click += Exitbutton_Click;
            // 
            // LoginForm
            // 
            AcceptButton = btnLogin;
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            BackColor = Color.FromArgb(96, 0, 128);
            ClientSize = new Size(875, 625);
            Controls.Add(panel7);
            Controls.Add(panel1);
            FormBorderStyle = FormBorderStyle.None;
            Margin = new Padding(2);
            Name = "LoginForm";
            StartPosition = FormStartPosition.CenterScreen;
            Text = "Đăng nhập";
            FormClosing += LoginForm_FormClosing;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)userBoxLog).EndInit();
            panel3.ResumeLayout(false);
            panel3.PerformLayout();
            panel2.ResumeLayout(false);
            panel2.PerformLayout();
            panel7.ResumeLayout(false);
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private Panel panel2;
        private Label labelTaiKhoan;
        private Panel panel3;
        private TextBox txbPassWord;
        private Label labelMatKhau;
        private TextBox txbUserName;
        private Button btnLogin;
        private Label Loginlabel;
        private Label label2;
        private Label gotoRegister;
        private PictureBox userBoxLog;
        private Panel panel7;
        private Button Maxmize_btn;
        private Button Minimize_btn;
        private Button Exitbutton;
        private CheckBox Login_ShowPass;
    }
}
