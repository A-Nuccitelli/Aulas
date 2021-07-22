//Aula 7 projetos em 7 dias (d7js)
//Professor Bonieky Lacerda
//Aluno Anderson Nuccitelli

//Fazendo um solicitação para escutar um evento sempre que encaminhar um formulario,
//entretanto, adicionado tambem a função async para dizer que a ordem da sequencia não sera ordenada,
//utilizado tambem a função fetch.
document.querySelector('.busca').addEventListener('submit', async (event)=>{
    
    //inserido para manter o evento na pagina e não recarregar, uma vez que é um formulario no html
    event.preventDefault();

    //declara input para pegar o que for preenchido no formulario;
    let input = document.querySelector('#searchInput').value;
    
    //mostra no log a informação do input (opcional)
    //console.log(input);

    //Cria-se um condição, se input for diferente que nada
    if(input !== '') {
        
        //ativará a função clearInfo (esconde o bloco e apaga a mensagem)
        clearInfo();
        //em seguida, apresentará a função de aviso (showWarning, que usa a div de aviso e insere uma mensagem)
        showWarning('Carregando...');

        //declara url para buscar a API (url encontrada no site) e preenche conforme solicitado no manual da API
        let url = `https://api.openweathermap.org/data/2.5/weather?q=${encodeURI(input)}&appid=(seu token)&units=metric&lang=pt_br`;
        
        //declara results para esperar a função fetch buscar as informações da url
        //declara json para esperar pegar as informações do result e adicionar na variavel json
        let results = await fetch(url);
        let json = await results.json();
        
        //Opcional para imprimir log no console do inspecionar html
        console.log(json);

        //Cria-se uma condição, se o codigo que busca na API for "exatamente" 200, é sinal que encontrou a cidade
        if(json.cod === 200){
 
            //chama a função showInfo para preencher os dados, se for condizente a logica
            showInfo({
                name: json.name,
                country: json.sys.country,
                temp: json.main.temp,
                tempIcon: json.weather[0].icon,
                windSpeed: json.wind.speed,
                windAngle: json.wind.deg
            });

            //se não for exatamente o codigo, chama a função clear para esconder o bloco e apagar a mensagem
        } else{
            clearInfo();
            //depois imprimi outra mensagem
            showWarning('Cidade não encontrada!');
    }
    //se não for diferente de vazio, em outra palavras, se for vazio, esconde o bloco e apaga a mensagem
    }else{
        clearInfo();
    }
});

//Cria-se a função para indicar as informações
function showInfo(json) {
    
    //Apaga a mensagem
    showWarning('');

    //Faz as solicitações para trocar no html nos campos destinado para as variaveis indicadas
    document.querySelector('.titulo').innerHTML = `${json.name}, ${json.country}`;
    document.querySelector('.tempInfo').innerHTML = `${json.temp} <sup>ºC</sup>`;
    document.querySelector('.ventoInfo').innerHTML = `${json.windSpeed}<span>km/h</span>`;

    //Referente a imagem, ele buscou no site e encontrou a url, então colocou a variavel icon que vem no json
    document.querySelector('.temp img').setAttribute('src', `http://openweathermap.org/img/wn/${json.tempIcon}@2x.png`)
    //Angulo com correção de 90 graus, alterando no CSS
    document.querySelector('.ventoPonto').style.transform = `rotate(${json.windAngle - 90}deg)`;
    //Libera para aparecer o bloco fazendo uma solicitação para o CSS
    document.querySelector('.resultado').style.display = 'block';
}
//Cria-se a função de limpeza e esconder o bloco
function clearInfo(){
    showWarning('');
    document.querySelector('.resultado').style.display = 'none';
}
//cria-se a função de texto para utilizar o div no html aviso, assim, sempre que introduzir uma mensagem na função aparecerá naquele campo.
function showWarning(msg) {
    document.querySelector('.aviso').innerHTML = msg;
}