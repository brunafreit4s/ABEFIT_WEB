using System;
using System.Data;
using System.Data.SqlClient;

public partial class page_planos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["Logado"] == null)
            {
                Conexao c = new Conexao();
                c.conectar();
                String sql = "select IdPlano[Número do Plano],Planos[Tipo de Plano], Valores_Planos[Valor Plano] from Plano";
                c.command.CommandText = sql;
                SqlDataAdapter dAdapter = new SqlDataAdapter();
                DataSet dt = new DataSet();
                dAdapter.SelectCommand = c.command;
                dAdapter.Fill(dt);
                c.fechaConexao();
                tabelaPlanos.DataSource = dt;
                tabelaPlanos.DataBind();
            }
            else
            {
                Conexao c = new Conexao();
                c.conectar();
                String sql = "select IdPlano[Número do Plano],Planos[Tipo de Plano], Valores_Planos[Valor Plano] from Plano";
                c.command.CommandText = sql;
                SqlDataAdapter dAdapter = new SqlDataAdapter();
                DataSet dt = new DataSet();
                dAdapter.SelectCommand = c.command;
                dAdapter.Fill(dt);
                c.fechaConexao();
                tabelaPlanos.DataSource = dt;
                tabelaPlanos.DataBind();
            }
        }
        catch
        {

        }
    }
}