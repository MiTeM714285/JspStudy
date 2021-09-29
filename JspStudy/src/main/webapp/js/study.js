test();
console.log()

function test() {
    const numbers = 1000;
    let num1 = 10;
    let num2 = 20;
    let num3 = 30;
    let num4 = 40;
    let num5 = 50;
    let num;
    console.log(num)
    
    console.log(num1);
    console.log(num2);
    console.log(num3);
    console.log(num4);
    console.log("5번째 " + num5);
}

var num = 10;
var num2 = 20;
var sum = function(a,b) {
    return a+b
}

console.log(sum(num,num2))

const name_text = document.querySelector('#name');
const submit_button = document.querySelector(".submit_button")

submit_button.onclick = () => {
    alert(name_text.value);
}

var names = function(a,b){return a+b}
console.log(names('홍','길동'))

var names2 = (a,b) => {return a+b}
console.log(names2('고','길동'))

var names3 = (a,b) => a+b
console.log(names3('박','길동'))

var names4 = a => a+'길동'
console.log(names4('최'))

const h1Tag = document.createElement('h1')
const textNode = document.createTextNode('노드 추가')
const h1TagClass = document.createAttribute('style');
const h1TagValue = document.createAttribute('value');

h1Tag.setAttributeNode(h1TagClass);
h1Tag.setAttribute('class','test');
h1Tag.setAttributeNode(h1TagValue)
h1Tag.setAttribute('value','test');
h1Tag.appendChild(textNode);

console.log(h1Tag.value)

const main = document.querySelector('.main');
main.appendChild(h1Tag);

const text_name = document.querySelector('.text_name')
text_name.parentNode.removeChild(text_name)