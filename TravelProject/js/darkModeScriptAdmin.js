let isDark = false;
const body = document.querySelector("body");
function colorMode()
{
    body.classList.toggle("dark");
    if(isDark) 
    {
        document.querySelector(".fa-sun").className="fa-solid fa-moon";
        document.querySelector("#mode h3").innerText = "Dark Mode";
    }
    else 
    {
        document.querySelector(".fa-moon").className="fa-solid fa-sun";
        document.querySelector("#mode h3").innerText = "Light Mode";
    }
    isDark = !isDark;
}