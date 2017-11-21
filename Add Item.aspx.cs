using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookStore2
{
    public partial class Add_Item : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void SqlDataSearch_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
         
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSourceSearch.SelectCommand = "SELECT [BookID], [BookName], [BookDesc], [Author], [PublisherName], [BookQuantity], [DateAdded], [Price] FROM [BookInfo] Where [Author] = '" + TextBox1.Text.Trim() + "'";

            ListView1.DataSourceID = SqlDataSourceSearch.ID;
            ListView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Add Item.aspx");
        }
    }
}