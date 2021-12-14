<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="sobre.aspx.cs" Inherits="page_sobre" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="TextoSobre">
        <br />
        <h5>Nossa História</h5>
        <h3>Uma equipe além da sua imaginação.</h3>

        <p>
            <i>
                A ABEFIT é uma empresa fictícia que visa atingir seus objetivos, o de satisfazer nossos cliente, 
                <br />
                e assim realizar a nossa maior missão.
                <br />
                Criada em 2016, a Abefit veio a nascer junto a um grupo de trabalho, 
                <br />
                onde vizamos o necessário às pessoas, 
                <br />
                para que se atinjam um caminho melhor de qualidade de vida.
            </i>
        </p>

        <img src="../img/img-vivara.png" width="50%" height="30%" />
        <h5>Quem Somos</h5>
        <h3>ABEFIT</h3>

        <i>
            Uma equipe que acredita, além de sua capacidade. Acreditamos em nossos clientes acima de tudo.
            <br />
            Nossos profissionais ajudam na sua rotina, surpreendendo você com os resultados futuros. 
        </i>

        <h5>Nossa Missão</h5>
        <h3>Ajudar você a atingir seu objetivo de melhorar sua qualidade de vida.</h3>
    </div>
</asp:Content>