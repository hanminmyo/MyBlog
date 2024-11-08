<?php
    session_start();
    if($_SESSION['user_id'] && $_SESSION['user_role'] == 'admin'){
        include "../layouts/navbar_side.php";
?>

        <div class="container"> 
            <h1>Uers list</h1>
        </div>


    <?php
        include "../layouts/footer.php";
    }else{
        header("location: ../login.php");
    }
    ?>