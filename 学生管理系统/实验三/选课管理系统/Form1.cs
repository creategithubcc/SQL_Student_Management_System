using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;


namespace 选课管理系统
{
    public partial class 选课管理系统 : Form
    {
        int cnt = 0;
        public 选课管理系统()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //SJK sjk = new SJK();
            /*string sql = $"select 学生姓名 from 学生 where 学号='{textBox1.Text}'";///
            IDataReader cc = sjk.Read(sql);
            while (cc.Read())
            {
                label11.Text = ;
                label11.Visible = true;
            }
            cc.Close();*/
            if(textBox1.Text=="300001")
            {
                label11.Text ="路明非";
            }
            else if (textBox1.Text == "300002")
            {
                label11.Text = "楚子航";
            }
            else if (textBox1.Text == "300003")
            {
                label11.Text = "陈墨瞳";
            }
            else if (textBox1.Text == "300004")
            {
                label11.Text = "夏弥";
            }
            else if (textBox1.Text == "300005")
            {
                label11.Text = "上杉绘梨衣";
            }
            else if (textBox1.Text == "300006")
            {
                label11.Text = "恺撒·加图索 ";
            }
            label11.Visible = true;
            //sjk.SJKclose();
            cnt = 1;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            void login()
            {
                SJK sjk = new SJK();
                string sql = "select * from 学生 where 学号='" + textBox1.Text + "'";
                IDataReader bb = sjk.Read(sql);
                if (bb.Read())
                {
                    MessageBox.Show("成功登录！");
                    zhuye zy = new zhuye();
                    this.Hide();
                    zy.ShowDialog();
                    this.Show();

                }
                else
                {
                    MessageBox.Show("登录失败！");
                }


            }
            if (textBox1.Text != "" && cnt == 1)
            {
                cnt = 0;
                login();
            }
            else
            {
                MessageBox.Show("请输入学号并点击查找学生姓名之后再点击这个按钮");
            }
        }
    }
}
