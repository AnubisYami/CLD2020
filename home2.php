<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>CLD SYSTEM 2020</title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/simple-sidebar.css" rel="stylesheet">
  <link rel="shortcut icon" href="img/favicon.ico">



<link href='packages/core/main.css' rel='stylesheet' />
<link href='packages/daygrid/main.css' rel='stylesheet' />
<link href='packages/timegrid/main.css' rel='stylesheet' />
<link href='packages/list/main.css' rel='stylesheet' />
<script src='packages/core/main.js'></script>
<script src='packages/interaction/main.js'></script>
<script src='packages/daygrid/main.js'></script>
<script src='packages/timegrid/main.js'></script>
<script src='packages/list/main.js'></script>

<style>
  .dropdown button{
    width: 100%;
  }
</style>

 
</head>

<body>

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading"> Menu </div>
      <div class="dropdown">
         <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Cadastrar</button>
      </div>
      

      <div class="list-group list-group-flush">
         
      
      </div>
        
      


    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

       <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
      <button class="btn" id="menu-toggle"><span class="navbar-toggler-icon"></span></button>

      
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="grade_aula.php">Grade de Aulas <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                Usuário
              </a>
              <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdown">
                <a class="dropdown-item" href="alterar_senha.php">Alterar a senha</a>
                <a class="dropdown-item" href="sair.php">Sair</a>
                <div class="dropdown-divider"></div>
              </div>
            </li>
          </ul>
        </div>
      </nav>
    </div>
  </div>

 <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Menu Toggle Script -->
  <script>
    $("#menu-toggle").click(function(e) {
      e.preventDefault();
      $("#wrapper").toggleClass("toggled");
    });
  </script>
</body>

</html>
