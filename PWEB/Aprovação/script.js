function exibir() {
  var n1 = parseInt(document.getElementById("n1").value);
  var n2 = parseInt(document.getElementById("n2").value);
  var n3 = parseInt(document.getElementById("n3").value);
  var faltas = parseInt(document.getElementById("faltas").value);

  var media = (n1 + n2 + n3) / 3;
  var frequencia = 100 - faltas

  if (media >= 7 && frequencia > 75) {
    alert("Aprovado");
    document.getElementById("Aprovado").style.display = "inline";
    document.getElementById("Reprovado").style.display = "none";
  } else {
    alert("Reprovado");
    document.getElementById("Aprovado").style.display = "none";
    document.getElementById("Reprovado").style.display = "inline";
  }
}
