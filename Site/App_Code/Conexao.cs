using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Conexao
/// </summary>
public class Conexao
{
    public SqlConnection conexao;
    public SqlCommand command;
    //string strConexao = "Server=localhost;DataBase=ABEFIT;user id=aluno; password=etesp";
    //string strConexao = "Server=localhost;DataBase=ABEFIT; user id=sa;password=12345";
    string strConexao = "Server=localhost;DataBase=ABEFIT; Trusted_Connection=True";
    //string strConexao = "Inital Catalog=ABEFIT;Integrated Security=True; Data Source="+ Environment.MachineName;

    public void conectar()
    {

        conexao = new SqlConnection(strConexao);
        conexao.Open();
        command = new SqlCommand();
        command.Connection = conexao;


    }

    public void fechaConexao()
    {
        conexao.Close();
        conexao = null;
        command = null;

    }

}
