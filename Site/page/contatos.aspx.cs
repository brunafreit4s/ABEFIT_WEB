using System;
using System.Data;
using System.Data.SqlClient;

public partial class page_contatos : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logado"] == null)
        {
            txtAssunto.Items.Add("Dúvida");
            txtAssunto.Items.Add("Opinião");
            txtAssunto.Items.Add("Reclamação");

            EnviaContato.Visible = true;
            EnviaContatoAluno.Visible = false;
            txtData.Text = DateTime.Now.ToShortDateString();
        }
        else
        {
            txtAssunto.Items.Add("Dúvida");
            txtAssunto.Items.Add("Opinião");
            txtAssunto.Items.Add("Reclamação");

            txtNome.Enabled = false;
            txtEmail.Enabled = false;

            EnviaContato.Visible = false;
            EnviaContatoAluno.Visible = true;

            Conexao c = new Conexao();
            c.conectar();
            String sql = "select IdAluno,Nome_Aluno,email_Aluno from Aluno where email_Aluno like '" + Session["email"] + "'";
            c.command.CommandText = sql;
            SqlDataAdapter dAdapter = new SqlDataAdapter();
            DataSet dt = new DataSet();
            dAdapter.SelectCommand = c.command;
            dAdapter.Fill(dt);
            c.fechaConexao();

            Session["idAluno"] = dt.Tables[0].DefaultView[0].Row["IdAluno"];
            Session["nome"] = dt.Tables[0].DefaultView[0].Row["Nome_Aluno"];
            Session["email"] = dt.Tables[0].DefaultView[0].Row["email_Aluno"];
            txtidAluno.Text = Session["idAluno"].ToString();
            txtNome.Text = Session["nome"].ToString();
            txtEmail.Text = Session["email"].ToString();
            txtidAluno.Visible = false;
            txtData.Text = DateTime.Now.ToShortDateString();
        }
    }

    protected void EnviaContato_Click(object sender, EventArgs e)
    {
        //Mensagem de quem não é Aluno
        Conexao c = new Conexao();
        c.conectar();
        String nome = txtNome.Text;
        String email = txtEmail.Text;
        String assunto = txtAssunto.Text;
        String mensagem = txtMensagem.Text;
        String data = txtData.Text;
        String Lido = "Não";

        String sql = "insert into Mensagem(Nome_Mensagem, email_Mensagem, Assunto_Mensagem, Mensagens_Mensagem, data_Mensagem, Lido_Mensagem) values" + "(@nome, @email, @assunto, @mensagem, @data,@Lido)";
        c.command.Parameters.Add("@assunto", SqlDbType.VarChar).Value = assunto;
        c.command.Parameters.Add("@nome", SqlDbType.VarChar).Value = nome;
        c.command.Parameters.Add("@email", SqlDbType.VarChar).Value = email;
        c.command.Parameters.Add("@mensagem", SqlDbType.VarChar).Value = mensagem;
        c.command.Parameters.Add("@data", SqlDbType.VarChar).Value = data;
        c.command.Parameters.Add("@lido", SqlDbType.VarChar).Value = Lido;

        c.command.CommandText = sql;
        c.command.ExecuteNonQuery();
        c.fechaConexao();

        txtNome.Text = "";
        txtEmail.Text = "";
        txtMensagem.Text = "";
        Response.Write("<script>alert('Mensagem Enviada com Sucesso, sua Resposta será enviada através do seu E-Mail!');</script>");
    }

    protected void EnviaContatoAluno_Click(object sender, EventArgs e)
    {
        //Mensagem de quem é Aluno
        Conexao c = new Conexao();
        c.conectar();
        String assunto = txtAssunto.Text;
        String mensagem = txtMensagem.Text;
        String aluno = txtidAluno.Text;
        String Data = txtData.Text;
        String Lido = "Não";

        String sql = "insert into Mensagem_Aluno(IdAluno, Assunto_MensagemAluno, Mensagens_MensagemAluno, data_MensagemAluno,Lido_MensagemAluno) values" + "(@idAluno,@Assunto,@Mensagem, @Data, @lido)";
        c.command.Parameters.Add("@idAluno", SqlDbType.VarChar).Value = aluno;
        c.command.Parameters.Add("@Data", SqlDbType.VarChar).Value = Data;
        c.command.Parameters.Add("@Assunto", SqlDbType.VarChar).Value = assunto;
        c.command.Parameters.Add("@Mensagem", SqlDbType.VarChar).Value = mensagem;
        c.command.Parameters.Add("@lido", SqlDbType.VarChar).Value = Lido;

        c.command.CommandText = sql;
        c.command.ExecuteNonQuery();
        c.fechaConexao();

        txtMensagem.Text = "";
        Response.Write("<script>alert('Mensagem Enviada com Sucesso, Por favor verifique a Respota na Página de Mensagem');</script>");
    }
}