<?php require "../layouts/header.php"; ?>
<?php require "../../config/config.php"; ?>
<?php


$show_bookings = $conn->query("SELECT * FROM bookings");
$show_bookings->execute();

$allShowbookings = $show_bookings->fetchAll(PDO::FETCH_OBJ);



?>


<div class="container-fluid">

  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-body" style="margin-top:60px">
          <h5 class="card-title mb-4 d-inline">Bookings</h5>

          <table class="table">
            <thead>
              <tr>
                <th scope="col">Id</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Date</th>
                <th scope="col">Time</th>
                <th scope="col">Phone</th>
                <th scope="col">Message</th>
                <th scope="col">Status</th>
                <th scope="col">Created_at</th>
                <th scope="col">Update</th>
                <th scope="col">Delete</th>
              </tr>
            </thead>
            <tbody>
              <?php foreach ($allShowbookings as $booking): ?>
                <tr>
                  <td>
                    <?php echo $booking->id ?>
                  </td>
                  <td>
                    <?php echo $booking->first_name ?>
                  </td>
                  <td>
                    <?php echo $booking->last_name ?>
                  </td>
                  <td>
                    <?php echo $booking->date ?>
                  </td>
                  <td>
                    <?php echo $booking->time ?>
                  </td>
                  <td>
                    <?php echo $booking->phone ?>
                  </td>
                  <td>
                    <?php echo $booking->message ?>
                  </td>
                  <td>
                    <?php echo $booking->status ?>
                  </td>
                  <td>
                    <?php echo $booking->created_at ?>
                  </td>

                  <td><a href="change-status.php?id=<?php echo $booking->id; ?>"
                      class="btn btn-warning  text-center ">Update</a></td>

                  <td><a href="delete-bookings.php?id=<?php echo $booking->id ?>"
                      class="btn btn-danger  text-center ">Delete</a></td>
                </tr>
              <?php endforeach; ?>

            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>



</div>

<?php require "../layouts/footer.php"; ?>