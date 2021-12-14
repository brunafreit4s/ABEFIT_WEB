<%@ Page Title="" Language="C#" MasterPageFile="~/page/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="page_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
    <script type="text/javascript" src="../js/JavaScript.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="Banner">
        <br />
        <div id="flashContent">
            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="960" height="340" id="Object1" align="middle">
                <param name="movie" value="banner.swf" />
                <param name="quality" value="high" />
                <param name="bgcolor" value="#454545" />
                <param name="play" value="true" />
                <param name="loop" value="true" />
                <param name="wmode" value="window" />
                <param name="scale" value="showall" />
                <param name="menu" value="true" />
                <param name="devicefont" value="false" />
                <param name="salign" value="" />
                <param name="allowScriptAccess" value="sameDomain" />
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="banner.swf" width="960" height="340">
                    <param name="movie" value="banner.swf" />
                    <param name="quality" value="high" />
                    <param name="bgcolor" value="#454545" />
                    <param name="play" value="true" />
                    <param name="loop" value="true" />
                    <param name="wmode" value="window" />
                    <param name="scale" value="showall" />
                    <param name="menu" value="true" />
                    <param name="devicefont" value="false" />
                    <param name="salign" value="" />
                    <param name="allowScriptAccess" value="sameDomain" />
                    <!--<![endif]-->
                    <a href="http://www.adobe.com/go/getflash">
                        <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
                            alt="Obter Adobe Flash Player" />
                    </a>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
        <br />
    </div>

    <div id="Galeria">
        <div id="Div1">
            <object classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" width="650" height="650"
                id="Object2" align="middle">
                <param name="movie" value="galeria.swf" />
                <param name="quality" value="high" />
                <param name="bgcolor" value="#ffffff" />
                <param name="play" value="true" />
                <param name="loop" value="true" />
                <param name="wmode" value="window" />
                <param name="scale" value="showall" />
                <param name="menu" value="true" />
                <param name="devicefont" value="false" />
                <param name="salign" value="" />
                <param name="allowScriptAccess" value="sameDomain" />
                <!--[if !IE]>-->
                <object type="application/x-shockwave-flash" data="galeria.swf" width="650" height="650">
                    <param name="movie" value="galeria.swf" />
                    <param name="quality" value="high" />
                    <param name="bgcolor" value="#ffffff" />
                    <param name="play" value="true" />
                    <param name="loop" value="true" />
                    <param name="wmode" value="window" />
                    <param name="scale" value="showall" />
                    <param name="menu" value="true" />
                    <param name="devicefont" value="false" />
                    <param name="salign" value="" />
                    <param name="allowScriptAccess" value="sameDomain" />
                    <!--<![endif]-->
                    <a href="http://www.adobe.com/go/getflash">
                        <img src="http://www.adobe.com/images/shared/download_buttons/get_flash_player.gif"
                            alt="Obter Adobe Flash Player" />
                    </a>
                    <!--[if !IE]>-->
                </object>
                <!--<![endif]-->
            </object>
        </div>
    </div>

    <br />

    <div id="TextoHome">
        <h5>Experiência completa somente na </h5>

        <h3>ABEFIT</h3>

        <p>
            <i>
                Na ABEFIT temos várias modalidades de acordo com sua necessidade,
                <br />
                você pode fazer um treinamento voltado para melhora da força, resistência aeróbia e flexibilidade. 
                <br />
                &nbsp;&nbsp;&nbsp; É bastante interessante para quem deseja melhorar a sua própria performance esportiva.
                <br />
                &nbsp;&nbsp;&nbsp; Para quem está no assunto emagrecimento, a regra é suar!!!.
                <br />
                &nbsp;&nbsp;&nbsp; Assim aqui você encontra vários treinamentos de musculação associado a prática de exercícios,                     
                <br />
                &nbsp;&nbsp;&nbsp; que irão te ajudar muito neste processo, e tornando esse processo longo, em curto tempo.
            </i>
        </p>
    </div>

    <div id="espaco"></div>

    <div id="TextoHome2">
        <h5>Venha você também para</h5>

        <h3>ABEFIT</h3>

        <i>Conheça uma de nossas unidades, e encontre seu objetivo aqui.</i>
    </div>

</asp:Content>

