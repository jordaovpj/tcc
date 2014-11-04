<?php

if (isset($_POST['enviar'])) {

    extract($_POST);

    // validar dados
    if (($mil_login == '') || ($mil_nome =='') ||  ($mil_perfil =='')){
        $erro = "Preencha os campos obrigatórios!!!";

        ?>

        <div class="alert alert-danger" role="alert"><? echo $erro ?></div>

    <? }



    if (!isset($erro)) {

        $mil_login = strtolower(mysql_real_escape_string($mil_login));
        $mil_senha = md5(mysql_real_escape_string($mil_senha));
        $mil_nome = strtoupper(mysql_real_escape_string($mil_nome));
        $mil_guerra = strtoupper(mysql_real_escape_string($mil_guerra));
        $mil_email = strtolower(mysql_real_escape_string($mil_email));

        $sql = "insert into militar (mil_login, mil_senha, mil_nome, mil_perfil, mil_ramal, mil_email, mil_guerra, pos_id, mil_setor)
        values ('$mil_login','$mil_senha','$mil_nome','$mil_perfil','$mil_ramal','$mil_email','$mil_guerra','$pos_id','$mil_setor')";

        mysql_query($sql)or die (mysql_error());

        // mensagem de sucesso
        $msg = "Incluído com Sucesso!!!";
        header("location: ?pag=militar&msg=$msg");
    }
}
?>

<section>
    <div class="container">
        <div class="container">

        <h2>Incluir Militar</h2>
            <p><span class="glyphicon glyphicon-star"></span> Campos obrigatórios (*)</p>
        <hr>

        <form name="form" action="" method="POST">

            <div class="row">

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <div class="form-group">
                        <label>Posto*:</label>
                        <?php include "mod/combo/pos_id.php"; ?>
                    </div>

                    <div class="form-group">
                        <label>Login*:</label>
                        <input class="form-control" type="text" name="mil_login">
                    </div>

                    <div class="form-group">
                        <label>Senha*:</label>
                        <input class="form-control" type="password" name="mil_senha">
                    </div>

                    <div class="form-group">
                        <label>Nome*:</label>
                        <input class="form-control" type="text" name="mil_nome">
                    </div>

                </div>

                <div class="col-xs-12 col-sm-4 col-md-4">

                    <div class="form-group">
                        <label>Nome de Guerra:</label>
                        <input type="text" class="form-control" name="mil_guerra">
                    </div>

                    <div class="form-group">
                        <label>Ramal:</label>
                        <input type="text" class="form-control" name="mil_ramal">
                    </div>

                    <div class="form-group">
                        <label>E-mail:</label>
                        <input type="text" class="form-control" name="mil_email">
                    </div>

                    <div class="form-group">
                        <label>Setor:</label>
                        <select class="form-control" size="1" name="mil_setor">
                            <option selected value="Selecione">Selecione </option>
                            <option value="TRANSPORTE">TRANSPORTE</option>
                            <option value="infraestrutura">INFRAETRUTURA</option>
                            <option value="usuarioComum">USUARIO COMUM</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label>Perfil*:</label><br>
                        <select class="form-control" size="1" name="mil_perfil">
                            <option selected value="Selecione">Selecione </option>
                            <option value="COMANDANTE">COMANDANTE</option>
                            <option value="SOLUCIONADOR">SOLUCIONADOR</option>
                            <option value="USUARIO COMUM">USUARIO COMUM</option>
                        </select> <br>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Incluir" name="enviar"><br><br>
            </div>

        </form>

    </div>

</section>
