<?php require "../layouts/header.php"; ?>
<?php require "../../config/config.php"; ?>
<?php

if (!isset($_SESSION["adminname"])) {
    header("location:" . ADMINURL . "/admins/login-admins.php");
}

if (isset($_GET["id"])) {
    $id = $_GET["id"];


    if (isset($_POST["submit"])) {
        if (empty($_POST["status"])) {
            echo "<script>alert('Please fill all the fields')</script>";
        } else {
            $status = $_POST["status"];

            $update = $conn->prepare("UPDATE bookings SET status = :status WHERE id = '$id'");

            $update->execute([
                ":status" => $status,
            ]);
            header("location: show-bookings.php");
        }
    }
}
?>

<div class="container-fluid">
    <div class="row">
        <div class="col">
            <div class="card">
                <div class="card-body" style="margin-top: 60px;">
                    <h5 class="cart-title mb-5 d-inline">Update Status</h5>
                    <form action="change-status.php?id=<?php echo $id; ?>" method="POST">

                        <div class="form-outline mb-4 mt-4">

                            <select style="width:200px" name="status" class="form-select  form-control"
                                aria-label="Default select example">
                                <option selected>Choose Type</option>
                                <option value="Pending">Pending</option>
                                <option value="Done">Done</option>
                            </select>
                        </div>

                        <button type="submit" name="submit" class="btn btn-primary">Update</button>

                    </form><!-- END -->

                </div>
            </div>
        </div>
    </div>
</div>

<?php require "../layouts/footer.php"; ?>