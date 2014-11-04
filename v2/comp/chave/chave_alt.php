<?php

// antes de enviar os dados do formulario


if (!$_POST) {
    // pegar os dados atraves do ID via GET
    $cha_id = $_GET['cha_id'];

    //buscar no BD todos os campos da tabela
    $res = mysql_query( "SELECT * FROM chave WHERE cha_id='$cha_id'");
    $linha = mysql_fetch_array($res);

    // transforma todos os campos do resultado da query em variáveis
    extract($linha);

} else {

    //se submeter o formulario com as atualizações

    // recebe os dados do formulário
    extract($_POST);

    // validar dados
    if (($cha_nome == '') || ($cha_localidade =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }


    if (!isset($erro)){

        $cha_localidade = mysql_real_escape_string(strtoupper($cha_localidade));
        $cha_nome = mysql_real_escape_string(strtoupper($cha_nome));

        // update do registro
        $sql = "UPDATE chave SET
        cha_nome = '$cha_nome',
        cha_localidade ='$cha_localidade'
        WHERE cha_id = '$cha_id'";

        mysql_query($sql) or die (mysql_error());

        // mensagem de sucesso
        $msg = "Alterado com Sucesso!!!";
        header("location: ?pag=chave&msg=$msg");

    }
}

?>

<section>
    <div class="container">

        <h2>Alterar Chave</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>
        <form action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <input type="hidden" name="cha_id" value="<?=$cha_id;?>">

                    <div class="form-group">
                        <label>Nome*:</label>
                        <input type="text" class="form-control" name="cha_nome" value=" <?=$cha_nome;?>">
                    </div>

                    <div class="form-group">
                        <label>Localidade*:</label>
                        <input type="text" class="form-control" name="cha_localidade" value="<?=$cha_localidade;?>">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar">
                    </div>

                </div>
            </div>
        </form>
    </div>
</section>
