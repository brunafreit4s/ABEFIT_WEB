 <%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="medidas.aspx.cs" Inherits="page_medidas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div id="lbEsquerda">
        <br />
        <asp:Label runat="server" Text="Data:" Font-Size="Large" Width="40px" ForeColor="Black"></asp:Label>
        <asp:Label ID="lbDatas" runat="server" Text="" Width="20px" ForeColor="#006666"></asp:Label>

        <br />
        <br />
        <br />
        <asp:Label runat="server" Text="Apto:" Font-Size="Large" Width="50px" ForeColor="Black"></asp:Label>
        <asp:Label ID="lbApto" runat="server" Font-Size="Large" Width="50px" ForeColor="#006666"></asp:Label>
        <br />
        <br />
        <br />
        
        <!-- Lado Esquerdo-->
        <asp:Label runat="server" Text="Lado Esquerdo" Font-Size="X-Large" Font-Bold="True" ForeColor="#006666"></asp:Label>
        <br />
        <br />
        <br />

        <asp:Label runat="server" Text="Altura:" Font-Size="Large" Width="55px" ForeColor="Black"></asp:Label>
        <asp:Label ID="lbAltura" runat="server" Font-Size="Large" ForeColor="#006666" Width="60px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Torax:" Font-Size="Large" ForeColor="Black" Width="50px"></asp:Label>
        <asp:Label ID="lbTorax" runat="server" Font-Size="Large" ForeColor="#006666" Width="60px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Abdômen:" Font-Size="Large" ForeColor="Black" Width="80px"></asp:Label>
        <asp:Label ID="lbAbdo" runat="server" Font-Size="Large" ForeColor="#006666" Width="60px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Cintura:" Width="65px" Font-Size="Large" ForeColor="Black"></asp:Label>
        <asp:Label ID="lbCintura" runat="server" Font-Size="Large" ForeColor="#006666" Width="60px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Ombro:" Font-Size="Large" ForeColor="Black" Width="60px"></asp:Label>
        <asp:Label ID="lbEscapular" runat="server" Font-Size="Large" ForeColor="#006666" Width="60px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Braço:" Font-Size="Large" ForeColor="Black" Width="50px"></asp:Label>
        <asp:Label ID="lbBracEsq" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Ante Braço:" Font-Size="Large" ForeColor="Black" Width="90px"></asp:Label>
        <asp:Label ID="lbAntBracEsq" runat="server" Font-Size="Large" ForeColor="#006666" Width="90px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Punho:" Font-Size="Large" ForeColor="Black" Width="55px"></asp:Label>
        <asp:Label ID="lbPunho" runat="server" Font-Size="Large" ForeColor="#006666" Width="60px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Coxa:" Font-Size="Large" ForeColor="Black" Width="45px"></asp:Label>
        <asp:Label ID="lbCoxaEsq" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Panturrilha:" Font-Size="Large" ForeColor="Black" Width="90px"></asp:Label>
        <asp:Label ID="lbPantEsq" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Peso:" Font-Size="Large" ForeColor="Black" Width="45px"></asp:Label>
        <asp:Label ID="lbPeso" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>

    </div>

    <div id="imgCentro">
        <asp:Image ImageUrl="~/img/01.jpg" runat="server" Width="90%" />
    </div>

    <!-- Lado Direito -->
    <div id="lbDireita">
        <asp:Label runat="server" Text="Lado Direito" Font-Bold="True" Font-Size="X-Large" ForeColor="#006666"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Label runat="server" Text="Braço:" Font-Size="Large" ForeColor="Black" Width="60px"></asp:Label>
        <asp:Label ID="lbBracDire" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Ante Braço:" Font-Size="Large" ForeColor="Black" Width="90px"></asp:Label>
        <asp:Label ID="lbAntBracDire" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Punho:" Font-Size="Large" ForeColor="Black" Width="60px"></asp:Label>
        <asp:Label ID="lbPunhoDire" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Coxa:" Font-Size="Large" ForeColor="Black" Width="60px"></asp:Label>
        <asp:Label ID="lbCoxaDire" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Panturrilha:" Font-Size="Large" ForeColor="Black" Width="90px"></asp:Label>
        <asp:Label ID="lbPantDire" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>
        <br />
        <br />
        <asp:Label runat="server" Text="Quadril:" Font-Size="Large" ForeColor="Black" Width="70px"></asp:Label>
        <asp:Label ID="lbQuadril" runat="server" Font-Size="Large" ForeColor="#006666" Width="50px"></asp:Label>


    </div>
</asp:Content>

