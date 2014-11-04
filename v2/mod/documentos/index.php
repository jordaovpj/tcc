<div class="col-xs-4 col-sm-4 col-md-4">
    <h2><small><span class="glyphicon glyphicon-folder-open"></span>&nbsp;Documentos</small></h2>
    <hr>
    <ul class="list-group">

        <?php
        $sql = "SELECT * FROM documentos";
        $res = mysql_query($sql);

        while($linha = mysql_fetch_array($res)) {
            ?>
            <li class="list-group-item"><?=$linha['doc_nome'];?></li>

        <?php } ?>

    </ul>
    <p style="text-align: right;"><a href="#docfull" data-toggle="modal"><span class="glyphicon glyphicon-plus"></span> Ver todos</i></a></p>
</div> <!-- Div Ultimos documentos-->