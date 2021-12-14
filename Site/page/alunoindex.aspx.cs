using System;
using System.Data;
using System.Data.SqlClient;


public partial class page_alunoindex : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logado"] == null)
        {
            Response.Redirect("index.aspx");

        }
        if (Session["logado"] != null)
        {   
            Conexao c = new Conexao();
            c.conectar();
            String sql = "select Nome_Aluno,CPF_Aluno,RG_Aluno,email_Aluno,tel_Celular_Aluno,tel_Resid_Aluno,convert (char(10),Data_Nascimento_Aluno,101)[Data_Nascimento_Aluno],Rua_Aluno,Numero_Aluno,Complemento_Aluno,Bairro_Aluno,CEP_Aluno,Cidade_Aluno,UF_Aluno from Aluno where email_Aluno like '" + Session["email"] + "'";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();
            Session["nome"] = dt.Tables[0].DefaultView[0].Row["Nome_Aluno"];
            Session["CPF"] = dt.Tables[0].DefaultView[0].Row["CPF_Aluno"];
            Session["RG"] = dt.Tables[0].DefaultView[0].Row["RG_Aluno"];
            Session["email"] = dt.Tables[0].DefaultView[0].Row["email_Aluno"];
            Session["tel_Celular"] = dt.Tables[0].DefaultView[0].Row["tel_Celular_Aluno"];
            Session["tel_Resid"] = dt.Tables[0].DefaultView[0].Row["tel_Resid_Aluno"];
            Session["Data_Nascimento"] = dt.Tables[0].DefaultView[0].Row["Data_Nascimento_Aluno"];
            Session["Rua"] = dt.Tables[0].DefaultView[0].Row["Rua_Aluno"];
            Session["Numero"] = dt.Tables[0].DefaultView[0].Row["Numero_Aluno"];
            Session["Complemento"] = dt.Tables[0].DefaultView[0].Row["Complemento_Aluno"];
            Session["Bairro"] = dt.Tables[0].DefaultView[0].Row["Bairro_Aluno"];
            Session["CEP"] = dt.Tables[0].DefaultView[0].Row["CEP_Aluno"];
            Session["Cidade"] = dt.Tables[0].DefaultView[0].Row["Cidade_Aluno"];
            Session["UF"] = dt.Tables[0].DefaultView[0].Row["UF_Aluno"];

            nomeAluno.Text = Session["nome"].ToString();
            lbNome.Text = Session["nome"].ToString();
            lbCpf.Text = Session["CPF"].ToString();
            lbRg.Text = Session["RG"].ToString();
            lbEmail.Text = Session["email"].ToString();
            lbCel.Text = Session["tel_Celular"].ToString();
            lbTel.Text = Session["tel_Resid"].ToString();
            lbData.Text = Session["Data_Nascimento"].ToString();
            lbRua.Text = Session["Rua"].ToString();
            lbNum.Text = Session["Numero"].ToString();
            lbComp.Text = Session["Complemento"].ToString();
            lbBairro.Text = Session["Bairro"].ToString();
            lbCep.Text = Session["CEP"].ToString();
            lbCidade.Text = Session["Cidade"].ToString();
            lbUf.Text = Session["UF"].ToString();

        }
        if (Session["logado"] != null) 
        {
            Conexao c = new Conexao();
            c.conectar();
            String planos = "";

            String sql = "select p.Planos from Aluno a inner join Plano_Aluno pa on a.IdAluno = pa.IdAluno inner join Plano p on pa.IdPlano = p.IdPlano where email_Aluno like '" + Session["email"] + "'";
            c.command.Parameters.Add("@senha", SqlDbType.VarChar).Value = planos;
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            if (dt.Tables[0].DefaultView.Count > 0)
            {
                Session["plano"] = dt.Tables[0].DefaultView[0].Row["Planos"];
                lbPlano.Text = Session["plano"].ToString();
            }

        }
        
    }

    protected void simaluno_CheckedChanged(object sender, EventArgs e)
    {
        if (simaluno.Checked == true)
        {
            txtNovaSenha.Enabled = true;
            txtConfirmaSenha.Enabled = true;
            txtSenhaAnterior.Enabled = true;
                         
        }
        else
        {
            txtNovaSenha.Enabled = false;
            txtConfirmaSenha.Enabled = false;
            txtSenhaAnterior.Enabled = false;
            
        }
    }

    protected void enviaSenha_Click(object sender, EventArgs e)
    {
        if (txtNovaSenha.Text == txtConfirmaSenha.Text)
        {

            Conexao c = new Conexao();
            c.conectar();
            String senha = txtNovaSenha.Text;
            String sql = "UPDATE [Aluno] SET [senha_Aluno] =@senha where email_Aluno like '" + Session["email"] + "'";
            c.command.Parameters.Add("@senha", SqlDbType.VarChar).Value = senha;
            c.command.CommandText = sql;
            c.command.ExecuteNonQuery();
            c.fechaConexao();

            Session.Remove("logado");
            Response.Redirect("index.aspx");
            
        }

        else {
            lbAvisa.Text = "As senhas não se coincidem!";
        }
    }

    protected void enviaCancela_Click(object sender, EventArgs e)
    { 
            Response.Redirect("index.aspx");
    }

    protected void txtNovaSenha_TextChanged(object sender, EventArgs e)
    {
    }
    
}