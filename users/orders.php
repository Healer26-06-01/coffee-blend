<?php require "../includes/header.php"; ?>
<?php require "../config/config.php"; ?>
<?php

$orders = $conn->query("SELECT * FROM orders WHERE user_id = '$_SESSION[user_id]'");
$orders->execute();

$allOrders = $orders->fetchAll(PDO::FETCH_OBJ);



?>


<section class="home-slider owl-carousel">

    <div class="slider-item" style="background-image: url(<?php echo IMAGEPRODUCTS; ?>/bg_3.jpg);"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row slider-text justify-content-center align-items-center">

                <div class="col-md-7 col-sm-12 text-center ftco-animate">
                    <h1 class="mb-3 mt-5 bread">Your Orders</h1>
                    <p class="breadcrumbs"><span class="mr-2"><a href="<?php echo APPURL; ?>">Home</a></span>
                        <span>Your Orders</span>
                    </p>
                </div>

            </div>
        </div>
    </div>
</section>

<section class="ftco-section ftco-cart">
    <div class="container">
        <div class="row">
            <div class="col-md-12 ftco-animate">
                <div class="cart-list">
                    <?php if (count($allOrders) > 0): ?>
                        <table class="table">
                            <thead class="thead-primary">
                                <tr class="text-center">
                                    <th>First Name</th>
                                    <th>Last Name</th>
                                    <th>State</th>
                                    <th>Street Address</th>
                                    <th>Town</th>
                                    <th>Zip Code</th>
                                    <th>Phone</th>
                                    <th>Email Address</th>
                                    <th>Total Price</th>
                                    <th>Status</th>
                                    <th>Write Review</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php foreach ($allOrders as $order): ?>
                                    <tr class="text-center">
                                        <td>
                                            <?php echo $order->first_name; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->last_name; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->state; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->street_address; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->town; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->zip_code; ?>

                                        </td>

                                        <td>
                                            <?php echo $order->phone; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->email_address; ?>
                                        </td>

                                        <td>
                                            $
                                            <?php echo $order->total_price; ?>
                                        </td>

                                        <td>
                                            <?php echo $order->status; ?>
                                        </td>

                                        <?php if ($order->status == "Delivered"): ?>
                                            <td>
                                                <a class="btn btn-primary"
                                                    href="<?php echo APPURL; ?>/reviews/write-review.php">Write Review</a>
                                            </td>
                                        <?php endif; ?>

                                    </tr>
                                <?php endforeach; ?>

                            </tbody>
                        </table>
                    <?php else: ?>
                        <p>You do not have any orders for now</p>
                    <?php endif; ?>
                </div>
            </div>
        </div>

    </div>
</section>

<?php require "../includes/footer.php"; ?>