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


public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    SqlCommand cmd, cmd1;
    protected void Page_Load(object sender, EventArgs e)
    {
        con.Open();

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if ((txtuserid.Text == "dcakes") && (txtpass.Text == "error"))
        {
            Session["userid"] = txtuserid.Text;
            Response.Redirect("Admin.aspx");
        }
        cmd = new SqlCommand("SELECT userid,password from TTBSIGNUP where userid like '" + txtuserid.Text + "'and password like '" + txtpass.Text + "'", con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            dr.Read();
            Session["userid"] = dr[0];
            Session["password"] = dr[1];
            Session["userid"] = txtuserid.Text;
            Response.Redirect("userhome.aspx");

        }
        else
        {
            Response.Write("invalid username or password");
        }
        cmd.Dispose();
        con.Close();
    
         

    }
}
