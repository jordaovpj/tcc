<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <h2><span class="glyphicon glyphicon-folder-open"></span>&nbsp;Documentos</h2>
                <hr>
                <p><a href="?pag=documento_inc" class="btn btn-primary">incluir</a></p>

                <table border="1px" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th align="center" width="100">Acoes</th>
                        <th width ="200">Documento</th>
                        <th>Descrição</th>
                        <th width="150">Tipo</th>
                    </tr>

                    <?php
                    if (isset($_GET['msg'])){
                        $msg = $_GET['msg'];
                        ?>
                        <div class="alert alert-success" role="alert"><? echo $msg ?></div>
                    <? }

                    $sql = "SELECT * FROM documentos";
                    $res = mysql_query($sql);

                    while($linha = mysql_fetch_array($res)) {
                        ?>

                        <tr>
                            <th>
                                <p><a href='?pag=documento_alt&doc_id=<?=$linha['doc_id'];?>' class='btn'><span class="glyphicon glyphicon-edit"></span> Editar</a></p>
                                <p><a href='?id=<?=$linha['doc_id'];?>' class='btn'"><span class="glyphicon glyphicon-trash"></span> Excluir</a></p>
                            </th>
                            <td><?=$linha['doc_nome'];?></td>
                            <td> <?=$linha['doc_descricao'];?>                            </td>
                            <td align="center"><?=$linha['doc_tipo'];?></td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</section>
