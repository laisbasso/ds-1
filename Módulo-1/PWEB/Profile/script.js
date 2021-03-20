function exibir() {
  var nome = document.getElementById("nome").value;
  var telefone = document.getElementById("telefone").value;
  var cpf = document.getElementById("cpf").value;

  console.log(nome);

  if (nome == "" || telefone == "" || cpf == "") {
    alert("Favor preencher todos os campos!");

    if (nome == ""){
        document.getElementById("nome").classList.add("borda-vermelha")
    }    
    if (telefone == ""){
        document.getElementById("telefone").classList.add("borda-vermelha")
    }    
    if (cpf == ""){
        document.getElementById("cpf").classList.add("borda-vermelha")
    }

  } else {
    alert(
      "Nome: " +
        nome +
        "\n" +
        "Telefone: " +
        telefone +
        "\n" +
        "CPF: " +
        cpf +
        "\n" +
        "\n" +
        "Deseja enviar as informações?"
    );
  }
}

function maskCpf(i) {
  var v = i.value;

  if (isNaN(v[v.length - 1])) {
    i.value = v.substring(0, v.length - 1);
    return;
  }

  i.setAttribute("maxlength", "14");
  if (v.length == 3 || v.length == 7) i.value += ".";
  if (v.length == 11) i.value += "-";
}

function mask(o, f) {
  setTimeout(function () {
    var v = mphone(o.value);
    if (v != o.value) {
      o.value = v;
    }
  }, 1);
}

function mphone(v) {
  var r = v.replace(/\D/g, "");
  r = r.replace(/^0/, "");
  if (r.length > 10) {
    r = r.replace(/^(\d\d)(\d{5})(\d{4}).*/, "($1) $2-$3");
  } else if (r.length > 5) {
    r = r.replace(/^(\d\d)(\d{4})(\d{0,4}).*/, "($1) $2-$3");
  } else if (r.length > 2) {
    r = r.replace(/^(\d\d)(\d{0,5})/, "($1) $2");
  } else {
    r = r.replace(/^(\d*)/, "($1");
  }
  return r;
}
