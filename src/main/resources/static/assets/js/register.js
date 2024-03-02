const form = document.querySelector("form");
eField = form.querySelector(".email"),
    eInput = eField.querySelector("input"),
    pField = form.querySelector(".password"),
    pInput = pField.querySelector("input");
const nField = form.querySelector(".name"); // Select the name field
const nInput = nField.querySelector("input"); // Select the name input

const rpField = form.querySelector(".re-password"); // Select the re-password field
const rpInput = rpField.querySelector("input"); // Select the re-password input
form.onsubmit = (e) => {
    e.preventDefault(); //preventing from form submitting
    checkName();
    //if email and password is blank then add shake class in it else call specified function
    (eInput.value == "") ? eField.classList.add("shake", "error") : checkEmail();
    (pInput.value == "") ? pField.classList.add("shake", "error") : checkPass();
    (rpInput.value == "") ? rpField.classList.add("shake", "error") : checkRePassword();

    setTimeout(() => { //remove shake class after 500ms
        eField.classList.remove("shake");
        pField.classList.remove("shake");
        rpField.classList.remove("shake");
    }, 500);

    eInput.onkeyup = () => { checkEmail(); } //calling checkEmail function on email input keyup
    pInput.onkeyup = () => { checkPass(); } //calling checkPassword function on pass input keyup
    rpInput.onkeyup = () => { checkRePassword(); };// Call checkRePassword function on re-pass input keyup

    function checkEmail() { //checkEmail function
        let pattern = /^(?=.*[a-z])[a-z\d]{6,}$/;//pattern for validate email
        if (!eInput.value.match(pattern)) { //if pattern not matched then add error and remove valid class
            eField.classList.add("error");
            eField.classList.remove("valid");
            let errorTxt = eField.querySelector(".error-txt");
            //if email value is not empty then show please enter valid email else show Email can't be blank
            (eInput.value != "") ? errorTxt.innerText = "Username ít nhất 6 ký tự và 1 chữ thường" : errorTxt.innerText = "Username không để trống";
        } else { //if pattern matched then remove error and add valid class
            eField.classList.remove("error");
            eField.classList.add("valid");
        }
    }

    function checkPass() {
        let pattern = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
        if (pInput.value == "") {
            pField.classList.add("error");
            pField.classList.remove("valid");
            document.querySelector(".error-txt-pass").innerText = "Mật khẩu không để trống";
        } else if (!pInput.value.match(pattern)) {
            pField.classList.add("error");
            pField.classList.remove("valid");
            document.querySelector(".error-txt-pass").innerText = "Mật khẩu ít nhất 8 ký tự và 1 chữ";
        } else {
            pField.classList.remove("error");
            pField.classList.add("valid");
            document.querySelector(".error-txt-pass").innerText = ""; // Clear the error message when valid
        }
    }
    function checkName() {
        // Regular expression to match letters, spaces, and Vietnamese characters
        let pattern = /^[a-zA-ZÀ-Ỹà-ỹ\s]{5,}$/;
        if (nInput.value.trim() === "" || !nInput.value.match(pattern)) {
            nField.classList.add("shake", "error");
            let errorTxt = nField.querySelector(".error-txt");
            if (nInput.value.trim() === "") {
                errorTxt.innerText = "Tên không được để trống";
            } else {
                errorTxt.innerText = "Tên phải ít nhất 5 chữ và không có ký tự đặc biệt";
            }
        } else {
            nField.classList.remove("shake", "error");
        }
    }

    function checkRePassword() {
        if (rpInput.value == "") {
            rpField.classList.add("error");
            rpField.classList.remove("valid");
            document.querySelector(".error-txt-repass").innerText = "Nhập lại mật khẩu không để trống";
        } else if (rpInput.value !== pInput.value) {
            rpField.classList.add("error");
            rpField.classList.remove("valid");
            document.querySelector(".error-txt-repass").innerText = "Mật khẩu không khớp";
        } else {
            rpField.classList.remove("error");
            rpField.classList.add("valid");
            document.querySelector(".error-txt-repass").innerText = ""; // Clear the error message when valid
        }
    }

    //if eField and pField doesn't contains error class that mean user filled details properly
    if (!nField.classList.contains("error") && !eField.classList.contains("error") && !pField.classList.contains("error") && !rpField.classList.contains("error")) {
        window.location.href = form.getAttribute("action");
    }
}