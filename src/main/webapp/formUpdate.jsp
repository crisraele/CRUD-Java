<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Atualizar Cadastro | Bora Ali</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<div class="container">
 <div class="row">
   <div class="cold-md-7">
   
   <h3> Atualizar Cadastro</h3>
   
   <form action="ClienteUpdate"  method="POST">
   <input value="${cliente.id }"  name="id" style="visibility:hidden">
   <div class="form-floating mb-3">
  <input name="nome" value="${cliente.nome}" maxlength="40" type="text" class="form-control" id="floatingInput" >
  <label for="floatingInput">Nome Completo:</label>
   </div>
   
   <div class="form-floating mb-3">
  <input name="cpf" value="${cliente.cpf}" maxlength="11" type="text" class="form-control" id="floatingInput" >
  <label for="floatingInput">CPF:</label>
   </div>
   
      <div class="form-floating mb-3">
  <input name="nascimento" value="${cliente.nascimento}" type="date" class="form-control" id="floatingInput" >
  <label for="floatingInput">Data de Nascimento:</label>
   </div>
   
   
  <select name="situacao" class="form-select form-select-lg mb-3" aria-label="Default select example">
   <option selected>"${cliente.situacao}"</option>
   <option value="ativo">Ativo</option>
   <option value="inativo">Inativo</option>
  </select>

  <button type="submit" class="btn btn-success">Atualizar</button>
  <button type="reset" class="btn btn-secondary">Apagar</button>

   </form>
   
   
   </div>
 </div>

</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>
</html>