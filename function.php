<?php
// get db
require_once 'db.php';
// get menu
function createMenu($arrayMenu) {
	if (! is_array ( $arrayMenu ) || ! count ( $arrayMenu )) {
		return;
	}
	echo '<ul class="nav navbar-nav">';
	foreach ( $arrayMenu as $key => $value ) {
		echo '<li >' . "<a href='category.php?id={$key}'>";
		echo $value;
		echo '</a></li>';
	}
	echo '</ul>';
}
function getAllCategories() {
	$link = mysqli_connect ( SERVERNAME, USERNAME, PASSWORD, DBNAME ) or die ( "Error " . mysqli_error ( $link ) );
	$result = array ();
	
	$query = "SELECT id, name FROM  category" or die ( "Error in the consult.." . mysqli_error ( $link ) );
	$queryResult = $link->query ( $query );
	
	while ( $row = mysqli_fetch_array ( $queryResult ) ) {
		$result [$row ['id']] = $row ["name"];
	}
	return $result;
}
// get menu end
// get latest posts
function getLatest($arrayLatest) {
	if (! is_array ( $arrayLatest ) || ! count ( $arrayLatest )) {
		return;
	}
	echo '<ul>';
	foreach ( $arrayLatest as $key => $value ) {
		echo '<ul><li>';
		echo $value;
		echo '</li></ul>';
	}
	echo '</ul>';
}
function getLastPosts() {
	// Create connection
	$conn = new mysqli ( SERVERNAME, USERNAME, PASSWORD, DBNAME );
	// Check connection
	if ($conn->connect_error) {
		die ( "Connection failed: " . $conn->connect_error );
	}
	
	$sql = "SELECT id, title, text FROM post order by id DESC limit 5  ";
	$result = $conn->query ( $sql );
	
	if ($result->num_rows > 0) {
		// output data of each row
		while ( $row = $result->fetch_assoc () ) {
			echo '<h3>Title:' . $row ['id'] . '</h3>' . $row ['title'] . "::::::::: <br> " . $row ["text"] . "<br><br>";
		}
	} else {
		echo "0 results";
	}
	return $row;

}
// get latest posts end
function getPosts($arrayMenu) {
	if (! is_array ( $arrayMenu ) || ! count ( $arrayMenu )) {
		return;
	}
	echo '<ul>';
	foreach ( $arrayMenu as $key => $value ) {
		echo '<ul><li>';
		echo $value;
		echo '</li></ul>';
	}
	echo '</ul>';
}
function getAllPosts() {
	
	// Create connection
	$conn = new mysqli ( SERVERNAME, USERNAME, PASSWORD, DBNAME );
	// Check connection
	if ($conn->connect_error) {
		die ( "Connection failed: " . $conn->connect_error );
	}
	// $sql = "SELECT c.name, c.id, p.title, p.categoty_id, p.description
	// FROM post p, category c WHERE c.id=p.categoty_id order by c.name desc";
	$cat_id = $_SERVER ['REQUEST_URI'];
	
	$cat = explode ( '=', $cat_id );
	$endCat = end ( $cat );
	
	switch ($endCat) {
		
		case 1 :
			$sql = "SELECT id, title, description, categoty_id FROM post WHERE categoty_id='1' ";
			break;
		case 2 :
			$sql = "SELECT  id, title, description, categoty_id FROM post WHERE categoty_id='2' ";
			break;
		case 3 :
			$sql = "SELECT  id, title, description, categoty_id FROM post WHERE categoty_id='3' ";
			break;
	}
	$result = $conn->query ( $sql );
	if ($result->num_rows > 0) {
		// output data of each row
		while ( $row = $result->fetch_assoc () ) {
			echo "<h2><a href='post.php?id={$endCat}'>" . $row ['title'] . "</a> </h2> " . $row ["description"] . "<br>";
		}
	} else {
		echo "0 results";
	}
	

}
function createMenu1($arrayMenu) {
	if (! is_array ( $arrayMenu ) || ! count ( $arrayMenu )) {
		return;
	}
	echo '<ul style="width:100%; overflow:hidden;">';
	echo '<li style="float:left; margin:10px;"><a href="index.php">home</a></li>';
	foreach ( $arrayMenu as $key1 => $value ) {
		echo '<li style="float:left; margin:10px;">' . "<a href='category.php?id={$key1}'>";
		echo $value;
		echo '</a></li>';
	}
	echo '</ul>';
}
function getSinglePosts() {
	$conn = new mysqli ( SERVERNAME, USERNAME, PASSWORD, DBNAME );
	// Check connection
	if ($conn->connect_error) {
		die ( "Connection failed: " . $conn->connect_error );
	}
	// $sql = "SELECT c.name, c.id, p.title, p.categoty_id, p.description
	// FROM post p, category c WHERE c.id=p.categoty_id order by c.name desc";
	$cat_id = $_SERVER ['REQUEST_URI'];
	
	$cat = explode ( '=', $cat_id );
	$endCat = end ( $cat );
	switch ($endCat) {
		case 1 :
			$sql = "SELECT id, title, text, categoty_id FROM post WHERE id='1' ";
			break;
		case 2 :
			$sql = "SELECT  id, title, text, categoty_id FROM post WHERE id='2' ";
			break;
		case 3 :
			$sql = "SELECT  id, title, text, categoty_id FROM post WHERE id='3' ";
			break;
	}
	$result = $conn->query ( $sql );
	if ($result->num_rows > 0) {
		// output data of each row
		while ( $row = $result->fetch_assoc () ) {
			echo "<h2><a href='post.php?id={$endCat}'>" . $row ['title'] . "</a> </h2> " . $row ["text"] . "<br>";
		}
	} else {
		echo "0 results";
	}
	

}