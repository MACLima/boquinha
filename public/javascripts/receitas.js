function carregapagina(pagina, funcao, dados){
    $.get(pagina, function (conteudo) {
        $("#principal").html(conteudo);
        if(funcao) {
            funcao(dados);
        }
        $("#principal .hide").slideDown('slow', 'swing');
    });
}

function montareceita(dados){
    carregapagina("/receita.html", function () {
        $("#principal #titulo").html(dados.titulo);
        $("#principal #ingredientes").html(dados.ingredientes);
        $("#principal #modo").html(dados.modo);
        $("#principal #observacoes").html(dados.observacoes);
    });
}

function receita(codigo){
    $.getJSON("/qryreceita.php", {codigo: codigo}, function(dados) {
        montareceita(dados);
    });
}

function aleatoria(){
    $.getJSON("/qryreceita.php", {funcao: 'aleatoria'}, function(dados) {
        montareceita(dados);
    });
}

function todas(){
    $.getJSON("/qryreceita.php", {funcao: 'todas'}, function(dados) {
        carregapagina("/lista.html", function () {
            for(i in dados){
                $("#principal #receitas").append("<li><a href='#' onclick='receita("+dados[i].codigo+")'>"+dados[i].titulo+"</a></li>");
            }
        });
    });
}

function sobre(){
    carregapagina("/sobre.html");
}

function cadastro(){
    carregapagina("/cadastro.html");
    //$("form").validator();
}

function adicionar(form) {
    $.getJSON("/qryreceita.php?funcao=adicionar&" + form.serialize(), function(resultado) {
        if (resultado.adicionar === true)  {
            alert("Receita cadastrada!");
        } else {
            //form.data("validator").invalidate(resultado);
            alert("Receita nÃ£o cadastrada!");
        }
    });
}