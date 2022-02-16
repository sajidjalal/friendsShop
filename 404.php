<!DOCTYPE html>
<html lang="en">

<head>


    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">


        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">



                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- 404 Error Text -->
                    <div class="text-center">
                        <div class="show_error mx-auto" data-text="<?php echo @$_GET['status_code']; ?>">
                            <?php echo @$_GET['status_code']; ?>
                        </div>
                        <p class="lead text-gray-800 mb-5"><?php echo @$_GET['msg']; ?></p>
                        <!-- <p class="text-gray-500 mb-0">It looks like you found a glitch in the matrix...</p> -->
                        <a href="index.php">&larr; Retry</a>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->



        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->