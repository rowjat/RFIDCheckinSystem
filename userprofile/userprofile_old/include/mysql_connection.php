<?php

//connection to local mysql database
DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost');
DEFINE ('DB_NAME', 'meetmee_checkin6');

//connection to meetmee.javaprovider mysql database
// DEFINE ('DB_USER', 'meetmee_mark');
// DEFINE ('DB_PASSWORD', 'meetmee2011');
// DEFINE ('DB_HOST', 'localhost');
// DEFINE ('DB_NAME', 'meetmee_checkin');


// Make the connnection and then select the database.
$dbc = mysql_connect (DB_HOST, DB_USER, DB_PASSWORD) OR die ('Could not connect to MySQL: ' . mysql_error() );
mysql_select_db (DB_NAME) OR die ('Could not select the database: ' . mysql_error() );

?>