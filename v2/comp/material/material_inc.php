<?php

if (isset($_POST['enviar'])) {

    $mat_descricao = $_POST ["mat_descricao"];
    $mat_quantidade = $_POST ["mat_quantidade"];

    // validar dados
    if (($mat_descricao == '') || ($mat_quantidade =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }


    if (!isset($erro)) {


        $sql = "insert into material (mat_descricao,mat_quantidade)
            values ('$mat_descricao','$mat_quantidade')";

        mysql_query($sql);

        // mensagem de sucesso
        $msg = "Incluído com Sucesso!!!";
        header("location: ?pag=material&msg=$msg");
    }
}
?>

<section>
    <div class="container">

        <h2>Incluir Material</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>
        <form action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <div class="form-group">
                        <label>Descrição*:</label>
                        <input type="text" class="form-control" name="mat_descricao">
                    </div>

                    <div class="form-group">
                        <label>Quantidade*:</label>
                        <input type="text" class="form-control" name="mat_quantidade">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar">
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>

