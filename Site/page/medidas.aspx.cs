using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class page_medidas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logado"] == null)
        {
            Response.Redirect("index.aspx");
        }
        if(Session["logado"] != null)
        {
            Conexao c = new Conexao();
            c.conectar();//Fazer inner Join
            String sql = "select a.*, b.Nome_Aluno from Avaliacao_Fisica a inner join Aluno_Avaliacao_Fisica AF on a.IdAvaliacao_Fisica = AF.IdAvaliacao_Fisica inner join Aluno b on AF.IdAluno = b.IdAluno where a.IdAvaliacao_Fisica in (select max(IdAvaliacao_Fisica) from Avaliacao_Fisica af where af.IdAvaliacao_Fisica = IdAvaliacao_Fisica)";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            Session["Altura"] = dt.Tables[0].DefaultView[0].Row["Altura"];
            Session["Peso"] = dt.Tables[0].DefaultView[0].Row["Peso"];
            Session["Medida_Torax"] = dt.Tables[0].DefaultView[0].Row["Medida_Torax"];
            Session["Medida_Abdome"] = dt.Tables[0].DefaultView[0].Row["Medida_Abdome"];
            Session["Medida_Cintura"] = dt.Tables[0].DefaultView[0].Row["Medida_Cintura"];
            Session["Medida_Quadril"] = dt.Tables[0].DefaultView[0].Row["Medida_Quadril"];
            Session["Medida_Escapular"] = dt.Tables[0].DefaultView[0].Row["Medida_Escapular"];
            Session["Medida_Braço_D"] = dt.Tables[0].DefaultView[0].Row["Medida_Braço_D"];
            Session["Medida_Braco_E"] = dt.Tables[0].DefaultView[0].Row["Medida_Braco_E"];
            Session["Medida_Antebraco_D"] = dt.Tables[0].DefaultView[0].Row["Medida_Antebraco_D"];
            Session["Medida_Antebraco_E"] = dt.Tables[0].DefaultView[0].Row["Medida_Antebraco_E"];
            Session["Medida_Punho_D"] = dt.Tables[0].DefaultView[0].Row["Medida_Punho_D"];
            Session["Medida_Punho_E"] = dt.Tables[0].DefaultView[0].Row["Medida_Punho_E"];
            Session["Medida_Coxa_D"] = dt.Tables[0].DefaultView[0].Row["Medida_Coxa_D"];
            Session["Medida_Coxa_E"] = dt.Tables[0].DefaultView[0].Row["Medida_Coxa_E"];
            Session["Medida_Panturrilha_D"] = dt.Tables[0].DefaultView[0].Row["Medida_Panturrilha_D"];
            Session["Medida_Panturrilha_E"] = dt.Tables[0].DefaultView[0].Row["Medida_Panturrilha_E"];
            Session["Apto"] = dt.Tables[0].DefaultView[0].Row["Apto"];
            
            lbApto.Text = Session["Apto"].ToString();
            lbAltura.Text = Session["Altura"].ToString();
            lbTorax.Text = Session["Medida_Torax"].ToString();
            lbAbdo.Text = Session["Medida_Abdome"].ToString();
            lbCintura.Text = Session["Medida_Cintura"].ToString();
            lbEscapular.Text = Session["Medida_Escapular"].ToString();
            lbBracEsq.Text = Session["Medida_Braco_E"].ToString();
            lbAntBracEsq.Text = Session["Medida_Antebraco_E"].ToString();
            lbPunho.Text = Session["Medida_Punho_E"].ToString();
            lbCoxaEsq.Text = Session["Medida_Coxa_E"].ToString();
            lbPantEsq.Text = Session["Medida_Panturrilha_E"].ToString();
            lbPeso.Text = Session["Peso"].ToString();
            lbBracDire.Text = Session["Medida_Braço_D"].ToString();
            lbAntBracDire.Text = Session["Medida_Antebraco_D"].ToString();
            lbPunhoDire.Text = Session["Medida_Punho_D"].ToString();
            lbCoxaDire.Text = Session["Medida_Coxa_D"].ToString();
            lbPantDire.Text = Session["Medida_Panturrilha_D"].ToString();
            lbQuadril.Text = Session["Medida_Quadril"].ToString();
        }
        if (Session["logado"] != null)
        {
            Conexao c = new Conexao();
            c.conectar();//Fazer inner Join
            String sql = "select CONVERT(char(10),a.Data_Medidas,101)[Data_Medidas], b.Nome_Aluno from Avaliacao_Fisica a inner join Aluno_Avaliacao_Fisica AF on a.IdAvaliacao_Fisica = AF.IdAvaliacao_Fisica inner join Aluno b on AF.IdAluno = b.IdAluno where a.IdAvaliacao_Fisica in (select max(IdAvaliacao_Fisica) from Avaliacao_Fisica af where af.IdAvaliacao_Fisica = IdAvaliacao_Fisica)";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            Session["Data"] = dt.Tables[0].DefaultView[0].Row["Data_Medidas"];
            lbDatas.Text = Session["Data"].ToString();    
        }
    }

}