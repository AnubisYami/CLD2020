<?php require_once 'config.php'; ?>
<?php require_once DBAPI; ?>

<?php $db = open_database(); ?>


<?php session_start();
$usuario   = $_SESSION['usuarioNome'];

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description"
        content="Responsive sidebar template with sliding effect and dropdown menu based on bootstrap 3">
    <title>CLD - HOME</title>

    <!-- using online links -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css"
        integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css"
        integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <link rel="stylesheet" href="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.min.css">

    <!-- using local links -->
    <!-- <link rel="stylesheet" href="../node_modules/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="../node_modules/@fortawesome/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.css"> -->
   
     <link rel="stylesheet" href="src/css/main.css">
    <link rel="stylesheet" href="src/css/sidebar-themes.css">
    
      <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
    
     <link rel="shortcut icon" href="img/favicon.ico">
</head>

<body>
<!-- começo do wrapper -->
    <div class="page-wrapper default-theme sidebar-bg bg1 toggled">
        <nav id="sidebar" class="sidebar-wrapper">

            <div class="sidebar-content">
                <!-- sidebar-brand  -->
                <div class="sidebar-item sidebar-brand">
                    <a href="#">CLD 2020</a>
                    
                    <a id="toggle-sidebar" class="btn" href="#">
                            <i class="fas fa-bars"></i>
                        </a>
                </div>


                    
                <!-- sidebar-header  -->
                <div class="sidebar-item sidebar-header d-flex flex-nowrap">
                    <div class="user-pic">
                        <img class="img-responsive img-rounded" src="src/img/user.jpg" alt="User picture">
                    </div>

                    <div class="user-info">
                        <span class="user-name">
                          <?php
                          echo "".$_SESSION['usuarioNome'];;
                          ?>
                          
                        </span>
                        
                        <span class="user-status">
                            <i class="fa fa-circle"></i>
                            <span>Online</span>
                        </span>
                    </div>
                </div>
            
                <!-- sidebar-menu  -->
                <div class=" sidebar-item sidebar-menu">
                    <ul>
                        <li class="header-menu">
                            <span>Menu</span>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fa fa-user-graduate"></i>
                                <span class="menu-text"> Alunos </span>
                                
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="#">Cadastro 
                                        
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Editar</a>
                                    </li>
                                    <li>
                                        <a href="#">Advertencias</a>
                                    </li>
                                    <li>
                                      <a href="#">Relatorio de academicos</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                               <i class="fas fa-chalkboard-teacher"></i>
                                <span class="menu-text">Professor</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="#">Cadastro

                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">Editar</a>
                                    </li>
                                    <li>
                                        <a href="#">Relatorio</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                                <i class="fas fa-university"></i>
                                <span class="menu-text">Aulas</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="#">Adicionar aulas</a>
                                    </li>
                                    <li>
                                        <a href="#">Editar Aulas</a>
                                    </li>
                                    <li>
                                        <a href="#">Relatorio</a>
                                    </li>
                                  
                                </ul>
                            </div>
                        </li>
                        <li class="sidebar-dropdown">
                            <a href="#">
                               <i class="fas fa-chalkboard"></i>
                                <span class="menu-text">Laboratorios</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="#">Adcionar Laboratorio</a>
                                    </li>
                                    <li>
                                        <a href="#">Editar Laboratorio</a>
                                    </li>
                                    <li>
                                        <a href="#">Relatorio</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                         <li class="sidebar-dropdown">
                            <a href="#">
                               <i class="fas fa-user"></i>
                                <span class="menu-text">Usuários</span>
                            </a>
                            <div class="sidebar-submenu">
                                <ul>
                                    <li>
                                        <a href="#">Adcionar novo usuário</a>
                                    </li>
                                    <li>
                                        <a href="#">Editar usuário</a>
                                    </li>
                                    <li>
                                        <a href="#">Relatorio</a>
                                    </li>
                                </ul>
                            </div>
                        </li>
                      
                        <li class="header-menu">
                            <li>
                                <a href="grade_aula.php">
                                    <i class="fas fa-th-large"></i>
                                    <span class="menu-text">Grade de Aula</span>
                                
                                </a>
                            </li>      
                        </li>              
                    </ul>
                </div>
                <!-- sidebar-menu  -->
            </div>
            <!-- sidebar-footer  -->
            <div class="sidebar-footer">
                <div class="dropdown">

                    <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-bell"></i>
                        
                    </a>
                   
                </div>
                <div class="dropdown">
                    <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-envelope"></i>
                        
                    </a>
                    <div class="dropdown-menu messages" aria-labelledby="dropdownMenuMessage">
                        <div class="messages-header">
                            <i class="fa fa-envelope"></i>
                            Avisos
                        </div>
                   

                        </a>
                        <a class="dropdown-item" href="#">
                            <div class="message-content">
                                                                
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>

                    </div>
                </div>
                <div class="dropdown">
                    <a href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-cog"></i>
                      
                    </a>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuMessage">
                        <a class="dropdown-item" href="#">Meu perfil</a>
                        <a class="dropdown-item" href="#">Ajuda</a>
                    </div>
                </div>
                <div>
                    <a href="sair.php">
                        <i class="fa fa-power-off"></i>
                    </a>
                </div>
                <div class="pinned-footer">
                    <a href="#">
                        <i class="fas fa-ellipsis-h"></i>
                    </a>
                </div>
            </div>
        </nav>


    
        
            <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                <a id="toggle-sidebar" class="btn" href="#">
                            <i class="fas fa-bars"></i>
                        </a>
                        
                  

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="home.php">Home <span class="sr-only">(current)</span></a>
                        </li>
            
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                Meu usuário
                            </a>
                            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                                <a class="dropdown-item" href="#">Meu perfil</a>
                                <a class="dropdown-item" href="sair.php">Sair</a>
                        </li>   
                    </ul>
              
            </nav>


</div>

         
    <!-- using online scripts -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"
        integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"
        integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous">
    </script>
    <script src="//malihu.github.io/custom-scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>


      <!-- Bootstrap core JavaScript -->
  

    <!-- using local scripts -->
    <!-- <script src="../node_modules/jquery/dist/jquery.min.js"></script>
    <script src="../node_modules/popper.js/dist/umd/popper.min.js"></script>
    <script src="../node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="../node_modules/malihu-custom-scrollbar-plugin/jquery.mCustomScrollbar.concat.min.js"></script> -->


    <script src="src/js/main.js"></script>


     <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>



</body>

</html>