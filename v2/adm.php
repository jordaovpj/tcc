<?php

session_start(); // Inicia dados de sessão


if (!isset($_GET['pag'])) { $_GET['pag'] = "adm"; }


if ($_GET['pag']){

    $token = explode('_',$_GET['pag']);

    $diretorio = $token[0];

}
include "conexao.php"
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <?php include "comp/adm/head.php"?>

</head>

<body>
<header>

    <?php include "comp/adm/header.php"?>

</header>

<div class="container-fluid">

    <?php include "comp/".$diretorio."/{$_GET['pag']}.php"; ?>

</div>

<?php include "comp/adm/footer.php"?>


</body>
</html>