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
public partial class Home : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    SqlCommand cmd = new SqlCommand();
    DataRow drow;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("SELECT*FROM complent", con);
        SqlCommandBuilder bld = new SqlCommandBuilder(da);
        da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
        da.Fill(ds, "complent");
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        drow = ds.Tables[0].NewRow();
        drow[0] = txtnamecom1.Text;
        drow[1] = txtemailcom1.Text;
        drow[2] = txtcomplent.Text;
        ds.Tables[0].Rows.Add(drow);
        da.Update(ds, "complent");
        Response.Write("<script>alert('Sucessfully Send Your Complent To Admin');</script>");
    }
}
