<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>NoteTaker</title>
  <!-- bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <link rel="stylesheet" href="css/Style.css">

  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link
    href="https://fonts.googleapis.com/css2?family=Gemunu+Libre:wght@700&family=Source+Sans+Pro:wght@600&display=swap"
    rel="stylesheet">

</head>

<body>

  <!--Starting navbar-->

  <nav class="navbar sticky-top navbar-expand-lg" style="background-color: #99d5ff;">
    <div class="container">
      <div class="container-fluid">
        <i class="fa fa-file-text" style="font-size: 25px; margin-right: 2px;"></i>
        <a class="navbar-brand logo-head" style="font-family: 'Gemunu Libre', sans-serif; font-size: 25px;"
          href="index.jsp">NoteTaker</a>
      </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
      
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul style="font-family: Verdana, Geneva, Tahoma, sans-serif;" class="navbar-nav me-auto mb-2 mb-lg-0">

          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="CreateTable.jsp">Create_Note</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ShowNote.jsp">Show_Notes</a>
          </li>

        </ul>
      </div>

    </div>
  </nav>

  <!--Ending navbar-->

  <div class="section1">
    <div class="container">

        <div class="row">
            <div class="col-12 text-center homecontent">
                <h1>Create your Notes here...</h1>
                <p>You can make your important notes here and save them upto lifetime... <br> and you can also update and delete your notes here.</p>
                <a class="btn btn-primary started" href="CreateTable.jsp">Start</a>
            </div>
        </div>
    </div>
</div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>
</body>

</html>