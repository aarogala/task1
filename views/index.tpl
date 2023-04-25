<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="prosty formularz">
  <meta name="author" content="Piotr Ćwiakowski">

  <!-- Na potrzeby tworzenia aplikacji wyłączmy cachowanie zawartości.  -->
    <meta http-equiv="cache-control" content="max-age=0" />
    <meta http-equiv="cache-control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="pragma" content="no-cache" />
<title>Przykładowa aplikacja</title>

  <!-- Bootstrap core CSS -->
  <link href="/static/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="/static/custom.css" rel="stylesheet">

</head>

<body>

<!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark static-top">
    <div class="container">
      <a class="navbar-brand" href="#">Cool App</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">
    <div class="row">
              <div class="col-3 sidebar">
            <form  action="/" method="post">
                <div class="form-group form-control-sm">
                    <label for="Store">Store</label>
                    <select class="form-control" id="Store" name="Store" method="post">
                      % for i in range(1, 4):
                        % if store==i:
                            <option selected>{{i}}</option>
                        % else:
                            <option>{{i}}</option>
                        % end
                      % end
                    </select>
                </div>
            <br>
            <br>
            <button type="submit" class = "btn btn-default submit">Submit</button>
             <br>
             </form>
        </div>
      <div class="col-9" class = "content">
      </div>
    </div>
    <!-- Page Footer -->
    <div class="row">
    <footer class="page-footer small">
      <div class="col-lg-12">
        <div>&copy; LabMasters 2023. Wszystkie prawa zastrzeżone.</div>
      </div>
    </footer>
    </div>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="/static/vendor/jquery/jquery.slim.min.js"></script>
  <script src="/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>

</html>
