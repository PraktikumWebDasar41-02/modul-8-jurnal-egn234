<?php
	include('koneksi.php');
	session_start();
	$username = $_SESSION['usernm'];

	if (isset($_POST['nginput'])) {
		$namadpn = $_POST['namad'];
		$namablk = $_POST['namab'];
		$nim = $_POST['nim'];
		$kelas = $_POST['kelas'];
		$hobi = $_POST['hobi'];
		$genre = $_POST['genre'];
		$wisata = $_POST['wisata'];
		$tgl_lahir = $_POST['tgl_lahir'];
		$cek = true;

		if (strlen($namadpn." ".$namablk) > 25) {
			echo "nama maksimal 25 karakter<br>";
			$cek = false;
		}

		if (is_numeric($namadpn) || is_numeric($namablk)) {
			echo "nama tidak boleh angka";
			$cek = false;
		}

		if ($cek == true) {
			mysqli_query($db, "UPDATE akun SET username ='$username',first_name = '$namadpn', last_name='$namablk', nim='$nim', kelas='$kelas', hobi='$hobi'")
		}
	}
?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<body>
	<form method="POST" action="newData.php">
		<table>
			<tr>
				<td>Nama Depan</td>
				<td>:</td>
				<td><input type="text" name="namad"></td>
			</tr>
			<tr>
				<td>Nama Belakang</td>
				<td>:</td>
				<td><input type="text" name="namab"></td>
			</tr>
			<tr>
				<td>NIM</td>
				<td>:</td>
				<td><input type="text" name="nim"></td>
			</tr>
			<tr>
				<td>Kelas</td>
				<td>:</td>
				<td><input type="text" name="kelas"></td>
			</tr>
			<tr>
				<td>Hobi</td>
				<td>:</td>
				<td><input type="text" name="hobi"></td>
			</tr>
			<tr>
				<td>Genre Film yang disukai</td>
				<td>:</td>
				<td>
					<input type="checkbox" name="genre[]" value="Horror">Horror<br>
					<input type="checkbox" name="genre[]" value="Anime">Anime<br>
					<input type="checkbox" name="genre[]" value="Action">Action<br>
					<input type="checkbox" name="genre[]" value="Drama">Drama<br>
				</td>
			</tr>
			<tr>
				<td>Tempat Wisata yang disukai</td>
				<td>:</td>
				<td>
					<input type="checkbox" name="wisata[]" value="Bali">Bali<br>
					<input type="checkbox" name="wisata[]" value="Tanjung Selor">Tanjung Selor<br>
					<input type="checkbox" name="wisata[]" value="Jakarta">Jakarta<br>
					<input type="checkbox" name="wisata[]" value="Lombok">Lombok<br>
				</td>
			</tr>
			<tr>
				<td>Tanggal Lahir</td>
				<td>:</td>
				<td><input type="Date" name="tgl_lahir"></td>
			</tr>
			
			<tr>
				<td><button type="submit" name="nginput">SUBMIT</button></td>
			</tr>
		</table>
	</form>
</body> 
</html>
