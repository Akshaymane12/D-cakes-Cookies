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
using System.Data;

public partial class Forgetpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnresetpass_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
        con.Open();
        SqlCommand cmd = new SqlCommand("Select * from TTBSIGNUP where Email=@email", con);
        cmd.Parameters.AddWithValue("@email", txtemailid.Text);

        SqlDataAdapter sda = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        sda.Fill(dt);
        if (dt.Rows.Count != 0)
        {
            String myGUID = Guid.NewGuid().ToString();
            int userid = Convert.ToInt32(dt.Rows[0][0]);
            SqlCommand cmd2 = new SqlCommand("Insert into ForgotPass(id,userid,RequestDateTime) values('"+myGUID+"','"+userid+"',GETDATE())",con);
            cmd2.ExecuteNonQuery();

        }

    }
}
