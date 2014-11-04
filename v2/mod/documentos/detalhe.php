<div class="modal hide fade in" id="doc<?=$linha['doc_id'];?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    
    <form name="form" action="" method="post">

        <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h3 id="myModalLabel"><?= "documentos"?></h3>
        </div>

        <div class="modal-body">

            <p>
                
                <ul class="nav nav-tabs nav-stacked">
                    <?php
                    $sql_doc_id = "SELECT * FROM documentos WHERE AND doc_id='{$linha['doc_id']}' ORDER BY doc_id DESC";
                    $res_doc_id = sql($sql_seg_id);
                    $linha_doc_id = mysql_fetch_array($res_seg_id);
                    echo "<h4>{$linha_doc_id['doc_nome']}</h4>";
                    echo nl2br($linha_doc_id['doc_descricao']);
                    if ($linha_doc_id['doc_url'] != "") { echo "<p><i class='icon-file'></i> ".$linha_seg_id['doc_url']."<p>"; }
                    ?>
                    
                </ul>

                
            </p>

        </div>

        <div class="modal-footer">
            <button class="btn" data-dismiss="modal" aria-hidden="true"><?="fechar"?></button>
        </div>
        
    </form>
    
</div>