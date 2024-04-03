<?php
// Проверяем, что PDO работает
$dbname = 'sait';
$username = 'user';
$password = 'password';
$host = 'postgresql';
$port = 5432;
$options = [];

$dsn = "pgsql:host={$host};port={$port};dbname={$dbname}";
$db = new PDO($dsn,$username,$password,$options);

$query = "SELECT * FROM users";

$smtp = $db->prepare($query);
$smtp->execute();
while ($row = $smtp->fetch(PDO::FETCH_ASSOC)) {
    echo $row['name']."<br/>";
}

phpinfo();