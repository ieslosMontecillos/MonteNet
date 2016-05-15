<?php 
include 'funciones.php';

if (count($_POST)) {
    
    conectar();

    $sql = "SELECT * FROM profesor WHERE idea LIKE '".mysql_real_escape_string($_POST["profesor"])."' AND contrasena LIKE '".mysql_real_escape_string($_POST["contrasena"])."' ;" ;
    echo $sql;

    $res = mysql_query($sql) ;

    if (mysql_num_rows($res) == 0) { 
        header("Location:index.php?login=false") ;
    }
    else {
        $fila = mysql_fetch_assoc($res);
        session_start() ;      

        $_SESSION["hora"] = date("d/m/Y") ;
        $_SESSION["idea"] = $fila["idea"];
        desconectar();

        header("Location:main.php") ;

    }

    desconectar();

}

?>