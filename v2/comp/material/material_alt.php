<?php

// antes de enviar o botão (submeter o formulário) (verificar se o botão foi pressionado)

if (!$_POST){

    // receber o valor do ID do material - Via GET
    $mat_id = $_GET['mat_id'];

    // buscar no BD os dados dos campos
    $res = mysql_query("SELECT * FROM material WHERE mat_id='$mat_id'");
    $linha = mysql_fetch_array($res);

    // associar o valor as variáveis
    extract($linha);


} else {   // após submeter o formulário

    // recebe os dados do formulário
    extract($_POST);

    // validar dados
    if (($mat_descricao == '') || ($mat_quantidade =='')){
        $erro = "Preencha os campos obrigatórios!!!";
        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }


    if (!isset($erro)){


        // update do registro
        $sql = "UPDATE material SET
        mat_descricao = '$mat_descricao',
        mat_quantidade='$mat_quantidade'
        WHERE mat_id = '$mat_id'";

        mysql_query($sql) or die (mysql_error());

        // mensagem de sucesso
        $msg = "Alterado com Sucesso!!!";
        header("location: ?pag=material&msg=$msg");

    }

}

?>

<section>
    <div class="container">

        <h2>Alterar Material</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>
        <form action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <input type="hidden" name="mat_id" value="<?=$mat_id;?>">

                    <div class="form-group">
                        <label>Descrição*:</label>
                        <input type="text" class="form-control" name="mat_descricao" value="<?=$mat_descricao;?>">
                    </div>

                    <div class="form-group">
                        <label>Quantidade*:</label>
                        <input type="text" class="form-control" name="mat_quantidade" value="<?=$mat_quantidade;?>">
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar">
                    </div>
                </div>
            </div>
        </form>
    </div>

</section>

