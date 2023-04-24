<!-- The HTML code for the navigation bar -->
<nav class="navbar navbar-dark text-dark fixed-top bg-warning" style="padding:0">
    <div class="container-fluid mt-2 mb-2">
        <div class="col-lg-12">
            <div class="col-md-1 float-left" style="display: flex;"></div>
            <div class="col-md-4 float-left text-dark">
                <large><b><?php echo isset($_SESSION['system']['name']) ? $_SESSION['system']['name'] : '' ?></b></large>
            </div>
            <div class="float-right">
                <div class="px-5">
                    <a class="btn btn-info btn-sm border px-3 float-right" href="../index.php" id="">Back</a>
                </div>
            </div>
        </div>
    </div>
</nav>

<!-- The JavaScript code to handle the "Manage Account" click event -->
<script>
    // When the "Manage Account" link is clicked
    $('#manage_my_account').click(function(){
        // Show a modal window with a form to manage the user's account
        uni_modal("Manage Account","manage_user.php?id=<?php echo $_SESSION['login_id'] ?>&mtype=own")
    })
</script>
