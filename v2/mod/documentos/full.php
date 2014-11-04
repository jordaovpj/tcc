<div class="modal hide fade in" id="docfull" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    
    <form name="form" action="" method="post">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3 id="myModalLabel"><?="documentos"?></h3>
        </div>

        <div class="modal-body">

            <p>
                
                <ul class="nav nav-tabs nav-stacked">
                    <?php
                    $sql_docfull = "SELECT * FROM documentos ORDER BY doc_id DESC";
                    $res_docfull = sql($sql_docfull);
                    while($linha_docfull = mysql_fetch_array($res_docfull)){
                        
                        if ($linha_docfull['doc_url'] != ""){
                            echo "<p><i class='icon-file'></i> <a href='".$linha_docfull['doc_url']."' target='_blank'>{$linha_docfull['doc_nome']}</a></p>";
                        } else {
                            echo "<p><i class='icon-align-left'></i> <a href='' target='_blank'>{$linha_docfull['doc_nome']}</a></p>";
                        }
                        
                        if ($linha_docfull['doc_descricao'] != ""){
                            echo "<p>".nl2br($linha_docfull['doc_msg'])."</p>";
                        }
                    }
                    ?>
                    
                </ul>

                
            </p>

        </div>

        <div class="modal-footer">
            <button class="btn" data-dismiss="modal" aria-hidden="true"><?=$t_fech;?></button>
        </div>
        
    </form>
    
</div>