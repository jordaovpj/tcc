<?php

// excluir material

if (isset($_GET['mat_id'])){


    $sql = "DELETE FROM material WHERE mat_id='{$_GET['mat_id']}'";
    mysql_query($sql) or die (mysql_error());

    //mensagem de exclusão
    $msg_excluido = "excluido com sucesso";
}

?>
<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <h2><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Material</h2>
                <hr>
                <p><a href="?pag=material_inc" class="btn btn-primary">incluir</a></p>

                <table border="1px" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th align="center" width="110">Acoes</th>
                        <th>Material</th>
                        <th width="210">Quantidade</th>
                    </tr>

                    <?php
                    // mensagem de exclusao!!!
                    if (isset($msg_excluido)){
                        echo  @$msgexcluido;
                        ?>
                        <div class="alert alert-success" role="alert"><? echo $msg_excluido ?></div>
                    <? }

                    // mensagem de sucesso!!!
                    if (isset($_GET['msg'])){
                        $msg = $_GET['msg'];
                        ?>
                        <div class="alert alert-success" role="alert"><? echo $msg ?></div>
                    <? }

                    $sql = "SELECT * FROM material";
                    $res = mysql_query($sql);

                    while($linha = mysql_fetch_array($res)) {
                        ?>

                        <tr>
                            <th>
                                <p><a href='?pag=material_alt&mat_id=<?=$linha['mat_id'];?>' class='btn'><span class="glyphicon glyphicon-edit"></span> Editar</a></p>
                                <p><a href='?pag=material&mat_id=<?=$linha['mat_id'];?>' class='btn'"><span class="glyphicon glyphicon-trash"></span> Excluir</a></p>
                            </th>
                            <td align="center"><?=$linha['mat_descricao'];?></td>
                            <td align="center"><?=$linha['mat_quantidade'];?></td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</section>
