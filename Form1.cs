using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace BookStore4
{
    public partial class Form1 : Form

    {
        //@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + "c:\\users\\raymar\\documents\\visual studio 2015\\Projects\\BookStore4\\BookStore4\\Database1.mdf" + ";Integrated Security=True
        //Data Source = (localdb)\MSSQLLocalDB;Initial Catalog = master; Integrated Security = True; 
                   SqlConnection con = new SqlConnection(@"Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = BookStore; Integrated Security = True;");
        SqlCommand cmd;
        SqlDataAdapter adapt;
        int BookID = 0;

        public Form1()
        {
            InitializeComponent();
            DisplayData();
        }


        private void button1_Click(object sender, EventArgs e)
        {


            {
                if (BookName.Text != "" && BookDesc.Text != "" && Author.Text != "" && PublisherName.Text != "" && BookQuantity.Text != "" && DateAdded.Text != "" && Price.Text != "")
                {
                    cmd = new SqlCommand("insert into Bookinfo(BookName,BookDesc,Author,PublisherName,BookQuantity,DateAdded,Price) values (@BookName,@BookDesc,@Author,@PublisherName,@BookQuantity,@DateAdded,@Price)", con);
                    con.Open();
                    cmd.Parameters.AddWithValue("@BookName", BookName.Text);
                    cmd.Parameters.AddWithValue("@BookDesc", BookDesc.Text);
                    cmd.Parameters.AddWithValue("@Author", Author.Text);
                    cmd.Parameters.AddWithValue("@PublisherName", PublisherName.Text);
                    cmd.Parameters.AddWithValue("@BookQuantity", BookQuantity.Text);
                    cmd.Parameters.AddWithValue("@DateAdded", DateAdded.Text);
                    cmd.Parameters.AddWithValue("@Price", Price.Text);
                    cmd.ExecuteNonQuery();
                    con.Close();
                    MessageBox.Show("Record Inserted Successfully");
                    DisplayData();
                    ClearData();
                }
                else
                {
                    MessageBox.Show("Please Provide Details!");
                }

            }
        }
        
        private void DisplayData()
        {
          

            con.Open();
            DataTable dt = new DataTable();
            adapt = new SqlDataAdapter("Select * from Bookinfo", con);
            adapt.Fill(dt);
            dataGridView1.DataSource = dt;
            con.Close();
        }
        private void ClearData()
        {
            BookName.Text = "";
            BookDesc.Text = "";
            Author.Text = "";
            PublisherName.Text = "";
            BookQuantity.Text = "";
            DateAdded.Text = "";
            Price.Text = "";

            BookID = 0;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            BookID = Convert.ToInt32(dataGridView1.Rows[e.RowIndex].Cells[0].Value.ToString());
            BookName.Text = dataGridView1.Rows[e.RowIndex].Cells[1].Value.ToString();
            BookDesc.Text = dataGridView1.Rows[e.RowIndex].Cells[2].Value.ToString();
            Author.Text = dataGridView1.Rows[e.RowIndex].Cells[3].Value.ToString();
            PublisherName.Text = dataGridView1.Rows[e.RowIndex].Cells[4].Value.ToString();
            BookQuantity.Text = dataGridView1.Rows[e.RowIndex].Cells[5].Value.ToString();
            DateAdded.Text = dataGridView1.Rows[e.RowIndex].Cells[6].Value.ToString();
            Price.Text = dataGridView1.Rows[e.RowIndex].Cells[7].Value.ToString();

        }

        private void button2_Click(object sender, EventArgs e)
        {
     

            if (BookName.Text != "" && BookDesc.Text != "" && Author.Text != "" && PublisherName.Text != "" && BookQuantity.Text != "" && DateAdded.Text != "" && Price.Text != "")
            {
                cmd = new SqlCommand("update Bookinfo set BookName=@name,BookDesc=@BookDesc,Author=@Author,PublisherName=@PublisherName,BookQuantity=@BookQuantity,DateAdded=@DateAdded,Price=@Price where BookID=@BookID", con);
                con.Open();
                cmd.Parameters.AddWithValue("@BookID", BookID);
                cmd.Parameters.AddWithValue("@BookName", BookName.Text);
                cmd.Parameters.AddWithValue("@BookDesc", BookDesc.Text);
                cmd.Parameters.AddWithValue("@Author", Author.Text);
                cmd.Parameters.AddWithValue("@PublisherName", PublisherName.Text);
                cmd.Parameters.AddWithValue("@BookQuantity", BookQuantity.Text);
                cmd.Parameters.AddWithValue("@DateAdded", DateAdded.Text);
                cmd.Parameters.AddWithValue("@Pricee", Price.Text);
                cmd.ExecuteNonQuery();
                MessageBox.Show("Record Updated Successfully");
                con.Close();
                DisplayData();
                ClearData();
            }
            else
            {
                MessageBox.Show("Please Select Record to Update");
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
         
            if (BookID != 0)
            {
                cmd = new SqlCommand("delete Bookinfo where BookID=@BookID", con);
                con.Open();
                cmd.Parameters.AddWithValue("@BookID", BookID);
                cmd.ExecuteNonQuery();
                con.Close();
                MessageBox.Show("Record Deleted Successfully!");
                DisplayData();
                ClearData();
            }
            else
            {
                MessageBox.Show("Please Select Record to Delete");
            }

        }
    }
}

