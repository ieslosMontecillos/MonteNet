<?php 

function conectar(){
    $con = mysql_connect("localhost","root","") or die ('No se puede conectar : '. mysql_error()) ;
    // echo "Conectado con exito.";
    mysql_select_db("montenet") ;
}

function no_session()
{
    if (count($_SESSION)==0) {      
        header("Location:index.php") ;
    }
}

function yes_session()
{
    if (count($_SESSION)!=0) {      
        header("Location:main.php") ;
    }
}

function desconectar(){
    mysql_close();
}

?>