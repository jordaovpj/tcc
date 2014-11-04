<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <h2><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Chaves</h2>
                <hr>
                <p><a href="?pag=chave_inc" class="btn btn-primary">incluir</a></p>

                <table border="1px" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th align="center" width="100">Acoes</th>
                        <th width="100">Chave</th>
                        <th >Setor</th>
                    </tr>

                    <?php
                    if (isset($_GET['msg'])){
                        $msg = $_GET['msg'];
                        ?>
                        <div class="alert alert-success" role="alert"><? echo $msg ?></div>
                    <? }

                    $sql = "SELECT * FROM chave";
                    $res = mysql_query($sql);

                    while($linha = mysql_fetch_array($res)) {
                        ?>

                        <tr>
                            <th>
                                <p><a href='?pag=chave_alt&cha_id=<?=$linha['cha_id'];?>' class='btn'><span class="glyphicon glyphicon-edit"></span> Editar</a></p>
                                <p><a href='?id=<?=$linha['cha_id'];?>' class='btn'"><span class="glyphicon glyphicon-trash"></span> Excluir</a></p>
                            </th>
                            <td align="center"><?=$linha['cha_nome'];?></td>
                            <td align="center"><?=$linha['cha_localidade'];?></td>
                        </tr>
                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</section>
