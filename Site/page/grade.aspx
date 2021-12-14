<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="grade.aspx.cs" Inherits="page_grade" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="ComboBox">
        <!-- DropDown 2 Controla Dia da Semanha -->
        <br />

        <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="Dia_Semana" DataValueField="Dia_Semana" Font-Size="Medium"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ABEFITConnectionString %>" SelectCommand="SELECT DISTINCT [Dia_Semana] FROM [Horario]"></asp:SqlDataSource>
        <br />
        <br />

        <!--Drop Down 3 Controla Modalidade -->
        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="Modalidade" DataValueField="IdModalidade" Font-Size="Medium"></asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ABEFITConnectionString %>" SelectCommand="SELECT [Modalidade], [IdModalidade] FROM [Modalidade]"></asp:SqlDataSource>
        <br />
        <br />

        <asp:Button ID="Button1" runat="server" Text="Pesquisar" Width="100px" Height="30px" BackColor="#006666" BorderColor="White" Font-Bold="False" Font-Italic="False" Font-Size="Medium" ForeColor="White" />
    </div>

    <div id="datagrid">
        <!-- GridView -->
        <br />
        <br />
        <br />
        <br />

        <asp:GridView ID="GridView1" Width="700px" Height="200px" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="#333333" GridLines="None">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Horarios" HeaderText="Horários" SortExpression="Horarios" />
                <asp:BoundField DataField="Dia_Semana" HeaderText="Dia da Semana" SortExpression="Dia_Semana" />
                <asp:BoundField DataField="Modalidade" HeaderText="Modalidade" SortExpression="Modalidade" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ABEFITConnectionString %>"
            SelectCommand="SELECT H.Horarios, H.Dia_Semana, M.Modalidade FROM Horario AS H INNER JOIN Horario_Modalidade AS HM ON H.IdHorario = HM.IdHorario INNER JOIN Modalidade AS M ON HM.IdModalidade = M.IdModalidade where 
            m.idmodalidade =@mod and h.dia_semana like @dia"
            OnSelecting="SqlDataSource4_Selecting">
            <SelectParameters>
                <asp:ControlParameter ControlID="DropDownList3" Name="mod" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="DropDownList2" Name="dia" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>

