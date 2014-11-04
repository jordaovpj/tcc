<?php
// antes de enviar o botão (submeter o formulário) (verificar se o botão foi pressionado)

if (!$_POST){

    // receber o valor do ID do documento - Via GET
    $doc_id = $_GET['doc_id'];

    // buscar no BD os dados dos campos
    $res = mysql_query("SELECT * FROM documentos WHERE doc_id='$doc_id'");
    $linha = mysql_fetch_array($res);

    // associar o valor as variáveis
    extract($linha);


} else {

    // após submeter o formulário

    // recebe os dados do formulário
    extract($_POST);

    // validar dados
    if (($doc_nome == '') || ($doc_tipo =='') || ($doc_url =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>
        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>
    <? }

    if (!isset($erro)){

        $doc_nome = mysql_real_escape_string(strtoupper($doc_nome));

        // update do registro
        $sql = "UPDATE documentos SET
        doc_nome = '$doc_nome',
        doc_tipo ='$doc_tipo',
        doc_descricao = '$doc_descricao',
        doc_url = '$doc_url'
        WHERE doc_id = '$doc_id'";

        mysql_query($sql) or die (mysql_error());

        // mensagem de sucesso
        $msg = "Alterado com Sucesso!!!";
        header("location: ?pag=documento&msg=$msg");
    }
}

?>

<section>
    <div class="container">

        <h2>Alterar Documentos</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>

        <form action="" method="post">
            <div class="row">
                <div class="col-xs-12 col-sm-4 col-md-4">

                    <input type="hidden" name="doc_id" value="<?=$doc_id;?>">


                    <div class="form-group">
                        <label>Nome*:</label>
                        <input type="text" class="form-control" name="doc_nome" value="<?=$doc_nome;?>">
                    </div>

                    <div class="form-group">
                        <input type="file"  name="file">
                    </div>

                    <div class="form-group">
                        <label> Tipo*:</label>
                        <input type="text" class="form-control" name="doc_tipo" value="<?=$doc_tipo;?>">
                    </div>

                    <div class="form-group">
                        <label>URL*:</label>
                        <input type="text" class="form-control" name="doc_url" value="<?=$doc_url;?>">
                    </div>

                    <div class="form-group">
                        <label>Descrição:</label>
                        <textarea class="form-control" rows="5" name="doc_descricao"><?=$doc_descricao;?></textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar">
                    </div>

                </div>
            </div>
        </form>
    </div>
</section>
