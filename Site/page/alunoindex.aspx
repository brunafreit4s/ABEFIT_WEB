<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="alunoindex.aspx.cs" Inherits="page_alunoindex" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="textoAluno">
        <br />
        <asp:Label runat="server" Text="Seja Bem vindo(a)" Font-Size="Large" ForeColor="#009999" Width="150px" Height="25px"></asp:Label>
        <asp:Label ID="nomeAluno" runat="server" Enabled="False" Font-Size="Large" ForeColor="Black"></asp:Label>
        <br />
        <br />

        <asp:Label runat="server" Text="Gostaria de Alterar sua senha?:" Font-Italic="False" Font-Size="Large" ForeColor="#009999" Height="25px"></asp:Label>
        <br />
        <br />

        <asp:RadioButton runat="server" Text="Sim" ID="simaluno" AutoPostBack="True" OnCheckedChanged="simaluno_CheckedChanged" Font-Size="Large" ForeColor="#009999" Height="25px" Width="65px" />
        <br />
        <br />

        <div id="FormSenha">
            <asp:Label runat="server" Text="Senha Anterior: " Width="150px" Font-Size="Large" ForeColor="#009999"></asp:Label>
            <asp:TextBox runat="server" ID="txtSenhaAnterior" Enabled="false" Width="225px" Height="20px" TextMode="Password"></asp:TextBox>
            <br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenhaAnterior" ErrorMessage="Digite a senha anterior!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label runat="server" Text="Nova Senha: " Width="150px" Font-Size="Large" ForeColor="#009999"></asp:Label>
            <asp:TextBox runat="server" ID="txtConfirmaSenha" Enabled="false" Width="225px" Height="20px" TextMode="Password"></asp:TextBox>
            <br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtConfirmaSenha" ErrorMessage="Digite uma nova senha!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label runat="server" Text="Confirmação da Nova Senha: " Width="220px" Font-Size="Large" ForeColor="#009999"></asp:Label>
            <asp:TextBox runat="server" ID="txtNovaSenha" Enabled="False" Width="225px" TextMode="Password" Height="20px"></asp:TextBox>
            <br />

            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNovaSenha" ErrorMessage="Digite a nova senha novamente!" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />

            <asp:Label ID="lbAvisa" runat="server" ForeColor="Red"></asp:Label>
            <br />
            <br />
        </div>

        <asp:Button runat="server" ID="cancelaSenha" Text="Cancelar" BackColor="#009999" BorderColor="White" ForeColor="White" Height="33px" Width="67px" OnClick="enviaCancela_Click" OnClientClick="validaNovaSenha()" />
        <asp:Button runat="server" ID="enviaSenha" Text="Enviar" BackColor="#009999" BorderColor="White" ForeColor="White" Height="33px" Width="67px" OnClick="enviaSenha_Click" />
        <br />
        <br />
        <br />
        <br />

        <div id="infAluno1">
            <hr style="height: -8px; width: 895px; margin-bottom: 0px" />
            <br />

            <asp:Label runat="server" Text="Seu Plano Atual:" Font-Size="X-Large" ForeColor="#006666" Width="170px"></asp:Label>
            <asp:Label runat="server" Text="Teste" ID="lbPlano" Font-Size="X-Large" Width="110px"></asp:Label>
            <br />
            <br />
        </div>

        <div id="infAluno">
            <hr style="height: -8px; width: 895px; margin-bottom: 0px" />
            <div id="PlanoAluno">
                <br />

                <div id="txtEnder">
                    <asp:Label Text="-  Endereço  -" runat="server" Font-Size="X-Large" ForeColor="#3366cc"></asp:Label>
                </div>

                <div id="Hr">
                    <hr style="height: -8px; width: 400px; margin-bottom: 0px" />
                </div>
                <br />
                <br />

                <div id="divEnder">
                    <asp:Label ID="Label9" runat="server" Text="Cidade:" Font-Size="X-Large" ForeColor="#006666" Width="80px"></asp:Label>
                    <asp:Label runat="server" ID="lbCidade" Text="Cidade" Font-Size="X-Large" Width="300px"></asp:Label>
                    <br />
                    <br />
                    <br />

                    <asp:Label ID="Label7" runat="server" Text="Rua:" Font-Size="X-Large" ForeColor="#006666" Width="60px"></asp:Label>
                    <asp:Label runat="server" ID="lbRua" Text="Rua" Font-Size="X-Large" Width="350px"></asp:Label>
                    <br />
                    <br />
                    <br />

                    <asp:Label ID="Label5" runat="server" Text="UF:" Font-Size="X-Large" ForeColor="#006666" Width="50px"></asp:Label>
                    <asp:Label runat="server" ID="lbUf" Text="Uf" Font-Size="X-Large" Width="80px"></asp:Label>

                    <asp:Label ID="Label6" runat="server" Text="CEP:" Font-Size="X-Large" ForeColor="#006666" Width="65px"></asp:Label>
                    <asp:Label runat="server" ID="lbCep" Text="Cep" Font-Size="X-Large" Width="200px"></asp:Label>
                    <br />
                    <br />
                    <br />

                    <asp:Label ID="Label8" runat="server" Text="Número:" Font-Size="X-Large" ForeColor="#006666" Width="95px"></asp:Label>
                    <asp:Label runat="server" ID="lbNum" Text="Num" Font-Size="X-Large" Width="50px"></asp:Label>

                    <asp:Label ID="Label3" runat="server" Text="Complemento:" Font-Size="X-Large" ForeColor="#006666" Width="150px"></asp:Label>
                    <asp:Label runat="server" ID="lbComp" Text="Comp" Font-Size="X-Large" Width="100px"></asp:Label>
                    <br />
                    <br />
                    <br />

                    <asp:Label ID="Label4" runat="server" Text="Bairro:" Font-Size="X-Large" ForeColor="#006666" Width="85px"></asp:Label>
                    <asp:Label runat="server" ID="lbBairro" Text="Bairro" Font-Size="X-Large" Width="350px"></asp:Label>
                </div>
            </div>

            <br />

            <div id="txtDados">
                <asp:Label Text="-  Dados Pessoais  -" ForeColor="#3366cc" runat="server" Font-Size="X-Large"></asp:Label>
            </div>
            <hr style="height: -8px; width: 450px; margin-bottom: 0px" />

            <div id="divDadosP">
                <br />
                <br />

                <asp:Label runat="server" Text="Nome:" Font-Size="X-Large" ForeColor="#006666" Width="75px"></asp:Label>
                <asp:Label runat="server" ID="lbNome" Text="Nome" Font-Size="X-Large" Width="500px"></asp:Label>
                <br />
                <br />
                <br />

                <asp:Label runat="server" Text="Data de Nascimento:" Font-Size="X-Large" ForeColor="#006666" Width="215px"></asp:Label>
                <asp:Label runat="server" ID="lbData" Text="Data" Font-Size="X-Large" Width="200px"></asp:Label>
                <br />
                <br />
                <br />

                <asp:Label runat="server" Text="CPF:" Font-Size="X-Large" ForeColor="#006666" Width="60px"></asp:Label>
                <asp:Label runat="server" ID="lbCpf" Text="Cpf" Font-Size="X-Large" Width="200px"></asp:Label>

                <asp:Label ID="Label1" runat="server" Text="RG:" Font-Size="X-Large" ForeColor="#006666" Width="50px"></asp:Label>
                <asp:Label runat="server" ID="lbRg" Text="Rg" Font-Size="X-Large" Width="200px"></asp:Label>
                <br />
                <br />
                <br />

                <asp:Label runat="server" Text="Celular:" Font-Size="X-Large" ForeColor="#006666" Width="90px"></asp:Label>
                <asp:Label runat="server" ID="lbCel" Text="Celular" Font-Size="X-Large" Width="170px"></asp:Label>

                <asp:Label ID="Label2" runat="server" Text="Telefone:" Font-Size="X-Large" ForeColor="#006666" Width="100px"></asp:Label>
                <asp:Label runat="server" ID="lbTel" Text="Telefone" Font-Size="X-Large" Width="200px"></asp:Label>
                <br />
                <br />
                <br />

                <asp:Label runat="server" Text="E-Mail:" Font-Size="X-Large" ForeColor="#006666" Width="85px"></asp:Label>
                <asp:Label runat="server" ID="lbEmail" Text="E-mail" Font-Size="X-Large" Width="300px"></asp:Label>
            </div>
        </div>
    </div>
</asp:Content>

