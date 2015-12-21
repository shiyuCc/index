<HTML>
	<HEAD><TITLE>File Indexer</TITLE></HEAD>
<BODY>

<FORM action="indexer3.php" method="POST">
	<INPUT type="text" name="text" placeholder="input an url or a directory" size="50" maxlength="50"><BR>
	<INPUT type="submit" name="submit" value="Submit"/><BR>
</FORM>

<?php
/*
include("./include/databaseClassMySQLi.php");
$db=new database();
$db->pick_db("indexer");
*/

$con=mysql_connect("localhost","shiyu","123456");

if (!$con)
  {
  die('Could not connect: ' . mysql_error());
  }

mysql_select_db("indexer", $con);

//get words and their counts from web page 
function readWebFile($path){
	//echo $path."<BR>";
	
	$handle=fopen($path, "r");
	$contents=file_get_contents($path);
	$contents=strtolower(strip_tags($contents));
	$contents=preg_replace("/\t|\r|\n|\,|\.|\?|\;|\:|\'|\/|\~|\!|\%|\(|\)|\"|\-/", " ", $contents);
	$arr=explode(" ", $contents);
	$arr2=array_count_values($arr);
	ksort($arr2);
	foreach ($arr2 as $key => $value) {
		if(!empty($key)){
			$queryWord="select * from words where word='$key'";
			$resWord=mysql_query($queryWord);
			if(isset($resWord) && (mysql_num_rows($resWord) == 0)){
				//echo "no related data, so add one!"."<BR>";
				$queryNum="select * from words";
				$res1=mysql_query($queryNum);
				$id=mysql_num_rows($res1)+1;
				
				$insertWord="insert into words (word_id,word) values ('$id','$key')"; 
				if(!mysql_query($insertWord)){
					die('Error: '.mysql_error());
				}
				//echo "1 record added to words table"."<BR>";

							
			}
			else{
				echo "already have word ".$key." in words table."."<BR>";
			}
			$row1=mysql_fetch_row(mysql_query("select file_id from files where file_url='$path' or file_name='$path'"));
			$file_id=$row1[0];
			$row2=mysql_fetch_row(mysql_query("select word_id from words where word='$key'"));
			$word_id=$row2[0];
			$queryCount="select * from file_word where file_id='$file_id' and word_id='$word_id'";
			$resCount=mysql_query($queryCount);
			if(isset($resCount) && (mysql_num_rows($resCount) == 0)){
				//echo "no related data, so add one!"."<BR>";
				
				$insertCount="insert into file_word (file_id,word_id,count) values ('$file_id','$word_id','$value')"; 
				if(!mysql_query($insertCount)){
					die('Error: '.mysql_error());
				}
				//echo "1 record added to words table"."<BR>";

							
			}
			else{
				echo "already have this record in file_word table."."<BR>";
			}
		}
		
	}	
	fclose($handle);
}


if(isset($_POST["text"])){
	$path=$_POST["text"];

	//if input value is an url
	if(strpos($path, ".html")!==false||strpos($path, ".htm")!==false){	

		$array = get_headers($path);
		$string = $array[0];

		//if input url is a valid url
		if(strpos($string,"200")){
			
			$queryFile="select * from files where file_url='$path'";
			$resFile=mysql_query($queryFile);
			//if files table has no related record, add one
			if(isset($resFile) && (mysql_num_rows($resFile) == 0)){
				echo "no related data, so add one!"."<BR>";
				$queryNum="select * from files";
				$res1=mysql_query($queryNum);
				$id=mysql_num_rows($res1)+1;
				
				$insertFile="insert into files (file_id,file_name,file_url) values ('$id','','$path')";  
				if(!mysql_query($insertFile)){
					die('Error: '.mysql_error());
				}
				echo "1 record added to files table"."<BR>";

						
			}
			else{
				echo "already have file ".$path." in files table."."<BR>";
			}

			$row=mysql_fetch_row(mysql_query("select file_id from files where file_url='$path'"));
			$file_id=$row[0];
			//echo $file_id;
			$queryMeta="select * from meta_info where file_id='$file_id'";
			$resMeta=mysql_query($queryMeta);
			if(isset($resMeta) && (mysql_num_rows($resMeta) == 0)){
				$tags=get_meta_tags($path);
				foreach ($tags as $key => $value) {
					if(!empty($key)){
						//echo $file_id;
						$insertMeta="insert into meta_info (file_id,type,content) values ('$file_id','$key','$value')";
						if(!mysql_query($insertMeta)){
							die('Error: '.mysql_error());
						}
						echo "1 record added to meta_info table"."<BR>";
					}
		
				}

			}
			
			readWebFile($path);		
    		
  		}
  		//input url not valid
  		else{
    		echo "Url does not exist, please input a valid url again!";
  		}
							
	}

	//if input value is a dir
	else if(is_dir($path)){	
		$files = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($path));
		foreach($files as $name => $object){
			//for every web file, index it
			if(strpos($name, ".html")!==false||strpos($name, ".htm")!==false){
				$filePath=realpath($name);

				$query="select * from files where file_name='$filePath'";
				$res=mysql_query($query);
				$filePath1=addslashes($filePath);
				//if files table has no this record, add it
				if(isset($res) && (mysql_num_rows($res) == 0)){
					echo "no related data, so add one!"."<BR>";
					$queryNum="select * from files";
					$res1=mysql_query($queryNum);

					$id=mysql_num_rows($res1)+1;
					
					
					$insertFile="insert into files (file_id,file_name,file_url) values ('$id','$filePath1','')";  
					if(!mysql_query($insertFile)){
						die('Error: '.mysql_error());
					}
					echo "1 record added to files table"."<BR>";

				}
				else{
					echo "already have file ".$filePath." in files table."."<BR>";
				}
				

				$row=mysql_fetch_row(mysql_query("select file_id from files where file_name='$filePath1'"));
				$file_id=$row[0];
				//echo $file_id;
				$queryMeta="select * from meta_info where file_id='$file_id'";
				$resMeta=mysql_query($queryMeta);
				if(isset($resMeta) && (mysql_num_rows($resMeta) == 0)){
					$tags=get_meta_tags($filePath);
					foreach ($tags as $key => $value) {
						if(!empty($key)){
							//echo $file_id;
							$insertMeta="insert into meta_info (file_id,type,content) values ('$file_id','$key','$value')";
							if(!mysql_query($insertMeta)){
								die('Error: '.mysql_error());
							}
							echo "1 record added to meta_info table"."<BR>";
						}
			
					}

				}
				
				readWebFile($filePath1);
			}    	
		}	
	}
	else{
		echo "Invalid url or directory!";
	}
}
?>

</BODY>
</HTML>