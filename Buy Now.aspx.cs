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



public partial class Buy_Now : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    SqlCommand cmd = new SqlCommand();
    DataRow drow;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("SELECT*FROM orderinfo", con);
        SqlCommandBuilder bld = new SqlCommandBuilder(da);
        da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
        da.Fill(ds, "orderinfo");

        txtprice.Text = Request.QueryString["price"];
        txtproductname.Text = Request.QueryString["productname"];
        txtdatetime.Text = DateTime.Today.ToString("dd-MM-yyyy");
    }
    
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdeliverydate.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
        Calendar1.Visible = false;
    }
    
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        drow = ds.Tables[0].NewRow();
        drow[0] = txtcustomername.Text;
        drow[1] = txtcustomeremailid.Text;
        drow[2] = txtcustomermobile.Text;
        drow[3] = ddlquantity.SelectedItem.Value;
        drow[4] = ddlweight.SelectedItem.Value;
        drow[5] = ddlflavour.SelectedItem.Value;
        drow[6] = txtdeliverydate.Text;
        drow[7] = txtdiliveryaddress.Text;
        drow[8] = txtdatetime.Text;
        drow[9] = txtprice.Text;
        drow[10] = txtproductname.Text;



        ds.Tables[0].Rows.Add(drow);
        da.Update(ds, "orderinfo");
        Response.Redirect("product1.aspx");
    }
}