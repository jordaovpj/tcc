<nav class="navbar navbar-default" role="navigation">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand">Escala Inteligente</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">|</a></li>

                <li><a href="?pag=adm"><span class="glyphicon glyphicon-home"></span>&nbspHome</a></li>
                <li><a href="?pag=ocorrencia"><span class="glyphicon glyphicon-exclamation-sign"></span>&nbspOcorrências</a></li>
                <li><a href="?pag=militar"><span class="glyphicon glyphicon-user"></span>&nbspEfetivo</a></li>
                <li><a href="?pag=documento"><span class="glyphicon glyphicon-folder-open"></span>&nbspDocumentos</a></li>
                <li><a href="?pag=material"><span class="glyphicon glyphicon-list-alt"></span>&nbspMaterial</a></li>
                <li><a href="?pag=chave"><span class="glyphicon glyphicon-list-alt"></span>&nbspClaviculário</a></li>
                <li><a href="?pag=viatura"><span class="glyphicon glyphicon-list-alt"></span>&nbspViaturas</a></li>
                <li><a href="#">|</a></li>
                <li><a href="#"><span class="glyphicon glyphicon-user"></span> <?=$_SESSION['mil_guerra']?></a></li>
                <li><a href="?pag=../sair"><span class="glyphicon glyphicon-off"></span>&nbsp;Sair</a></li>


            </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>