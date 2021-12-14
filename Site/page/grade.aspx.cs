using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class page_grade : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logado"] == null)
        {
            Response.Redirect("index.aspx");
        }
        else
        {
            /*Conexao c = new Conexao();
            c.conectar();
            String sql = "select * from Horario";
            //String sql = "select DISTINCT Dia_Semana[Dias da Semana],Horarios[Horários Disponíveis] from Horario";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();
            GridView1.DataSource = dt;
            //GridView1.DataBind();

            //comboGrade.Items.Add("Atuais");*/
        }
    }

    protected void SqlDataSource4_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}