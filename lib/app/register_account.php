<?php

$db_host = "localhost";
$db_user = "root";
$db_password = "";
$db_name = "shop";

$connection = mysqli_connect($db_host, $db_user, $db_password, $db_name);

$json = file_get_contents('php://input');

$object = json_decode($json, true);

$name  = $object['name'];

$email = $object['email'];

$password = sha1($object['password']);


$insertSql = mysqli_query($connection, "INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES (NULL, '$name', '$email', '$password')") or die(mysqli_error($connection));

if ($insertSql) {

    $message = 'User created successfully';

    $messageJSON = json_encode($message);

    echo $messageJSON;
} else {

    $userFail  = 'Creating user failed';

    $userFailJSON = json_encode($userFail);

    echo $userFailJSON;
}


mysqli_close($connection);
