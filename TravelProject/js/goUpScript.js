// Go to the start of the page 
const upButton = document.querySelector(".up")

window.onscroll = function()
{
  if (this.scrollY >= 100)
  {
      upButton.classList.add("show");
  }
 else
  {
      upButton.classList.remove("show");   
  }
}

upButton.addEventListener("click", function()
{
      window.scrollTo({
        top:0,
        behavior:"smooth",
      })
})