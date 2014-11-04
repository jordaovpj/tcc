<?php
session_start(); // iniciar a sessão
session_destroy(); // matar a sessão
header("location: index.php"); // redirecionar para a página de login
?>
