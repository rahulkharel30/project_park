function logout(){
        var reallyLogout=confirm("Do you really want to log out?");
        if(reallyLogout){
            location.href= "/pages/forms/users_login.php";
        }
}
var el = document.getElementById("logout");
if (el.addEventListener) {
        el.addEventListener("click", logout, false);
    } else {
        el.attachEvent('onclick', logout);
}

