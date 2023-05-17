let isDark = false;
const body = document.querySelector("body");
function colorMode()
{
    body.classList.toggle("dark");
    if(isDark) 
    {
        document.querySelector(".fa-sun").className="fas fa-moon";
        document.querySelector("#darkModeBut").innerText = "Dark Mode";
    }
    else 
    {
        document.querySelector(".fa-moon").className="fas fa-sun";
        document.querySelector("#darkModeBut").innerText = "Light Mode";
    }
    isDark = !isDark;
}