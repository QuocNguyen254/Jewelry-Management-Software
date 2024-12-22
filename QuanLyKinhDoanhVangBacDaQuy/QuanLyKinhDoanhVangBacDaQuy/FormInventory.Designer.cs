namespace QuanLyKinhDoanhVangBacDaQuy
{
    partial class FormInventory
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
            comboBox1 = new ComboBox();
            label12 = new Label();
            textBox1 = new TextBox();
            dataGridView1 = new DataGridView();
            panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).BeginInit();
            SuspendLayout();
            // 
            // panel1
            // 
            panel1.BackColor = Color.White;
            panel1.Controls.Add(comboBox1);
            panel1.Controls.Add(label12);
            panel1.Controls.Add(textBox1);
            panel1.Controls.Add(dataGridView1);
            panel1.Location = new Point(95, 0);
            panel1.Margin = new Padding(4);
            panel1.Name = "panel1";
            panel1.Size = new Size(1405, 961);
            panel1.TabIndex = 1;
            // 
            // comboBox1
            // 
            comboBox1.FormattingEnabled = true;
            comboBox1.Location = new Point(130, 163);
            comboBox1.Name = "comboBox1";
            comboBox1.Size = new Size(183, 33);
            comboBox1.TabIndex = 26;
            comboBox1.SelectedIndexChanged += comboBox1_SelectedIndexChanged;
            // 
            // label12
            // 
            label12.AutoSize = true;
            label12.Font = new Font("Microsoft Sans Serif", 12F);
            label12.Location = new Point(42, 163);
            label12.Name = "label12";
            label12.Size = new Size(82, 29);
            label12.TabIndex = 25;
            label12.Text = "Tháng";
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
            textBox1.Text = "BÁO CÁO TỒN KHO";
            textBox1.TextAlign = HorizontalAlignment.Center;
            // 
            // dataGridView1
            // 
            dataGridView1.Anchor = AnchorStyles.Top | AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right;
            dataGridView1.AutoSizeColumnsMode = DataGridViewAutoSizeColumnsMode.Fill;
            dataGridView1.BackgroundColor = SystemColors.ButtonHighlight;
            dataGridView1.ColumnHeadersHeightSizeMode = DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            dataGridView1.Location = new Point(42, 246);
            dataGridView1.Name = "dataGridView1";
            dataGridView1.RowHeadersWidth = 62;
            dataGridView1.Size = new Size(1314, 628);
            dataGridView1.TabIndex = 0;
            // 
            // FormInventory
            // 
            AutoScaleDimensions = new SizeF(10F, 25F);
            AutoScaleMode = AutoScaleMode.Font;
            ClientSize = new Size(1500, 1000);
            Controls.Add(panel1);
            FormBorderStyle = FormBorderStyle.None;
            Location = new Point(500, 0);
            Margin = new Padding(4);
            Name = "FormInventory";
            Padding = new Padding(500, 0, 0, 0);
            StartPosition = FormStartPosition.CenterParent;
            Text = "FormInventory";
            Load += FormInventory_Load;
            panel1.ResumeLayout(false);
            panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)dataGridView1).EndInit();
            ResumeLayout(false);
        }

        #endregion

        private Panel panel1;
        private TextBox textBox1;
        private DataGridView dataGridView1;
        private Label label12;
        private ComboBox comboBox1;
    }
}