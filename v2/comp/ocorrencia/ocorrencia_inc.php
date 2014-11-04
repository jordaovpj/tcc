<?php

if (isset($_POST['enviar'])) {

    $oco_setor = $_POST ["oco_setor"];
    $oco_titulo = $_POST ["oco_titulo"];
    $oco_descricao = $_POST ["oco_descricao"];


// validar dados
    if (($oco_setor == '') || ( $oco_titulo =='') || ($oco_descricao =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert" xmlns="http://www.w3.org/1999/html"><? echo $erro ?></div>

    <? }

    if (!isset($erro)) {

        $oco_titulo = mysql_real_escape_string(strtoupper($oco_titulo));
        $oco_descricao = mysql_real_escape_string($oco_descricao);

        $sql = "insert into ocorrencia (oco_setor,oco_titulo,oco_descricao)
            values ('$oco_setor','$oco_titulo','$oco_descricao')";

        mysql_query($sql);

        // mensagem de sucesso
        $msg = "Incluído com Sucesso!!!";
        header("location: ?pag=ocorrencia&msg=$msg");
    }
}
?>

<section>
    <div class="container">

        <h2>Relatar Ocorrência</h2>
        <h5>Os campos com (*) são obrigatórios!</h5>
        <hr>
        <form action="" method="post">

            <div class="row">
                <div class="col-xs-12 col-md-4">

                    <div class="form-group">
                        <label>Setor:</label>
                        <select class="form-control" name="oco_setor">
                            <option selected value="Selecione">Selecione o setor </option>
                            <option value="material">MATERIAL</option>
                            <option value="infraestrutura">INFRAESTRUTURA</option>
                            <option value="transporte">TRANSPORTE</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Título*:</label>
                        <input type="text" class="form-control" name="oco_titulo">
                    </div>

                    <div class="form-group">
                        <label>Descrição*:</label>
                        <textarea class="form-control" name="oco_descricao" rows="5"></textarea>
                    </div>

                    <div class="form-group">
                        <input type="submit" class="btn btn-primary" value="Incluir" name="enviar">
                    </div>
                </div>
            </div>
        </form>

    </div>

</section>