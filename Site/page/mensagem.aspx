<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="mensagem.aspx.cs" Inherits="page_mensagem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="contMens">
        <br />
        <br />

        <div id="imgMensagem">
            <asp:Image runat="server" ImageUrl="~/img/note.png" Width="128px" />
        </div>

        <div id="imgCaneta">
            <asp:Image runat="server" ImageUrl="~/img/caneta.png" Width="128px" />
        </div>

        <div id="Mensagem">
            <br />
            <br />

            <div id="TextoMensagem2">
                <div id="SemMensagemAlu">
                    <asp:Label ID="lbTexto" runat="server" Visible="false" Text="Ainda não nos Enviou uma Mensagem" Font-Size="X-Large" ForeColor="#009999" Width="500px"></asp:Label>
                </div>

                <asp:Label ID="lbData" runat="server" Text="Data: " Font-Size="X-Large" ForeColor="#009999" Width="70px" Visible="false"></asp:Label>
                <asp:Label ID="txtData" runat="server" Text="Data" Font-Size="X-Large" ForeColor="black" Visible="false"></asp:Label>
                <br />
                <br />

                <asp:Label ID="lbNome" runat="server" Text="Nome: " Font-Size="X-Large" ForeColor="#009999" Width="70px"></asp:Label>
                <asp:Label ID="txtNome" runat="server" Text="Nome" Font-Size="X-Large" ForeColor="black"></asp:Label>
                <br />
                <br />

                <asp:Label ID="lbEmail" runat="server" Text="E-Mail: " ForeColor="#009999" Font-Size="X-Large" Width="80px"></asp:Label>
                <asp:Label ID="txtEmail" runat="server" Text="Email" Font-Size="X-Large" ForeColor="black"></asp:Label>
                <br />
                <br />

                <asp:Label ID="lbAssunto" runat="server" Text="Assunto: " Font-Size="X-Large" ForeColor="#009999" Width="90px"></asp:Label>
                <asp:Label ID="txtAssunto" runat="server" Text="Assunto" Font-Size="X-Large" ForeColor="black" Width="300px"></asp:Label>
                <br />
                <br />


                <asp:Label ID="lbLido" runat="server" Text="Lido: " Font-Size="X-Large" ForeColor="#009999" Width="60px"></asp:Label>
                <asp:Label ID="txtLido" runat="server" Text="lido" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                <br />
                <br />

                <asp:Label ID="lbMensagem" runat="server" Text="Mensagem: " Font-Size="X-Large" ForeColor="#009999" Width="125px"></asp:Label>
                <br />
                <br />

                <asp:Label ID="txtMensagem" runat="server" Text="Mensagem" ForeColor="black" Font-Size="X-Large" Height="100px"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>

        <br />
        <br />

        <div id="imgResposta">
            <asp:Image runat="server" ImageUrl="~/img/envelope.png" Width="128px" />
        </div>

        <div id="Resposta">
            <br />
            <br />

            <div id="TextoResposta">
                <div id="SemMensagemFunc">
                    <br />
                    <br />
                    <asp:Label ID="lbTexto2" runat="server" Visible="false" Text="Por Favor Aguarde a Resposta" Font-Size="X-Large" ForeColor="#009999" Width="300px"></asp:Label>
                </div>

                <asp:Label runat="server" ID="lbNomeFunc" Text="Assunto:" ForeColor="#009999" Font-Size="X-Large" Width="90px"></asp:Label>
                <asp:Label runat="server" ID="txtNomeFunc" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                <br />
                <br />

                <asp:Label runat="server" ID="lbDataFunc" Text="Data:" ForeColor="#009999" Font-Size="X-Large" Width="55px"></asp:Label>
                <asp:Label runat="server" ID="txtDataFunc" ForeColor="Black" Font-Size="X-Large"></asp:Label>
                <br />
                <br />

                <asp:Label runat="server" ID="lbMensagemFunc" Text="Mensagem:" ForeColor="#009999" Font-Size="X-Large" Width="120px"></asp:Label>
                <br />
                <br />
                <asp:Label runat="server" ID="txtMensagemFunc" ForeColor="Black" Font-Size="X-Large" Width="450px" Height="200px"></asp:Label>
            </div>
        </div>

        <div id="imgFunc">
            <asp:Image runat="server" ImageUrl="~/img/telemarketer.png" Width="128px" />
        </div>
    </div>
</asp:Content>