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

public partial class Employee : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
    SqlCommand cmd = new SqlCommand();
    DataRow drow;
    SqlDataAdapter da;
    DataSet ds = new DataSet();



   
    protected void Page_Load(object sender, EventArgs e)
    {
        da = new SqlDataAdapter("SELECT*FROM EMPLOYEE", con);
        SqlCommandBuilder bld = new SqlCommandBuilder(da);
        da.MissingSchemaAction = MissingSchemaAction.AddWithKey;
        da.Fill(ds, "EMPLOYEE");



        if (!IsPostBack)
        {
            SqlConnection con1 = new SqlConnection("Data Source=.\\SQLEXPRESS;Initial Catalog=DBDCAKES;Integrated Security=True;Pooling=False");
            string query = "select * from EMPLOYEE";
            con1.Open();
            SqlCommand cmd1=new SqlCommand(query, con1);
            empgrid.DataSource = cmd1.ExecuteReader();
            empgrid.DataBind();
            con1.Close();

        }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        txtdateofbirth.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
        Calendar1.Visible = false;

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        txtjoindate.Text = Calendar2.SelectedDate.ToString("dd-MM-yyyy");
        Calendar2.Visible = false;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        drow = ds.Tables[0].NewRow();
        drow[0] = txtempid.Text;
        drow[1] = txtempname.Text;
        drow[2] = txtdateofbirth.Text;
        drow[3] = txtaddress.Text;
        drow[4] = txtemailid.Text;
        drow[5] = txtcontact.Text;
        drow[6] = ddlgender.SelectedItem.Value;
        drow[7] = txtage.Text;
        drow[8] = txtstate.Text;
        drow[9] = txtcity.Text;
        drow[10] = txtjoindate.Text;
        drow[11] = txtsalary.Text;
        drow[12] = ddlpost.SelectedItem.Value;

        ds.Tables[0].Rows.Add(drow);
        da.Update(ds, "EMPLOYEE");
        Response.Redirect("Admin.aspx");
    }
    protected void btncancel_Click(object sender, EventArgs e)
    {
        
    }
}