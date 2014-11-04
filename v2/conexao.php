<?php
// conexão com o banco de dados
$database = "escala";
$host = "localhost";
$user = "root";
$password = "";

$c = mysql_connect($host,$user,$password);
mysql_select_db($database) or die (('erro na rotina de conexao com o BD:'.mysql_error()));
