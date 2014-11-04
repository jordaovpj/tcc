<?php

//extract($_POST);

// verificação se o  formulário submetido
if ($_POST){

session_start(); //inicia a variavel de sessão

    //recebendo dados do formulário
    $mil_login = $_POST['mil_login'];
    $mil_senha = $_POST['mil_senha'];

  //  var_dump($mil_login, $mil_senha);die;
    //conexão com o BD
    include "../../conexao.php";

    $sql = "SELECT * FROM militar WHERE mil_login='$mil_login' AND mil_senha='".md5($mil_senha)."'";
    $res = mysql_query($sql) or die (mysql_error());

    if (mysql_num_rows($res) > 0){

        $linha = mysql_fetch_array($res); //obtem o registro em questao como matriz

        //atribuindo a sessão os valores obtidos pela busca do SQL
        $_SESSION['mil_id'] = $linha['mil_id'];
        $_SESSION['mil_guerra'] = $linha['mil_guerra'];

        //redirecionando para a página ADM
        header("location: ../../adm.php");

    }else{

        $erro = "ERRO!!! dados incorretos!";
        header("location: ../../index.php?erro=$erro");

    }
}