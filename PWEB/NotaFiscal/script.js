jQuery(function($){
  $("#cpf-cliente").mask("000.000.000-00");
  $("#telefone-cliente").mask("(00) 00000-0000");
});

var valor1, valor2, valor3, valorSubtotal1, valorSubtotal2, valorSubtotal3;

function valorProduto1() {
  var produto1 = document.getElementById("produto-1").value;

  if (produto1 == "Bicicleta") {
    valor1 = 597.55;
  } else if (produto1 == "Patins") {
    valor1 = 359.9;
  } else {
    valor1 = 198.45;
  }

  var msgValor1 = document.getElementById("valor-produto-1");
  msgValor1.innerHTML = "R$ " + valor1.toFixed(2);
}

function calcularSubtotalProduto1() {
  msgValorSubtotal1 = document.getElementById("valor-subtotal-1");

  if (valor1 == undefined){
    msgValorSubtotal1.innerText = "Selecione um produto!";
  } else {
    var quantidadeProduto1 = document.getElementById("qtd-produto-1").value;
    valorSubtotal1 = valor1 * quantidadeProduto1;
    msgValorSubtotal1.innerText = "R$ " + valorSubtotal1.toFixed(2);
  }
}

function valorProduto2() {
  var produto2 = document.getElementById("produto-2").value;

  if (produto2 == "Cubo mágico") {
    valor2 = 63.5;
  } else if (produto2 == "Lego") {
    valor2 = 549.9;
  } else {
    valor2 = 269.9;
  }

  var msgValor2 = document.getElementById("valor-produto-2");
  msgValor2.innerHTML = "R$ " + valor2.toFixed(2);
}

function calcularSubtotalProduto2() {
  msgValorSubtotal2 = document.getElementById("valor-subtotal-2");

  if (valor2 == undefined){
    msgValorSubtotal2.innerText = "Selecione um produto!";
  } else {
    var quantidadeProduto2 = document.getElementById("qtd-produto-2").value;
    valorSubtotal2 = valor2 * quantidadeProduto2;
    msgValorSubtotal2.innerText = "R$ " + valorSubtotal2.toFixed(2);
  }
}

function valorProduto3() {
  var produto3 = document.getElementById("produto-3").value;

  if (produto3 == "Cara a cara") {
    valor3 = 46.0;
  } else if (produto3 == "Munchkin") {
    valor3 = 119.9;
  } else {
    valor3 = 53.9;
  }

  msgValor3 = document.getElementById("valor-produto-3");
  msgValor3.innerHTML = "R$ " + valor3.toFixed(2);
}

function calcularSubtotalProduto3() {
  msgValorSubtotal3 = document.getElementById("valor-subtotal-3");

  if (valor3 == undefined){
    msgValorSubtotal3.innerText = "Selecione um produto!";
  } else {
    var quantidadeProduto3 = document.getElementById("qtd-produto-3").value;
    valorSubtotal3 = valor3 * quantidadeProduto3;
    msgValorSubtotal3.innerText = "R$ " + valorSubtotal3.toFixed(2);
  }
}

function calcularTotal() {
  var msgValorTotal = document.getElementById("valor-total");
  var valorTotal = valorSubtotal1 + valorSubtotal2 + valorSubtotal3;

  if (valorTotal >= 0){
    msgValorTotal.innerText = "R$ " + valorTotal.toFixed(2);
  }
}
