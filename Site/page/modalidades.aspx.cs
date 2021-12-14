using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class page_modalidades : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
            Conexao c = new Conexao();
            c.conectar();
            String sql = "select Modalidade[Modalidades Disponíveis] from Modalidade";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();
            tabelaModalidade.DataSource = dt;
            tabelaModalidade.DataBind();
    }
    
}