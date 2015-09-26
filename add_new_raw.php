<?php
include 'c.php' ;
if(isset($_POST[submit]))
{
	$name=$_POST[name];
	$unit=$_POST[unit];
	$desc=$_POST[desc];
	$num=0;
	$tot_qty=0;
	$tot_cost=0;
	foreach ($_POST[var_name] as $var)
    { if(!empty($var)) {
		$tot_qty+=$_POST[avail_qty][$num];
		$tot_cost+=($_POST[cost][$num] * $_POST[avail_qty][$num]);
		$num++;
	} }
	$q="INSERT INTO `raw_mat` (`name`,`unit`,`desc`,`tot_qty`,`tot_cost`,`no_of_var`) VALUES ('$name','$unit','$desc',$tot_qty,$tot_cost,$num)" ;
	$sql=mysqli_query($conn,$q);
	if(!$sql)  echo mysqli_error($sql);
	$sql2=mysqli_query($conn,"SELECT MAX(`raw_id`) FROM `raw_mat`");
	$ans=mysqli_fetch_array($sql2);
	echo $ans[0];
	$cnt=0;
	if($_POST['var_name']>0){
	foreach ($_POST[var_name] as $var)
    { if(!empty($var)) { echo 'hi';
	  $cost=$_POST[cost][$cnt];
	  $min=$_POST[min_qty][$cnt];
	  $avail=$_POST[avail_qty][$cnt];
      $sql3=mysqli_query($conn,"INSERT INTO `raw_variant` (`raw_id`,`name`,`price`,`avail_qty`,`min_qty`) VALUES ($ans[0],'$var',$cost,$min,$avail)");
	  if(!sql3) echo mysqli_error($sql3);
	  $cnt++;
						}
    }  
							}
	
}

?>
