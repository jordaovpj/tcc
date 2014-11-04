<section>
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12">

                <h2><span class="glyphicon glyphicon-exclamation-sign"></span>&nbsp;Ocorrências</h2>
                <hr>
                <p><a href="?pag=ocorrencia_inc" class="btn btn-primary">incluir</a></p>

                <table border="1px" class="table table-striped table-bordered table-hover">
                    <tr>
                        <th width="100">Numero</th>
                        <th align="center" width="50">Titulo</th>
                        <th width="250">Setor</th>
                        <th width="100">Status</th>
                        <th width="100">Data / Hora</th>
                    </tr>

                    <?php

                    $sql = "SELECT * FROM ocorrencia";
                    $res = mysql_query($sql);

                    while($linha = mysql_fetch_array($res)) {
                        ?>

                        <tr>
                            <td align="center"><?=$linha['oco_id'];?></td>
                            <td align="center"><?=$linha['oco_titulo'];?></td>
                            <td align="center"><?=$linha['oco_setor'];?></td>
                            <td align="center"><?=$linha['oco_prioridade'];?></td>
                            <td align="center"><?=$linha['oco_data'];?> - <?=$linha['oco_hora'];?></td>
                        </tr>

                    <?php } ?>
                </table>
            </div>
        </div>
    </div>
</section>
