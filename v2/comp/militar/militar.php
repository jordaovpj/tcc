<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <h2><span class="glyphicon glyphicon-user"></span>&nbspEfetivo</h2>
                <hr>
                <p><a href="?pag=militar_inc" class="btn btn-primary">incluir</a></p>

                <table border="1px" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th align="center" width="100">Acoes</th>
                        <th>Militar</th>
                        <th width="200">Ramal</th>
                        <th width="200">Email</th>
                    </tr>

                    <?php
                    if (isset($_GET['msg'])){
                        $msg = $_GET['msg'];

                        ?>
                        <div class="alert alert-success" role="alert"><? echo $msg ?></div>
                    <? }

                    $sql = "SELECT militar.mil_id,militar.mil_nome, militar.mil_senha, militar.mil_ramal,militar.mil_setor,militar.mil_guerra, militar.mil_email, posto.pos_nome
            FROM militar LEFT JOIN posto ON posto.pos_id=militar.pos_id";
                    $res = mysql_query($sql);

                    while($linha = mysql_fetch_array($res)) {

                        extract($linha);
                        ?>

                        <tr>
                            <th>
                                <p><a href='?pag=militar_alt&mil_id=<?=$linha['mil_id'];?>' class='btn'><span class="glyphicon glyphicon-edit"></span> Editar</a></p>
                                <p><a href='?id=<?=$linha['mil_id'];?>' class='btn'"><span class="glyphicon glyphicon-trash"></span> Excluir</a></p>
                            </th>

                            <td align="left"><?=$linha['mil_guerra'];?> - <?=$linha['pos_nome'];?><br>
                                <strong>Setor:</strong> <?=$linha['mil_setor'];?><br>
                                <strong>Nome:</strong>&nbsp;<?=$linha['mil_nome'];?><br>

                            </td>
                            <td> <?=$linha['mil_ramal'];?></td>
                            <td ><?=$linha['mil_email'];?></td>
                        </tr>

                    <?php } ?>

                </table>
            </div>
        </div>
    </div>

</section>
