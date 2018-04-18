<?php
require 'config.php';
session_start();
$error = "Your Login Name or Password is invalid";
$check = 1;

if($_SERVER["REQUEST_METHOD"] == "POST") {

   $myusername = $_POST['user'];
   $mypassword = $_POST['pass']; 

   function ldap_login($username1, $password1,$username,$password,$servername,$database) {
      $ldapServer = "ldap.iitm.ac.in";
      $ldapPort = 389;
      $ldapDn = "cn=students,ou=bind,dc=ldap,dc=iitm,dc=ac,dc=in";
      $ldapPass = "rE11Bg_oO~iC";
      $ldapConn = ldap_connect($ldapServer, $ldapPort) or die("Could not connect to LDAP server.");
      //echo $ldapConn;
      $studentUser = $username1;
      $studentPass = $password1;

      if($ldapConn) {
         ldap_set_option($ldapConn, LDAP_OPT_PROTOCOL_VERSION, 3);
         $ldapBind = ldap_bind($ldapConn, $ldapDn, $ldapPass);
         if($ldapBind){
           $filter = "(&(objectclass=*)(uid=".$studentUser."))";
           $ldapDn = "dc=ldap,dc=iitm,dc=ac,dc=in";
           $result = ldap_search($ldapConn, $ldapDn, $filter) or die ("Error in search query: ".ldap_error($ldapConn));   
           $entries = ldap_get_entries($ldapConn, $result);
           foreach($entries as $values => $values1){
            $logindn = $values1['dn'];
         }
         $loginbind = ldap_bind($ldapConn, $logindn, $studentPass);
         if ($loginbind){
            $_SESSION['login_user'] = $username1;
            $conn= new PDO("mysql:host=$servername;dbname=$database;charset:utf8",$username,$password);
            $conn-> setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            $conn-> setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
            $stmt = $conn->prepare("SELECT * FROM `faculty` WHERE ldap='$username1'");
            $stmt -> execute();
            while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
               $_SESSION['login_name'] = $row['name'];
            }
            return 1;
         }
      }else{
         echo "Bind Failed";
      }
   }
   ldap_unbind($ldapConn);
   return 0;

   }
   echo(ldap_login($myusername,$mypassword,$username,$password,$servername,$database));
}
?>
