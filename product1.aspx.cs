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
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class product1 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
         // BindProductRepeater();


        }

    }

    private void BindProductRepeater()
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
        SqlCommand cmd = new SqlCommand("", con);
        cmd.CommandType = CommandType.StoredProcedure;
        SqlDataAdapter sda = new SqlDataAdapter(cmd);

        {
            DataTable dt = new DataTable();
            sda.Fill(dt);
           // Repeaterproducts.DataSource = dt;
           // Repeaterproducts.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string price = lblprice.Text;
        string productname = txtdoll.Text;
        Response.Redirect(string.Format("Buy Now.aspx?price={0}&productname={1}", price, productname));
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string price = lblprice1.Text;
        string productname = lblcrown.Text;
        Response.Redirect(string.Format("Buy Now.aspx?price={0}&productname={1}", price, productname));
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string price = lblprice2.Text;
        string productname = lblheart.Text;
        Response.Redirect(string.Format("Buy Now.aspx?price={0}&productname={1}", price, productname));
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string price = lblprice3.Text;
        string productname = lblpestri.Text;
        Response.Redirect(string.Format("Buy Now.aspx?price={0}&productname={1}", price, productname));
    }
}
 