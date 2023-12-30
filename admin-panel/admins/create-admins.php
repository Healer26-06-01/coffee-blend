<?php require "../layouts/header.php"; ?>
<?php require "../../config/config.php"; ?>
<?php

if (!isset($_SESSION["adminname"])) {
  header("location:" . ADMINURL . "/admins/login-admins.php");
}

if (isset($_POST["submit"])) {
  if (empty($_POST["adminname"]) or empty($_POST["email"]) or empty($_POST["password"])) {
    echo "<script>alert('Please fill all the fields')</script>";
  } else {
    $adminname = $_POST["adminname"];
    $email = $_POST["email"];
    $password = password_hash($_POST["password"], PASSWORD_DEFAULT);


    $insert = $conn->prepare("INSERT INTO admins (adminname, email, password) VALUES (:adminname, :email, :password)");

    $insert->execute([
      ":adminname" => $adminname,
      ":email" => $email,
      ":password" => $password
    ]);

    header("location: admins.php");
  }
}

?>

<div class="container-fluid">
  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-body" style="margin-top: 20px;">
          <form action="create-admins.php" method="POST" class="billing-form ftco-bg-dark p-3 p-md-5">
            <h3 class="mb-4 billing-heading">Create Admins</h3>
            <div class="row align-items-end">
              <div class="col-md-12">
                <div class="form-group">
                  <label for="adminname">Admin name</label>
                  <input type="text" name="adminname" class="form-control">
                </div>
              </div>
              <div class="col-md-12">
                <div class="form-group">
                  <label for="Email">Email</label>
                  <input type="text" name="email" class="form-control">
                </div>
              </div>

              <div class="col-md-12">
                <div class="form-group">
                  <label for="Password">Password</label>
                  <input type="password" name="password" class="form-control">
                </div>

              </div>
              <div class="col-md-12">
                <div class="form-group mt-4">
                  <div class="radio">
                    <button type="submit" name="submit" class="btn btn-primary py-3 px-4">Create</button>
                  </div>
                </div>
              </div>


          </form><!-- END -->

        </div>
      </div>
    </div>
  </div>
</div>

<?php require "../layouts/footer.php"; ?>