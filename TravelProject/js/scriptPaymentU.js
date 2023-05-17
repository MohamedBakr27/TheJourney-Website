const form = document.getElementById("form");
const guestName = document.getElementById("name");
const address = document.getElementById("address");
const whereTo = document.getElementById("select1");
const from = document.getElementById("select2");
const arrivals = document.getElementById("arrivals");
const leaving = document.getElementById("leaving");
const inp = document.getElementsByClassName("btn");


const setError = (element, message) => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector(".error")

    errorDisplay.innerText = message;
    inputControl.classList.add("error");
    inputControl.classList.remove("success");
};


const setSuccess = element => {
    const inputControl = element.parentElement;
    const errorDisplay = inputControl.querySelector(".error");

    errorDisplay.innerText = "";
    inputControl.classList.add("success");
    inputControl.classList.remove("error");
};

const validateInput = () => {
    const addressValue = address.value.trim();
    const arrivalsValue = arrivals.value.trim();
    const leavingValue = leaving.value.trim();

    if (addressValue === "") {
        setError(address, "Address is required");
    }
    else {
        setSuccess(address);
    }

    if (arrivalsValue == "") {
        setError(arrivals, "Arrivals date is required");
    }
    else {
        setSuccess(arrivals);
    }

    if (leavingValue == "") {
        setError(leaving, "Leaving date is required");
    }
    else {
        setSuccess(leaving);
    }
};