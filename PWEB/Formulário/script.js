$(document).ready(function(){
  $('#telefone').mask('0000-0000');
  $('#cpf').mask('000.000.000-00');
  $('#lblnome').val(nome);
});



function readURL(input) {
  if (input.files && input.files[0]) {
      var reader = new FileReader();
      reader.onload = function (e) {
          $('#imgPessoa').attr('src', e.target.result);
      }
      reader.readAsDataURL(input.files[0]);
  }
}

$("#imgFile").change(function(){
  readURL(this);
});

$("#frmDados").submit(function(){
  $("#frmDados" ).validate({
    debug: true,
    rules: {
    cpf: {
     required: true
    },
    nome: {
    required: true
    },
       
    },
    messages:{
    cpf: {
     required: "Campo cpf obrigatório!"
    },
    nome: {
      required: "Campo nome obrigatório!"
     }
    },
    submitHandler: function(form) {
      form.submit();
      alert("Dados Enviados com sucesso!");
 
    }
    });
});