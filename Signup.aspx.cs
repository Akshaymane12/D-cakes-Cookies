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

public partial class Signup : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    SqlCommand cmd = new SqlCommand();
    DataRow drow;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("SELECT*FROM TTBSIGNUP", con);
        SqlCommandBuilder bld = new SqlCommandBuilder(da);
        da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
        da.Fill(ds, "TTBSIGNUP");
     
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        drow = ds.Tables[0].NewRow();
        drow[0] = txtfullname.Text;
        drow[1] = txtemail.Text;
        drow[2] = txtage.Text;
        drow[3] = txtuserid.Text;
        drow[4] = txtpass.Text;
       
        ds.Tables[0].Rows.Add(drow);
        da.Update(ds, "TTBSIGNUP");
        Response.Redirect("Login.aspx");
    }
    protected void btnaddnew_Click(object sender, EventArgs e)
    {
        txtfullname.Text = "";
        txtemail.Text = "";
        txtage.Text = "";
        txtuserid.Text = "";
        txtpass.Text = "";
        txtretypepass.Text = "";
        txtfullname.Focus();
    }
}
