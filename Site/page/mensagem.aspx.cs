using System;
using System.Data;
using System.Data.SqlClient;

public partial class page_mensagem : System.Web.UI.Page
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
            String sql = "select a.Nome_Aluno,a.email_Aluno,Ma.Assunto_MensagemAluno,Ma.Lido_MensagemAluno, Ma.Mensagens_MensagemAluno from Mensagem_Aluno Ma Inner Join Aluno a on Ma.IdAluno = Ma.IdAluno where email_Aluno like '" + Session["Email"] + "'";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            if (dt.Tables[0].DefaultView.Count > 0)
            {
                Session["Nome"] = dt.Tables[0].DefaultView[0].Row["Nome_Aluno"];
                Session["Assunto"] = dt.Tables[0].DefaultView[0].Row["Assunto_MensagemAluno"];
                Session["email"] = dt.Tables[0].DefaultView[0].Row["email_Aluno"];
                Session["Mensagem"] = dt.Tables[0].DefaultView[0].Row["Mensagens_MensagemAluno"];
                Session["Lido"] = dt.Tables[0].DefaultView[0].Row["Lido_MensagemAluno"];

                txtNome.Text = Session["Nome"].ToString();
                txtAssunto.Text = Session["Assunto"].ToString();
                txtEmail.Text = Session["email"].ToString();
                txtMensagem.Text = Session["Mensagem"].ToString();
                txtLido.Text = Session["Lido"].ToString();
            }
            else
            {
                lbTexto.Visible = true;

                lbNome.Visible = false;
                lbAssunto.Visible = false;
                lbMensagem.Visible = false;
                lbLido.Visible = false;

                txtNome.Visible = false;
                txtAssunto.Visible = false;
                txtMensagem.Visible = false;
                txtLido.Visible = false;
            }
        }

        if (Session["logado"] != null)
        {
            Conexao c = new Conexao();
            c.conectar();
            String sql = "select CONVERT(char(10),a.data_MensagemAluno,101)[data_Mensagem], b.email_Aluno from Mensagem_Aluno a Inner Join Aluno b on a.IdALuno = b.IdAluno where email_Aluno like '" + Session["Email"] + "'";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            if (dt.Tables[0].DefaultView.Count > 0)
            {
                Session["Data"] = dt.Tables[0].DefaultView[0].Row["data_Mensagem"];
                txtData.Text = Session["Data"].ToString();
            }
            else
            {
                lbData.Visible = false;
                lbEmail.Visible = false;

                txtData.Visible = false;
                txtEmail.Visible = false;

            }
        }

        if (Session["logado"] != null)
        {
            Conexao c = new Conexao();
            c.conectar();
            String sql = "select Convert (char (10),a.data_MensagemFunc,101)[data_MensagemFunc], a.Assunto_MensagemFunc,a.Mensagens_MensagemFunc, d.email_Aluno from Mensagem_Funcionario a Inner Join Conversa_Func_Aluno b on a.IdMensagem_Func = b.IdMensagem_Func Inner Join Mensagem_Aluno c on b.IdMensagem_Aluno = c.IdMensagem_Aluno Inner Join Aluno d on c.IdAluno = d.IdAluno where email_Aluno like '" + Session["Email"] + "'";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            if (dt.Tables[0].DefaultView.Count > 0)
            {
                Session["AssuntoFunc"] = dt.Tables[0].DefaultView[0].Row["Assunto_MensagemFunc"];
                Session["MensagemFunc"] = dt.Tables[0].DefaultView[0].Row["Mensagens_MensagemFunc"];
                Session["Data"] = dt.Tables[0].DefaultView[0].Row["data_MensagemFunc"];

                txtNomeFunc.Text = Session["AssuntoFunc"].ToString();
                txtMensagemFunc.Text = Session["MensagemFunc"].ToString();
                txtDataFunc.Text = Session["Data"].ToString();
            }
            else
            {
                lbTexto2.Visible = true;
                lbNomeFunc.Visible = false;
                lbMensagemFunc.Visible = false;
                lbDataFunc.Visible = false;
                txtNomeFunc.Visible = false;
                txtMensagemFunc.Visible = false;
                txtDataFunc.Visible = false;
            }
        }
    }
}