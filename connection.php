<?php
ob_start();
if(!isset($_SESSION)){
    session_start();
}

$conn = new mysqli("localhost", "rootone", "", "jc491164_finalproject");
$GLOBALS['connection'] = $conn;
?>
