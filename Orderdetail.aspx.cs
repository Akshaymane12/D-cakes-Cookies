using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class Orderdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!IsPostBack)
        {
            SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
            string query = "select * from orderinfo ";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            ordergrid.DataSource= cmd.ExecuteReader();
            ordergrid.DataBind();
            con.Close();

        }
    }
}