<?php
error_reporting(E_ALL);
ini_set('display_errors', TRUE);


require_once 'db_connect.php';
require_once 'file_upload.php';

if ($_POST) {  
    $title = $_POST['title'];
    $isbn = $_POST['isbnean'];
    $type= $_POST['type'];
    $firstname = $_POST['autor_first_name'];
    $lastname = $_POST['autor_last_name'];
    $publishername = $_POST['publisher_name'];
    $publisheraddres = $_POST['publisher_addres'];
    $publisherdate = $_POST['publisher_date'];
    $availability = $_POST['availability'];
    $shortdescription = $_POST['short_description'];
    $id = $_POST['id'];
    
    
    $uploadError = '';

    $photo = file_upload($_FILES['photo']);//filies je onaj koji so dodali u a_create
    if($photo->error===0){
        ($_POST["photo"]=="acdc.jpg")?: unlink("./pictures/$_POST[photo]");           
        $sql = "UPDATE Library SET title = '$title', photo = '$photo->fileName', isbnean = $isbn, type = '$type', autor_first_name = '$firstname', autor_last_name = '$lastname', publisher_name = '$publishername', publisher_addres = '$publisheraddres', publisher_date = $publisherdate, availability = '$availability', short_description = '$shortdescription'  WHERE library_id = {$id}";
    }else{
        $sql = "UPDATE Library SET title = '$title', isbnean = $isbn, type = '$type', autor_first_name = '$firstname', autor_last_name = '$lastname', publisher_name = '$publishername', publisher_addres = '$publisheraddres', publisher_date = $publisherdate, availability = '$availability', short_description = '$shortdescription' WHERE library_id = {$id}";
    }    
    if (mysqli_query($connect, $sql) === TRUE) {
        $class = "success";
        $message = "The record was successfully updated";
        $uploadError = ($photo->error !=0)? $photo->ErrorMessage :'';
    } else {
        $class = "danger";
        $message = "Error while updating record : <br>" . mysqli_connect_error();
        $uploadError = ($photo->error !=0)? $photo->ErrorMessage :'';
    }
    mysqli_close($connect);    
} else {
    header("location: ../error.php");
}
?>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Update</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    
        
    </head>
    <body>
        <div class="container">
            <div class="mt-3 mb-3">
                <h1>Update request response</h1>
            </div>
            <div class="alert alert-<?php echo $class;?>" role="alert">
                <p><?php echo ($message) ?? ''; ?></p>
                <p><?php echo ($uploadError) ?? ''; ?></p>
                <a href='../update.php?id=<?=$id;?>'><button class="btn btn-warning" type='button'>Back</button></a>
                <a href='../index.php'><button class="btn btn-success" type='button'>Home</button></a>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>

