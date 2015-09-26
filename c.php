<?php
error_reporting(E_ALL^E_NOTICE );

 $conn = mysqli_connect("localhost","root","","neev");
  if( $conn)
  { }
  else { echo "Sorry, some technical errors! Could not connect ";  die(); }

?>