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

public partial class userwelcome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userid"] != null)
        {
            lblsucess.Text = "Login Sucess,Welcome...   " + Session["userid"].ToString();
        }
        else
        {
           

        }

    }
    protected void btnlogout_Click(object sender, EventArgs e)
    {
         Response.Redirect("Login.aspx");
        
    }
}
