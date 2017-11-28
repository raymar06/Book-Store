using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;

namespace BookStore7
{
    class Program
    {
        static void Main(string[] args)
        {

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=" + "c:\\users\\raymar\\documents\\visual studio 2015\\Projects\\BookStore7\\BookStore7\\Database1.mdf" + ";Integrated Security=True");
            con.Open();
            string BookName, BookDesc, Author, PublisherName, BookQuantity, DateAdded, Price;
            Console.WriteLine("Enter Book Details");


            BookName = Console.ReadLine();
            BookDesc = Console.ReadLine();
            Author = Console.ReadLine();
            PublisherName = Console.ReadLine();
            BookQuantity = Console.ReadLine();
            DateAdded = Console.ReadLine();
            Price = Console.ReadLine();

            SqlCommand com = new SqlCommand("Insert into Bookinfo values('" + BookName + "','" + BookDesc + "','" + Author + "','" + PublisherName + "','" + BookQuantity + "','" + DateAdded + "','" + Price + "')", con);
            int i = com.ExecuteNonQuery();
            if (i > 0)
            {
                Console.WriteLine("Insertion Successsfull!");
            }
            con.Close();




         


        }
    }
}
