const nav = document.querySelector(".nav-links");
const burger = document.querySelector(".burger");

function navSlide() {
    const navLinks = document.querySelectorAll(".nav-links li");

    burger.addEventListener("click", () => {
        //Toggle Nav
        nav.classList.toggle("nav-active");

        //Animate Links
        navLinks.forEach((link, index) => {
            if (link.style.animation) {
                link.style.animation = ""
            } else {
                link.style.animation = `navLinkFade 0.5s ease forwards ${index / 7 + 0.5}s`;
            }
        });
        //Burger Animation
        burger.classList.toggle("toggle");
    });

}

navSlide();

// index 페이지 기본글
fetch('/resources/lorem80.txt').then(function (data) {

    data.text().then(function (text) {
        document.querySelector(".lorem80").innerText += text;
    })

})


//page 요청
document.querySelector(".corona").onclick = () => {
    axios.get('/resources/corona.json')
        // 응답(성공)
        .then(function (response) {
            document.querySelector(".lorem80").innerText = JSON.stringify(response.data);
        })
        // 응답(실패)
        .catch(function (error) {
            console.log("#### error : " + error);
        })
        // 응답(항상 실행)
        .then(function () {
            // ...
        });

}

/*****************************************************************
    Login & Register
 ******************************************************************/

//login 창 열림
const loginPanel = document.querySelector(".login-panel");

document.querySelector(".btn-open-login").onclick = () => {
    loginPanel.classList.toggle("active");
    burger.click();
}

//register 창 열림
const regiPanel = document.querySelector(".register-panel");

document.querySelector(".btn-open-register").onclick = () => {
    regiPanel.classList.toggle("active");
    burger.click();
}

// 창 닫힘 버튼
document.querySelectorAll(".btn-close").forEach(function (item){
    item.onclick = () => {
        loginPanel.classList.remove("active");
        regiPanel.classList.remove("active");
    }
})

// Register
document.querySelector(".btn-register").onclick = function (){

    var input = document.querySelectorAll(".register-panel .input-panel input");

    //index 0 : Email
    //index 1 : Nickname
    //index 2 : Pwd
    //index 3 : Confirm
    var array = [];
    input.forEach(function (item, index) {

        switch (index){
            case 0: array.push({email: item.value}); break;
            case 1: array.push({nickname: item.value}); break;
            case 2: array.push({password: item.value}); break;
        }
    })

    console.log(array);

    axios({
        method: 'post',
        url: "/register",
        data: array
    })
    .then(function (response){
        console.log(response);
    })
    .catch(function (error){
        console.log(error);
    })

}





