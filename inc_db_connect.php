<?php
	
	function database_connect($host = 'localhost', $dbname = 'codercopas', $username = 'codercopas', $password = 'sapocrodec') {
		$ret = [
			'status' => false,
			'connection' => null,      
			'error' => null     
		];
		
		try {
			$con = new PDO('mysql:host='.$host.';dbname='.$dbname, $username, $password, array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8") );
			$con->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$ret['status'] = true;
			$ret['connection'] = $con;
			
		} catch (PDOException $e) {
			$ret['error'] = $e->getMessage();
		}
		
		return $ret;
	}
	
	function database_read($con, $sql, $par = null) {
		$ret = [
			'status' => false,  
			'count' => 0,       
			'data' => [],       
			'error' => null     
		];
		
		try {
			$cmd = $con->prepare($sql);			
			$cmd->execute($par);
			
			$ret['data'] = $cmd->fetchAll(PDO::FETCH_ASSOC);
			$ret['count'] = count($ret['data']);               
			$ret['status'] = true;
			
		} catch (PDOException $e) {
			$ret['error'] = $e->getMessage();
		}
		
		return $ret;
	}
	
	function database_write($con, $sql, $par = null) {
		$ret = [
			'status' => false,  
			'affected_rows' => 0,       
			'error' => null     
		];
		
		try {
			$cmd = $con->prepare($sql);
			$cmd->execute($par);
			
			$ret['affected_rows'] = $cmd->rowCount();            
			$ret['status'] = true;
			
		} catch (PDOException $e) {
			$ret['error'] = $e->getMessage();
		}
		
		return $ret;
	}
	
	
	/* HAPUS BAGIAN DI BAWAH BARIS INI PADA SAAT INCLUDE FILE */
	
	$db = database_connect();
	
	echo "HASIL KONEKSI KE DATABASE\n\n";
	var_export($db);
	
	$sql = "SELECT * FROM articles WHERE article_id >= :article_id_start AND article_id <= :article_id_end";
	$par = [
		"article_id_start" => 3,
		"article_id_end" => 6,
	];
	
	$res = database_read($db["connection"], $sql, $par);
	
	echo "\n\n";
	
	echo "HASIL BACA DARI DATABASE\n\n";
	var_export($res);
	
	$sql = "UPDATE articles SET title = :title WHERE article_id=3";
	$par = [
		"title" => 'Apple Vision Pro diluncurkan di Indonesia',
	];
	
	$res = database_write($db["connection"], $sql, $par);
	
	echo "\n\n";
	
	echo "HASIL TULIS KE DATABASE\n\n";
	var_export($res);
	
	
	
	
	
	
	
?>