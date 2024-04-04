<style>
        input {
            display: flex !important;
        }
    </style>


    <div class="container" style="margin-left: 320px; width: 70%;">
        <form method="post">
            <div class="mb-3">
                <div class="row">
                    <div class="col-md-6">
                        <label for="exampleInputEmail1">Name</label>
                        <input type="text" class="form-control" name="name">
                    </div>

                    <div class="col-md-6">
                        <label for="exampleInputPassword1" class="form-label">Mother name</label>
                        <input type="text" class="form-control" name="mother">
                    </div>

                    <div class="col-md-6">
                        <label for="exampleInputEmail1" class="form-label">Sex</label>
                        <input type="text" class="form-control" aria-describedby="emailHelp" name="sex">
                    </div>

                    <div class="col-md-6">
                        <label for="exampleInputPassword1" class="form-label">Age</label>
                        <input type="text" class="form-control" name="age">
                    </div>


                    <div class="col-md-6">
                        <label for="exampleInputPassword1" class="form-label">Class</label>
                        <input type="text" class="form-control" name="class">
                    </div>

                    <div class="col-md-6">
                        <label for="exampleInputPassword1" class="form-label">Section</label>
                        <input type="text" class="form-control" name="section">
                    </div>

                </div>

            </div>
            <div class="text-end ">
                <button type="submit" class="btn btn-primary" name="save">Submit</button>
            </div>
        </form>
    </div>

    <?php

     require_once('./pages/concection.php');

      if(isset($_POST['save'])) {
        $name   =   $_POST['name'];
        $mother =  $_POST['mother'];
        $sex   =   $_POST['sex'];
        $age   =   $_POST['age'];
        $class  =    $_POST['class'];
        $section   =   $_POST['section'];

        $q =  mysqli_query($con, "INSERT INTO student(name, mother   , sex, age, class,section) VALUES('$name','$mother','$sex','$age','$class','$section')");


        if ($q) {
            echo "<script>  alert('Sucesssssssssss')  </script>";
        } else {
            echo "<script>  alert('Error!!!')  </script>";
        }
    };



    ?>

  <label for="">counr</label>
  <select name="" id="">
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  <option value="">aa</option>
  </select>