<?php

if (isset($_POST['enviar'])) {

    $cha_nome = $_POST ["cha_nome"];
    $cha_localidade = $_POST ["cha_localidade"];

    // validar dados
    if (($cha_nome == '') || ($cha_localidade =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }

    if (!isset($erro)) {

        $cha_localidade = mysql_real_escape_string(strtoupper($cha_localidade));
        $cha_nome = mysql_real_escape_string(strtoupper($cha_nome));

        $sql = "insert into chave (cha_localidade,cha_nome)
            values ('$cha_localidade','$cha_nome')";

        mysql_query($sql);

        // mensagem de sucesso
        $msg = "Incluído com Sucesso!!!";
        header("location: ?pag=chave&msg=$msg");
    }
}
?>

<section>
    <div class="container">

        <h2>Incluir Chave</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>
        <form action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <div class="form-group">
                        <label>Nome*:</label>
                        <input type="text" class="form-control" name="cha_nome">
                    </div>

                    <div class="form-group">
                        <label>Localidade*:</label>
                        <input type="text" class="form-control" name="cha_localidade">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar"><br>
                    </div>
                </div>
            </div>
        </form>
    </div>

</section>