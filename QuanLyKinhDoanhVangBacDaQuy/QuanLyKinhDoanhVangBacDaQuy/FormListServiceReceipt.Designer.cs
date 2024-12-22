namespace QuanLyKinhDoanhVangBacDaQuy
{
    partial class FormListServiceReceipt
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
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
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            panel1 = new Panel();
            textBox1 = new TextBox();
            dataGridView1 = new DataGridView();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = Color.White;
            panel1.Controls.Add(textBox1);
            panel1.Controls.Add(dataGridView1);
            panel1.Location = new Point(95, 0);
            panel1.Margin = new Padding(4);
            panel1.Name = "panel1";
            panel1.Size = new Size(1405, 961);
            panel1.TabIndex = 2;
            // 
            // textBox1
            // 
            textBox1.BackColor = Color.FromArgb(140, 0, 200);
            textBox1.Font = new Font("Microsoft Sans Serif", 30F, FontStyle.Bold);
            textBox1.ForeColor = SystemColors.Window;
            textBox1.Location = new Point(42, 45);
            textBox1.Name = "textBox1";
            textBox1.Size = new Size(1314, 75);
            textBox1.TabIndex = 1;
            textBox1.Text = "DANH SÁCH PHIẾU DỊCH VỤ";
            textBox1.TextAlign = HorizontalAlignment.Center;
            // 
            // dataGridView1
            // 
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dataGridView1.BackgroundColor = SystemColors.ButtonHighlight;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(51, 248);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 62;
            dataGridView1.Size = new Size(1314, 630);
            dataGridView1.TabIndex = 0;
            // 
            // FormListServiceReceipt
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1500, 1000);
            Controls.Add(panel1);
            FormBorderStyle = FormBorderStyle.None;
            Location = new Point(76, 0);
            Name = "FormListServiceReceipt";
            Text = "FormListServiceReceipt";
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private TextBox textBox1;
        private DataGridView dataGridView1;
    }
}