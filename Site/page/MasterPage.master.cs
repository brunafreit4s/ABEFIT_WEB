using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;

public partial class page_MasterPage : System.Web.UI.MasterPage
{
    public void Page_Load(object sender, EventArgs e)
    {
        if (Session["logado"] == null)
        {
            menuNormal.Visible = true;
            menuAluno.Visible = false;
            rodapeAluno.Visible = false;
            rodapeNormal.Visible = true;
            formulario.Visible = true;
        }
        else
        {
            menuAluno.Visible = true;
            menuNormal.Visible = false;
            rodapeAluno.Visible = true;
            rodapeNormal.Visible = false;
            formulario.Visible = false;
            btnSair.Visible = true;
            txtEmail.Visible = true;
            txtSair.Visible = true;
        }
    }

    public void Enviar_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (txtLogin.Text != "" && txtSenha.Text != "")
            {
                String sql;
                String login, senha;
                //int qtde;

                DataSet dt = new DataSet();
                SqlDataAdapter dAdapter = new SqlDataAdapter();
                login = txtLogin.Text.Trim();
                senha = txtSenha.Text.Trim();

                Conexao c = new Conexao();
                c.conectar();
                sql = "select * from Aluno where email_Aluno=@email and senha_Aluno=@senha";
                c.command.Parameters.Add("@email", SqlDbType.VarChar).Value = login;
                c.command.Parameters.Add("@senha", SqlDbType.VarChar).Value = senha;
                c.command.CommandText = sql;
                dAdapter.SelectCommand = c.command;
                dAdapter.Fill(dt);
                c.fechaConexao();

                //qtde = Convert.ToInt32(dt.Tables[0].DefaultView[0].Row["qtde"]); count(*) as qtde 
                if (dt.Tables[0].DefaultView.Count == 1)
                //if (qtde == 1)
                {
                    Session["Logado"] = 1;
                    Session["email"] = login;
                    Session["IdAluno"] = Convert.ToInt32(dt.Tables[0].DefaultView[0].Row["IdAluno"].ToString());
                    Response.Redirect("alunoindex.aspx");
                }
                else
                {
                    txtResposta.Text = "Login ou Senha Incorretos!";
                }
            }
        }
        catch
        {
            txtResposta.Text = "Acesso negado, verifique os dados digitados!";
        }
    }

    protected void btnSair_Click(object sender, EventArgs e)
    {
        Session.Remove("Logado");
        Session.Abandon();
        Response.Redirect("index.aspx");
    }
}
