<select class="form-control" size="1" name="pos_id">
    <?php
    $sql_posto = "SELECT * FROM posto ORDER BY pos_id";
    $res_posto = mysql_query($sql_posto);
    while($linha_posto = mysql_fetch_array($res_posto)){
    ?>

        <option value="<?=$linha_posto['pos_id'];?>" <?php if (isset($pos_id)) { if ($pos_id == $linha_posto['pos_id']) { echo "selected"; } } ?> ><?=$linha_posto['pos_nome'];?></option>

    <?php } ?>
</select>