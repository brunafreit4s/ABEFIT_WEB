<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true"
    CodeFile="contatos.aspx.cs" Inherits="page_contatos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="TextoContato">
        <br />
        <h5>Nos Envie uma mensagem:</h5>
        <br />

        <asp:TextBox runat="server" ID="txtidAluno" Enabled="false" Visible="false"></asp:TextBox>
        <asp:TextBox ID="txtData" runat="server" Visible="false"></asp:TextBox>
        <br />
        <br />

        <asp:Label runat="server" Text="*Nome:" ForeColor="White" Width="75px"></asp:Label>
        <asp:TextBox ID="txtNome" runat="server" Height="20px" Width="400px"></asp:TextBox>
        <br />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtNome" ErrorMessage="Digite seu Nome" ForeColor="White"></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label runat="server" Text="*E-mail:" ForeColor="White" Width="75px"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server" Height="20px" Width="400px"></asp:TextBox>
        <br />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtEmail" ErrorMessage="Digite um E-mail" ForeColor="White"></asp:RequiredFieldValidator>
        <br />
        <br />

        <asp:Label runat="server" Text="*Assunto:" ForeColor="White" Width="75px"></asp:Label>
        <asp:DropDownList runat="server" ID="txtAssunto" Width="400px" Height="20px"></asp:DropDownList>
        <br />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtAssunto" ErrorMessage="Selecione um Assunto" ForeColor="White"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />

        <asp:Label runat="server" Text="*Mensagem:" ForeColor="White"></asp:Label>
        <br />
        <br />

        <asp:TextBox runat="server" ID="txtMensagem" Height="250px" Width="550px" TextMode="MultiLine"></asp:TextBox>
        <br />
        <br />

        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtMensagem" ErrorMessage="Digite Uma Mensagem" ForeColor="White"></asp:RequiredFieldValidator>
        <br />
        <br />
        <br />

        <asp:Button runat="server" ID="EnviaContato" BackColor="#009999" BorderColor="#006666" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="43px" Text="Enviar" Width="95px" OnClick="EnviaContato_Click" />
        <asp:Button runat="server" ID="EnviaContatoAluno" BackColor="#009999" BorderColor="#006666" Font-Bold="True" Font-Italic="False" ForeColor="White" Height="43px" Text="Enviar" Width="95px" OnClick="EnviaContatoAluno_Click" Visible="False" />
    </div>
</asp:Content>
