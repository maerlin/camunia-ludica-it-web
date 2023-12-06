<?php
class Database {
	private static $host 		= '31.11.39.124';
	private static $database 	= 'Sql1737477_1'; 
	private static $username 	= 'Sql1737477';
	private static $password 	= 'bippep-Forbif-nonhe0';
	
	private static $cont = null;
	
	// Init
	public function __construct() {
		exit('Init function is not allowed');
	}
	
	// Connect DB
	public static function connect() {
		if ( null == self::$cont ) {      
			try {
				self::$cont = new PDO('mysql:host=' . self::$host . ';' . 'dbname=' . self::$database, self::$username, self::$password);  
			} catch(PDOException $e) {
				die($e->getMessage());  
			}
		}

		return self::$cont;
	}
	
	// Disconnect DB
	public static function disconnect() {
		self::$cont = null;
	}
}
?>