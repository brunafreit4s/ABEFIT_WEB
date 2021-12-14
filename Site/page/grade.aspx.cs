using System;

public partial class page_grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logado"] == null)
        {
            Response.Redirect("index.aspx");
        }
    }
}