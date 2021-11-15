using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace 选课管理系统
{
    class SJK
    {
        SqlConnection a;
        public SqlConnection connect()
        {
            string str = @"Data Source=LAPTOP-Q6JM3HLF\SQLEXPRESS;Initial Catalog=数据库学生管理系统;User ID=sa;Pwd=123456";
            a = new SqlConnection(str);
            a.Open();
            return a;
        }
        public SqlCommand command(string sql)
        {
            SqlCommand b = new SqlCommand(sql, connect());
            return b;
        }
        public int Execute(string sql)
        {
            return command(sql).ExecuteNonQuery();
        }
        public SqlDataReader Read(string sql)
        {
            return command(sql).ExecuteReader();
        }
        public void SJKclose()
        {
            a.Close();
        }
    }
}
