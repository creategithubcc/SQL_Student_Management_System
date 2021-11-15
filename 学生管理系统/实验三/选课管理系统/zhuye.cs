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
    
    public partial class zhuye : Form
    {
        int cnt = 0;
        int cnt2 = 0;
        public zhuye()
        {
            InitializeComponent();
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            kebiao kb = new kebiao();
            this.Hide();
            kb.ShowDialog();
            this.Show();
        }

        private void zhuye_Load(object sender, EventArgs e)
        {
            function();
            function2();

        }

        public void function()
        {
            dataGridView1.Rows.Clear();
            SJK sjk = new SJK();
            string sql = "select * from 课程";
            IDataReader cc = sjk.Read(sql);
            while (cc.Read())
            {
                dataGridView1.Rows.Add(cc[0].ToString(), cc[1].ToString(), cc[2].ToString(), cc[3].ToString(), cc[4].ToString(), cc[5].ToString());
                
            }
            cc.Close();
            sjk.SJKclose();
        }

        public void function2()
        {
            dataGridView2.Rows.Clear();
            SJK sjk = new SJK();
            string sql = "select * from 当前课程";
            IDataReader dd = sjk.Read(sql);
            while (dd.Read())
            {
                dataGridView2.Rows.Add(dd[0].ToString(), dd[1].ToString(), dd[2].ToString(), dd[3].ToString(), dd[4].ToString(), dd[5].ToString());

            }
            dd.Close();
            sjk.SJKclose();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                string id = dataGridView1.SelectedCells[0].Value.ToString();
                string tid = dataGridView1.SelectedCells[1].Value.ToString();
                string tname = dataGridView1.SelectedCells[2].Value.ToString();
                string cname = dataGridView1.SelectedCells[3].Value.ToString();
                string credit = dataGridView1.SelectedCells[4].Value.ToString();
                string time = dataGridView1.SelectedCells[5].Value.ToString();

                string sql = "insert into 当前课程 (课程编号,教师编号,教师名,课程名,学分,时间) " +
                    "values ('" + id + "','" + tid + "','" + tname + "','" + cname + "','" + credit + "','" +time + "')";

                SJK sjk = new SJK();
                sjk.Execute(sql);
                sql = "delete from 课程 where 课程编号 ='"+id+"'and 教师编号='"+tid+"'";
                sjk.Execute(sql);
                int A = int.Parse(credit);
                cnt += A;
                A = 0;
                cnt2+=1;
                MessageBox.Show("选课成功,目前总学分是："+cnt);
                MessageBox.Show("总共选课数：" + cnt2);
                function();
                function2();
                sjk.SJKclose();
            }
            catch
            {
                MessageBox.Show("我是BUG测试");
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            try
            {
                string id = dataGridView2.SelectedCells[0].Value.ToString();
                string tid = dataGridView2.SelectedCells[1].Value.ToString();
                string tname = dataGridView2.SelectedCells[2].Value.ToString();
                string cname = dataGridView2.SelectedCells[3].Value.ToString();
                string credit = dataGridView2.SelectedCells[4].Value.ToString();
                string time = dataGridView2.SelectedCells[5].Value.ToString();


                string sql = "insert into 课程 (课程编号,教师编号,教师名,课程名,学分,时间) " +
                    "values ('" + id + "','" + tid + "','" + tname + "','" + cname + "','" + credit + "','" + time + "')";

                SJK sjk = new SJK();
                sjk.Execute(sql);
                sql = "delete from 当前课程 where 课程编号 ='" + id + "'and 教师编号='" + tid + "'";
                sjk.Execute(sql);
                int A = int.Parse(credit);
                cnt -= A;
                A = 0;
                cnt2 -= 1;
                MessageBox.Show("退课成功,目前总学分是：" + cnt);
                MessageBox.Show("总共选课数：" + cnt2);
                function();
                function2();
                sjk.SJKclose();
            }
            catch
            {
                MessageBox.Show("我是BUG测试");
            }
        }

        private void button4_Click(object sender, EventArgs e)
        {
            if((cnt >= 8 && cnt2 >= 3) &&(cnt <= 12 && cnt2 <= 5))
            {
                string sql = "insert into 我的课表(课程编号,教师编号,教师名,课程名,学分,时间) select 课程编号,教师编号,教师名,课程名,学分,时间 from 当前课程";
                SJK sjk = new SJK();
                sjk.Execute(sql);

                MessageBox.Show("已将已选的课程添加到你的课表当中，请按下课表按钮查看");
                
                sql = "truncate table 当前课程";
                sjk.Execute(sql);
                function2();
                sjk.SJKclose();

            }
            else
            {
                MessageBox.Show("您无法达到选课要求，您需要最低选择三门课八学分，最高选择五门课十二学分" );
                MessageBox.Show("您的学分是："+cnt,"您目前的选课数：" + cnt2);
            }
        }
    }
}
