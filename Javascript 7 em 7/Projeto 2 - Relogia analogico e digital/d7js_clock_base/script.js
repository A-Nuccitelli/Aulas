//Aula Javascript 7 projetos em 7 dias (d7js - B7Web)
//Professor Bonieky Lacerda
//Aluno Anderson Nuccitelli

//Setado os elementos necessários
let digitalElement = document.querySelector('.digital');
let sElement = document.querySelector('.p_s');
let mElement = document.querySelector('.p_m');
let hElement = document.querySelector('.p_h');

function updateClock() {
    //função data tras todas a informação de data atual, após chamamos no get cada opção que queremos
    let now = new Date();
    let hour = now.getHours();
    let minute = now.getMinutes();
    let second = now.getSeconds();

    digitalElement.innerHTML = `${fixZero(hour)}:${fixZero(minute)}:${fixZero(second)}`;


//Correção do angulo e calculado o avanço do ponteiro por passo de deg    
    let sDeg = ((360 / 60) * second) - 90;
    let mDeg = ((360 / 60) * minute) - 90;
    let hDeg = ((360 / 12) * hour) - 90;

//Alterando o css por js, movimento dos ponteiros
    sElement.style.transform = `rotate(${sDeg}deg)`;
    mElement.style.transform = `rotate(${mDeg}deg)`;
    hElement.style.transform = `rotate(${hDeg}deg)`;

}

//Para corrigir o 0 quando o valor for menor que 10 no relogio digital
function fixZero(time) {
//    if(time <10) {
//        return '0' + time;
//   } else {
//        return time;
//
// Simplificando o comando de função
    return time < 10 ? `0${time}` : time;

}

//atualização do relogio por segundo
setInterval(updateClock, 1000);
//iniciar o site com o clock zerado
updateClock();