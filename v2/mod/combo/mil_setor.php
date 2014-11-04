<select class="form-control" size="1" name="mil_setor">
    <?php
    $sql_setor = "SELECT * FROM militar ORDER BY mil_setor";
    $res_setor = mysql_query($sql_setor);
    while($linha_setor = mysql_fetch_array($res_setor)){
    ?>

        <option value="<?=$linha_setor['mil_setor'];?>" <?php if (isset($mil_setor)) { if ($mil_setor == $linha_setor['mil_setor']) { echo "selected"; } } ?> ><?=$linha_setor['mil_setor'];?></option>

    <?php } ?>
</select>