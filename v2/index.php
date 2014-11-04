<?

header("Expires: Mon, 12 Jul 2010 11:52:00 GMT");
header("Cache-Control: no-cache");
header("Pragma: no-cache");
header("Content-Type: text/html, charset=utf-8");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="jquery-1.11.1.min.js"></script>

    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/css/bootstrap-theme.min.css">
    <script src="bootstrap/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="css/estilo.css">

    <title>PROJETO</title>

</head>

<body>
<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-4 col-md-offset-4">
                <h1 class="text-center login-title"></h1>
                <div class="account-wall">
                    <img class="profile-img" src="./imagens/General.png"
                         alt="">

                    <form class="form-signin" action="comp/login/login.php" method="post">
                        <input type="text" class="form-control" placeholder="Login" name="mil_login" required autofocus>
                        <input type="password" class="form-control" placeholder="Senha" name="mil_senha" required>

                        <button class="btn btn-lg btn-primary btn-block" type="submit">Entrar</button>
                    </form>

                </div>
                <?php if (isset($_GET['erro'])){
                    $erro = $_GET['erro'];
                ?>
                <div class="alert alert-danger" role="alert" align="center"><?=$erro?></div>
                <?}?>
            </div>

        </div>
    </div>
</section>
</body>
</html>

