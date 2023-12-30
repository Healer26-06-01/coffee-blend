<?php require "../layouts/header.php"; ?>
<?php require "../../config/config.php"; ?>
<?php

$show_orders = $conn->query("SELECT * FROM orders");
$show_orders->execute();

$allShoworders = $show_orders->fetchAll(PDO::FETCH_OBJ);

?>

<div class="container-fluid">

  <div class="row">
    <div class="col">
      <div class="card">
        <div class="card-body" style="margin-top:60px;">
          <h5 class="card-title mb-4 d-inline">Orders</h5>

          <table class="table">
            <thead>
              <tr>
                <th scope="col">Id</th>
                <th scope="col">First name</th>
                <th scope="col">Last name</th>
                <th scope="col">State</th>
                <th scope="col">Street address</th>
                <th scope="col">Town</th>
                <th scope="col">Zip code</th>
                <th scope="col">Phone</th>
                <th scope="col">Email</th>
                <th scope="col">Total price</th>
                <th scope="col">Status</th>
                <th scope="col">Update</th>
                <th scope="col">Delete</th>
              </tr>
            </thead>
            <tbody>

              <?php foreach ($allShoworders as $order): ?>

                <tr>
                  <td>
                    <?php echo $order->id ?>
                  </td>
                  <td>
                    <?php echo $order->first_name ?>
                  </td>
                  <td>

                    <?php echo $order->last_name ?>
                  </td>
                  <td>

                    <?php echo $order->state ?>
                  </td>
                  <td>

                    <?php echo $order->street_address ?>
                  </td>
                  <td>

                    <?php echo $order->town ?>
                  </td>
                  <td>

                    <?php echo $order->zip_code ?>
                  </td>
                  <td>

                    <?php echo $order->phone ?>
                  </td>
                  <td>

                    <?php echo $order->email_address ?>
                  </td>
                  <td>

                    <?php echo $order->total_price ?>
                  </td>
                  <td>

                    <?php echo $order->status ?>
                  </td>

                  <td><a href="change-status.php?id=<?php echo $order->id; ?>"
                      class="btn btn-warning  text-center ">Update</a></td>

                  <td><a href="delete-orders.php?id=<?php echo $order->id; ?>"
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