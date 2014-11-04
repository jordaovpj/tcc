<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <h2><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Viaturas</h2>
                <hr>
                <a href="?pag=viatura_inc" class="btn btn-primary">incluir</a><br><br>

                <table border="1px" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th align="center" width="100">Acoes</th>
                        <th>Modelo</th>
                        <th width="150">Placa</th>
                    </tr>

                    <?php

                    if (isset($_GET['msg'])){
                        $msg = $_GET['msg'];
                        ?>
                        <div class="alert alert-success" role="alert"><? echo $msg ?></div>
                    <? }

                    $sql = "SELECT * FROM viatura";
                    $res = mysql_query($sql);

                    while($linha = mysql_fetch_array($res)) {
                        ?>

                        <tr>
                            <th>
                                <p><a href='?pag=viatura_alt&via_id=<?=$linha['via_id'];?>' class='btn'><span class="glyphicon glyphicon-edit"></span> Editar</a></p>
                                <p><a href='?id=<?=$linha['via_id'];?>' class='btn'"><span class="glyphicon glyphicon-trash"></span> Excluir</a></p>
                            </th>
                            <td align="center"><?=$linha['via_modelo'];?></td>
                            <td align="center"><?=$linha['via_placa'];?></td>
                        </tr>

                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</section>
