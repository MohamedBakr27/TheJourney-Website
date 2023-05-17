<%@ Page Language="C#" UnobtrusiveValidationMode="none" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="TravelProject.UserHomePages.Payment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Payment</title>
    <!-- custom css file link  -->
    <link rel="stylesheet" href="../css/stylePaymentU.css"/>
    <link rel="stylesheet" href="../css/goUpStyle.css"/>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">

    <div class="card-container">

        <div class="front">
            <div class="image">
                <img src="../img/chip.png" alt=""/>
                <img src="../img/visa.png" alt=""/>
            </div>
            <asp:Label ID="cost" runat="server" ForeColor="#ffffff" Font-Size="Larger" ></asp:Label>
            <div class="card-number-box">################</div>
            <div class="flexbox">
                <div class="box">
                    <span>card holder</span>
                    <div class="card-holder-name">full name</div>
                </div>
                <div class="box">
                    <span>expires</span>
                    <div class="expiration">
                        <span class="exp-month">mm</span>
                        <span class="exp-year">yy</span>
                    </div>
                </div>
            </div>
        </div>

        <div class="back">
            <div class="stripe"></div>
            <div class="box">
                <span>cvv</span>
                <div class="cvv-box"></div>
                <img src="../img/visa.png" alt=""/>
            </div>
        </div>
    </div>

    <div id="form">
        <div class="inputBox">
            <span>card number</span>
            <asp:TextBox ID="number" maxlength="16" class="card-number-input" runat="server"></asp:TextBox>
            <div class="error"></div>
        </div>
        <div class="inputBox">
            <span>card holder</span>
            <asp:TextBox ID="holder" class="card-holder-input" runat="server"></asp:TextBox>
            <div class="error"></div>
        </div>
        <div class="flexbox">
            <div class="inputBox">
                <span>expiration mm</span>
                <asp:DropDownList ID="month" class="month-input" runat="server">
                    <asp:ListItem Value="month" >month</asp:ListItem>
                    <asp:ListItem Value="1">1</asp:ListItem>
                    <asp:ListItem Value="2">2</asp:ListItem>
                    <asp:ListItem Value="3">3</asp:ListItem>
                    <asp:ListItem Value="4">4</asp:ListItem>
                    <asp:ListItem Value="5">5</asp:ListItem>
                    <asp:ListItem Value="6">6</asp:ListItem>
                    <asp:ListItem Value="7">7</asp:ListItem>
                    <asp:ListItem Value="8">8</asp:ListItem>
                    <asp:ListItem Value="9">9</asp:ListItem>
                    <asp:ListItem Value="10">10</asp:ListItem>
                    <asp:ListItem Value="11">11</asp:ListItem>
                    <asp:ListItem Value="12">12</asp:ListItem>
                </asp:DropDownList>
                <div class="error"></div>
            </div>
            <div class="inputBox">
                <span>expiration yy</span>
                <asp:DropDownList ID="yy" class="year-input" runat="server">
                    <asp:ListItem Value="year">year</asp:ListItem>
                    <asp:ListItem Value="24">2024</asp:ListItem>
                    <asp:ListItem Value="25">2025</asp:ListItem>
                    <asp:ListItem Value="26">2026</asp:ListItem>
                    <asp:ListItem Value="27">2027</asp:ListItem>
                    <asp:ListItem Value="28">2028</asp:ListItem>
                    <asp:ListItem Value="29">2029</asp:ListItem>
                    <asp:ListItem Value="30">2030</asp:ListItem>
                </asp:DropDownList>
                <div class="error"></div>
            </div>
            <div class="inputBox">
                <span>cvv</span>
                <asp:TextBox ID="cvv" maxlength="4" class="cvv-input" runat="server"></asp:TextBox>
                <div class="error"></div>
            </div>
        </div>
        <asp:Button ID="bookBut" class="submit-btn" runat="server" Text="submit" OnClick="bookBut_Click" />
        <asp:Label ID="warn" ForeColor="Red" runat="server"></asp:Label>
    </div>
</div>    
<script>

    const form = document.getElementById("form");
    const number = document.getElementById("number");
    const holder = document.getElementById("holder");
    const month = document.getElementById("month");
    const year = document.getElementById("yy");
    const cvv = document.getElementById("cvv");



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
        const numberValue = number.value.trim();
        const holderValue = holder.value.trim();
        const monthValue = month.value.trim();
        const yearValue = year.value.trim();
        const cvvValue = cvv.value.trim();

        if (numberValue === "") {
            setError(number, "Card number is required");
        }
        else {
            setSuccess(number);
        }

        if (holderValue === "") {
            setError(holder, "holder name is required");
        }

        else {
            setSuccess(holder);
        }

        if (monthValue === "month") {
            setError(month, "Exp month is required");
        }

        else {
            setSuccess(month);
        }

        if (yearValue === "year") {
            setError(year, "Exp year is required");
        }

        else {
            setSuccess(year);
        }

        if (cvvValue === "") {
            setError(cvv, "cvv is required");
        }

        else {
            setSuccess(cvv);
        }

    };

    document.querySelector('.card-number-input').oninput = () => {
        document.querySelector('.card-number-box').innerText = document.querySelector('.card-number-input').value;
    }

    document.querySelector('.card-holder-input').oninput = () => {
        document.querySelector('.card-holder-name').innerText = document.querySelector('.card-holder-input').value;
    }

    document.querySelector('.month-input').oninput = () => {
        document.querySelector('.exp-month').innerText = document.querySelector('.month-input').value;
    }

    document.querySelector('.year-input').oninput = () => {
        document.querySelector('.exp-year').innerText = document.querySelector('.year-input').value;
    }

    document.querySelector('.cvv-input').onmouseenter = () => {
        document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(-180deg)';
        document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(0deg)';
    }

    document.querySelector('.cvv-input').onmouseleave = () => {
        document.querySelector('.front').style.transform = 'perspective(1000px) rotateY(0deg)';
        document.querySelector('.back').style.transform = 'perspective(1000px) rotateY(180deg)';
    }

    document.querySelector('.cvv-input').oninput = () => {
        document.querySelector('.cvv-box').innerText = document.querySelector('.cvv-input').value;
    }

</script>
        <span class="up"><i class="fas fa-arrow-up"></i></span>
        <script src="../js/goUpScript.js"></script>
    </form>
</body>
</html>
