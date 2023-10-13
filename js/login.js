const login = document.querySelector(".Login");
const register = document.querySelector(".Register");
const reg = document.querySelector(".register");
const log = document.querySelector(".login");
const registerBut = document.querySelector(".Main .buttonField .Register button");
const loginBut = document.querySelector(".Main .buttonField .Login button");

login.addEventListener("click" , () => {
    log.style.transform="translateX(-350px)";
    reg.style.transform="translateX(-400px)";
    loginBut.style.background="#000000";
    loginBut.style.color="#ffff"
    registerBut.style.background="#ffff";
    registerBut.style.color="#000000"
})

register.addEventListener("click", () => {
    reg.style.transform="translateX(5px)";
    log.style.transform="translateX(100px)";
    loginBut.style.background="#ffff";
    loginBut.style.color="#000000"
    registerBut.style.background="#000000";
    registerBut.style.color="#ffff"
})

const btn = document.querySelector(".sgnup");
const inpt = document.querySelectorAll("#input1");

inpt.addEventListener('keypress' , handleInputChange);

const saveToLocalStorage = () => {
    if(inpt.value) {
        localStorage.setItem('input1' , inpt.value);
    }
}

const getFromLocalStorage = () => {
    inpt.value=localStorage.getItem('input1');
} 

btn.addEventListener("click" , () => {
    saveToLocalStorage();
});

getFromLocalStorage();

function handleInputChange(){
    saveToLocalStorage();
}