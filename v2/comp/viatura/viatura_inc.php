<?php

if (isset($_POST['enviar'])) {


    $via_modelo = $_POST ["via_modelo"];
    $via_placa = $_POST ["via_placa"];

// validar dados
    if (($via_modelo == '') || ($via_placa=='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }

    if (!isset($erro)) {

        $via_modelo = mysql_real_escape_string(strtoupper($via_modelo));
        $via_placa = mysql_real_escape_string(strtoupper($via_placa));

        $sql = "insert into viatura (via_modelo,via_placa)
            values ('$via_modelo','$via_placa')";

        mysql_query($sql);

        // mensagem de sucesso
        $msg = "Incluído com Sucesso!!!";
        header("location: ?pag=viatura&msg=$msg");
    }
}
?>

<section>
    <div class="container">

        <h2>Incluir Viatura</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>

        <form action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-md-4">

                    <div class="form-group">
                        <label>Modelo*:</label>
                        <input type="text" class="form-control" name="via_modelo">
                    </div>

                    <div class="form-group">
                        <label>Placa*:</label>
                        <input type="text" class="form-control" name="via_placa">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="enviar" name="enviar">
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>
