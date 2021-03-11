using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Books : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            display1();
        }
        void display1()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Register";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            sa.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Register set Full_name = @Full_name  WHERE Member_Id = @Member_Id";
            cmd.Parameters.AddWithValue("@Full_name", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Member_Id", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox4.Text = "";
            TextBox5.Text = "";
            display1();
            Label1.Text = "Recored Updated successfully";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "delete from Register WHERE Member_Id = @Member_Id";
            cmd.Parameters.AddWithValue("@Member_Id", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox4.Text = "";
            display1();
            Label1.Text = "Recored deleted successfully";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into Books(Book_Name, Author_name, Genre) values(@Book_Name, Author_name, Genre)";
            cmd.Parameters.AddWithValue("@Book_Name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Author_Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Genre", TextBox3.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            display();
        }
        void display()
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Books";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter sa = new SqlDataAdapter(cmd);
            sa.Fill(dt);
            GridView2.DataSource = dt;
            GridView2.DataBind();
            con.Close();
        }
    }
}