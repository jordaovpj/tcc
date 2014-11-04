<?php
// antes de enviar o botão (submeter o formulário) (verificar se o botão foi pressionado)

if (!$_POST){

    // receber o valor do ID do militar - Via GET
    $mil_id = $_GET['mil_id'];

    // buscar no BD os dados dos campos
    $res = mysql_query("SELECT * FROM militar WHERE mil_id='$mil_id'");
    $linha = mysql_fetch_array($res);

    // associar o valor as variáveis
    extract($linha);

} else {   // após submeter o formulário

    // recebe os dados do formulário
    extract($_POST);

    // valida dados
    // if ($pos_id == ""){ $erro = "ERRO!!! Selecione o posto!"; }


    if (!isset($erro)){

        if ($mil_senha != ""){ $senha = "mil_senha = '".md5($mil_senha)."',";} else { $senha = ""; }

        $mil_nome = strtoupper(mysql_real_escape_string($mil_nome));
        $mil_guerra = strtoupper(mysql_real_escape_string($mil_guerra));
        $mil_email = strtolower(mysql_real_escape_string($mil_email));

        // update do registro
        $sql = "UPDATE militar SET
        $senha
        pos_id = '$pos_id',
        mil_nome= '$mil_nome',
        mil_guerra='$mil_guerra',
        mil_ramal= '$mil_ramal',
        mil_email = '$mil_email',
        mil_setor='$mil_setor',
        mil_perfil='$mil_perfil'
        WHERE mil_id = '$mil_id'";

        mysql_query($sql) or die (mysql_error());

        // mensagem de sucesso
        $msg = "Alterado com Sucesso!!!";
        header("location: ?pag=militar&msg=$msg");
    }
}
?>

<section>
    <div class="container">
        <div class="container">

            <h2>Alterar Militar</h2>
            <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
            <hr>

            <form action="" method="POST">
                <div class="row">
                    <div class="col-xs-12 col-sm-4 col-md-4">

                        <input type="hidden" name="mil_id" value="<?=$mil_id;?>">

                        <div class="form-group">
                            <label>Posto*:</label>
                            <?php include "mod/combo/pos_id.php"; ?>
                        </div>

                        <div class="form-group">
                            <label>Login*:</label>
                            <p><strong><?=$mil_login;?></strong></p>
                        </div>

                        <div class="form-group">
                           <label> Senha:</label>
                            <input class="form-control" type="password" name="mil_senha">
                        </div>

                        <label>Nome*:</label>
                        <input class="form-control" type="text" name="mil_nome" value="<?=$mil_nome;?>">
                    </div>

                    <div class="col-xs-12 col-sm-4 col-md-4">

                        <div class="form-group">
                            <label>Nome de Guerra*:</label>
                            <input type="text" class="form-control" name="mil_guerra" value="<?=$mil_guerra;?>">
                        </div>

                        <div class="form-group">
                            <label>Ramal:</label>
                            <input type="text" class="form-control" name="mil_ramal" value="<?=$mil_ramal;?>">
                        </div>


                        <div class="form-group">
                           <label> E-mail:</label>
                            <input type="text" class="form-control" name="mil_email" value="<?=$mil_email;?>">
                        </div>

                        <div class="form-group">
                            <label>Setor:</label>
                            <select class="form-control" size="1" name="mil_setor">
                                <option value="transporte" <?php if ($mil_setor == "transporte") { echo "selected"; } ?>>TRANSPORTE</option>
                                <option value="infraestrutura" <?php if ($mil_setor == "infraestrutura") { echo "selected"; } ?>>INFRAETRUTURA</option>
                                <option value="usuarioComum" <?php if ($mil_setor == "usuarioComum") { echo "selected"; } ?>>USUARIO COMUM</option>
                            </select>
                        </div>

                        <div class="form-group">
                            <label>Perfil:</label>
                            <select class="form-control" size="1" name="mil_perfil">
                                <option value="COMANDANTE"<?php if ($mil_setor == "COMANDANTE") { echo "selected"; } ?>>COMANDANTE</option>
                                <option value="SOLUCIONADOR"<?php if ($mil_setor == "SOLUCIONADOR") { echo "selected"; } ?>>SOLUCIONADOR</option>
                                <option value="USUARIO COMUM"<?php if ($mil_setor == "USUARIO COMUM") { echo "selected"; } ?>>USUARIO COMUM</option>
                            </select>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-primary" value="Incluir" name="enviar">
                </div>
            </form>
        </div>
</section>