window.onload = event => {

    var btn_page_array = document.getElementsByClassName('btn-page');
// this returns array

    document.querySelectorAll(".btn-page")[1].style.cursor = "pointer";
    document.querySelectorAll(".btn-page").forEach(function (item, index, arr) {
        console.log("index : " + index + ", item.innerText : " + arr[index].innerText + ", item.innerHTML : " + item.innerHTML);
    });

    console.log('');

    document.querySelectorAll(".btn-page").forEach((item, index, arr) => {
        console.log("index : ", index, "\n item.innerText : ", arr[index].innerText, "\n item.innerHTML : ", item.innerHTML);
    });

    var array = document.querySelectorAll(".btn-page");

    console.log('\n# for of');
    for (var value of array) {
        console.log("for of / value.innerHTML : " + value.innerHTML);
    }

    console.log('\n# for in - className');
    for (var key in array) {
        console.log(key, array[key].className);
    }

}

// onclick 이벤트
document.querySelectorAll(".btn-page")[0].addEventListener("click", () => console.log("람다식"));
document.querySelectorAll(".btn-page")[1].onclick = function (){
    alert('icon clicked');
}

document.querySelectorAll("h1")[0].oncopy = function (){
    document.querySelectorAll("h1")[0].style.color = "red";
    document.querySelectorAll("h1")[0].innerText = "copy 했어????"
}

fetch("/page", {
    method: "post"
}).then(resp => {
    const respJson = resp.json()
    console.log("resp", resp, respJson)
    return respJson // [[PromiseValue]]를 꺼내 다음 then으로 전송
}).then(data => {
    console.log("data", data)
}).catch(excResp => {
    console.log(excResp)
})

$.ajax({
    type : 'post',
    url: '/spring/member/login',
    data: {'id': $('#loginId').val(), 'pwd': $('#loginPwd').val()},
    dataType: 'text',
    success: function(data){
        if(data == 'success'){
            location.href = '/spring/index.jsp';

        }else if(data == 'fail'){
            alert('로그인 실패');
        }
    },
    error: function(err){
        console.log(err);
    }

});