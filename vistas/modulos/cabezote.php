<header class="main-header">

    <!--==========================================================================================================================================
    LOGOTIPO
    ===========================================================================================================================================-->
    <a href="inicio" class="logo">

        <!-- LOGO MINI -->
        <span class="logo-mini">
            <img src="vistas/img/plantilla/logo3.png" class="img-responsive" style="padding: 10px">
        </span>

        <!-- LOGO NORMAL -->
        <span class="logo-lg">
            <img src="vistas/img/plantilla/logohorizontal3.png" class="img-responsive" style="padding: 10px 0px">
        </span>

    </a>

    <!--==========================================================================================================================================
    BARRA DE NAVEGACIÓN
    ===========================================================================================================================================-->
    <nav class="navbar navbar-static-top" role="navigation">

        <!-- BOTÓN DE NAVEGACIÓN -->
        <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">

            <span class="sr-only">Toggle navigation</span>

        </a>

        <!-- PERFIL DE USUARIO -->
        <div class="navbar-custom-menu">

            <ul class="nav navbar-nav">

                <li class="dropdown user user-menu">

                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">

                    <?php
                    
                    if($_SESSION["foto"] != ""){

                        echo '<img src="'.$_SESSION["foto"].'" class="user-image">';

                    }else{

                        echo '<img src="vistas/img/usuarios/default/anonymous.png" class="user-image">';

                    }
                    
                    ?>

                        <span class="hidden-xs"><?php echo $_SESSION["nombre"] ?></span>

                    </a>

                    <!-- Dropdown-toggle -->
                    <ul class="dropdown-menu">

                        <li class="user-body">

                            <div class="pull-right">

                                <a href="salir" class="btn btn-default btn-flat">Salir</a>

                            </div>

                        </li>

                    </ul>

                </li>

            </ul>

        </div>

    </nav>

</header>