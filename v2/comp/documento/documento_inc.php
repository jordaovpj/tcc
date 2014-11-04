<?php

if (isset($_POST['enviar'])) {

    $doc_nome = $_POST ["doc_nome"];
    $doc_tipo = $_POST ["doc_tipo"];
    $doc_descricao = $_POST ["doc_descricao"];
    $doc_url = $_POST ["doc_url"];


    // validar dados
    if (($doc_nome == '') || ($doc_tipo =='') || ($doc_url =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }

    if (!isset($erro)) {

        $doc_nome = mysql_real_escape_string(strtoupper($doc_nome));

        $sql = "insert into documentos (doc_nome,doc_tipo,doc_descricao,doc_url)
            values ('$doc_nome','$doc_tipo','$doc_descricao','$doc_url')";

        mysql_query($sql);

        // mensagem de sucesso
        $msg = "Incluído com Sucesso!!!";
        header("location: ?pag=documento&msg=$msg");
    }
}
?>

<section>
    <div class="container">

        <h2>Incluir Documentos</h2>
        <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>
        <form action="" method="post">

            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <div class="form-group">
                        <label>Nome*:</label>
                        <input type="text" class="form-control" name="doc_nome">
                    </div>

                    <div class="form-group">
                        <input type="file" name="file">
                    </div>

                    <div class="form-group">
                        <label>Tipo*:</label>
                        <input type="text" class="form-control" name="doc_tipo">
                    </div>

                    <div class="form-group">
                        <label>URL*:</label>
                        <input type="text" class="form-control" name="doc_url">
                    </div>

                    <div class="form-group">
                        <label>Descrição:</label>
                        <textarea class="form-control" rows="5" name="doc_descricao"></textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar" n>
                    </div>
                </div>
            </div>
        </form>
    </div>
</section>