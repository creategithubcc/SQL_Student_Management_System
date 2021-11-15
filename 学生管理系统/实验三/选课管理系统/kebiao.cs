using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace 选课管理系统
{
    public partial class kebiao : Form
    {
        public kebiao()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            zhuye zy = new zhuye();
            this.Hide();
            zy.ShowDialog();
            this.Show();
        }

        private void kebiao_Load(object sender, EventArgs e)
        {
            function();
        }
        public void function()
        {
            dataGridView1.Rows.Clear();
            SJK sjk = new SJK();
            string sql = "select * from 我的课表";
            IDataReader cc = sjk.Read(sql);
            while (cc.Read())
            {
                dataGridView1.Rows.Add(cc[0].ToString(), cc[1].ToString(), cc[2].ToString(), cc[3].ToString(), cc[4].ToString(), cc[5].ToString());

            }
            cc.Close();
            sjk.SJKclose();
        }
    }
}
