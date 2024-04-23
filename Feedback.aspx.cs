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


public partial class Feedback : System.Web.UI.Page
{

    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    SqlCommand cmd = new SqlCommand();
    DataRow drow;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("SELECT*FROM TBFEEDBACK", con);
        SqlCommandBuilder bld = new SqlCommandBuilder(da);
        da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
        da.Fill(ds, "TBFEEDBACK");
     
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        drow = ds.Tables[0].NewRow();
        drow[0] = txtname.Text;
        drow[1] = txtemailfeed.Text;
        drow[2] = txtcontact.Text;
        drow[3] = txtcity.Text;
        drow[4] = txtsuggesion.Text;
        ds.Tables[0].Rows.Add(drow);
        da.Update(ds, "TBFEEDBACK");
        Response.Redirect("Dcakes.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
       txtname.Text = "";
       txtemailfeed.Text = "";
       txtcontact.Text = "";
       txtcity.Text = "";
       txtsuggesion.Text = "";
       
        txtname.Focus();
    }
}
