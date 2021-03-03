const nav = document.querySelector(".nav-links");
const loginPanel = document.querySelector(".login-panel");
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

//login 창 열림

document.querySelector(".btn-login").onclick = () => {
    loginPanel.classList.toggle("active");
    burger.click();
}