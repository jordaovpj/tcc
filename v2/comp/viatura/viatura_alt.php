<?php
// antes de enviar os dados do formulario


if (!$_POST) {
    // pegar os dados atraves do ID via GET
    $via_id = $_GET['via_id'];

    //buscar no BD todos os campos da tabela
    $res = mysql_query( "SELECT * FROM viatura WHERE via_id='$via_id'");
    $linha = mysql_fetch_array($res);

    // transforma todos os campos do resultado da query em variáveis
    extract($linha);

} else {

//se submeter o formulario com as atualizações

// recebe os dados do formulário
    extract($_POST);

// validar dados
    if (($via_modelo == '') || ($via_placa=='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }


    if (!isset($erro)){

        $via_modelo = mysql_real_escape_string(strtoupper($via_modelo));
        $via_placa = mysql_real_escape_string(strtoupper($via_placa));

        // update do registro
        $sql = "UPDATE viatura SET
        via_modelo = '$via_modelo',
        via_placa ='$via_placa'
        WHERE via_id = '$via_id'";

        mysql_query($sql) or die (mysql_error());

        // mensagem de sucesso
        $msg = "Alterado com Sucesso!!!";
        header("location: ?pag=viatura&msg=$msg");

    }
}
?>

<section>
    <div class="container">

        <h2>Alterar Viatura</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>

        <form action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-md-4">

                    <input type="hidden" class="form-control" name="via_id" value="<?=$via_id;?>">

                    <div class="form-group">
                        <label>Modelo*:</label>
                        <input type="text" class="form-control" name="via_modelo" value="<?=$via_modelo;?>">
                    </div>

                    <div class="form-group">
                        <label>Placa*:</label>
                        <input type="text" class="form-control" name="via_placa" value="<?=$via_placa;?>">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="enviar" name="enviar">
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>