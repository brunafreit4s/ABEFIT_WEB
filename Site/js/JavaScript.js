$(document).ready(main);

var contador = 1;

function main() {
    $('.menu_bar').click(function () {

        if (contador == 1) {
            $('nav').animate({
                left: '0'
            });
            contador = 0;
        } else {
            contador = 1;
            $('nav').animate({
                left: '-100%'
            });
        }

    });

};
/* arrumar
function validarTxt() { 
    var Textbox = document.getElementById('txtLogin').value;
    var Textbox2 = document.getElementById('txtSenha').value;
    if ((Textbox.length >= 5) && (Textbox2.length >= 5)) {
        alert('Seja Bem Vindo(a)');
        document.getElementById('txtLogin').value = "";
        document.getElementById('txtSenha').value = "";
       
    }
    else{
        alert('Digite um E-mail e uma Senha corretos!');
        document.getElementById('txtLogin').value = "";
        document.getElementById('txtSenha').value = "";
    }
}

function Teste() {
    alert('Senha Alterada Com Sucesso!');
}
*/