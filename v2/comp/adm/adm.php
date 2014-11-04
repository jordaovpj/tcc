<section>

    <div class="container">

            <h2><span class="glyphicon glyphicon-home"></span>&nbsp;HOME</h2>

        <div class="row">
            <div class="col-xs-8 col-sm-8 col-md-8">
                <h2><small><span class="glyphicon glyphicon-exclamation-sign"></span>&nbsp;Ocorrências</small></h2>
                <hr>
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

            <?php include ("/../../mod/documentos/index.php"); ?>

        </div>
    </div>
</section>

