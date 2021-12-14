<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="planos.aspx.cs" Inherits="page_planos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <br />

    <div id="DataPlano">
        <asp:DataGrid runat="server" ID="tabelaPlanos" Font-Bold="False" ForeColor="#333333" Height="180px" Width="700px" Font-Size="Large" GridLines="None" CellPadding="4">
            <AlternatingItemStyle BackColor="White" />
            <EditItemStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#E3EAEB" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
        </asp:DataGrid>
    </div>

    <div id="foto3">
        <asp:Image runat="server" ImageUrl="~/img/academia.png" Height="250px" Width="60%" />
    </div>
</asp:Content>