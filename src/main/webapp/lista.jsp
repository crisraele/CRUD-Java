<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@400;700&family=Yanone+Kaffeesatz&display=swap" rel="stylesheet">
<title>Lista de Clientes | Bora Ali</title>
</head>


<body >
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid" >
    <a class="navbar-brand" href="home.html" >
    <img src="assets/logo.png" width="160px" height="100%">
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="index.html" style="font-size: 25px;  font-family: 'Yanone Kaffeesatz', sans-serif;" >Página Inicial</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="lista.jsp" style="font-size: 25px; font-family: 'Yanone Kaffeesatz', sans-serif;">Lista de Clientes</a>
        </li>
        
        
      </ul>
      
     </div>
   
    
   
	
     
      <form  action="CreateAndFind"  method="GET" class="d-flex">
        <input name="pesquisa" class="form-control me-2" type="search" placeholder="Digitar nome ou CPF" aria-label="Search">
        <button class="btn btn-primary" type="submit">Buscar</button>
      
      </form>
      
    </div>
  
</nav>

<br>
<br>

<div class="container">
 <div class="row">
    
    
   <div class="cold-md-7" >
   
   <h3>Lista de Clientes</h3>
   
   <table class="table">
   
   <thead>
   <tr>
   
   <th>Id</th>
   <th>Nome Completo</th>
   <th>CPF</th>
   <th>Data de Nascimento</th>
   <th>Situação</th>
   
   </tr>
   </thead>
   
   <tbody>
   <c:forEach items = "${clientes}" var="cliente">
   <tr>
   <td>${cliente.id}</td>
   <td>${cliente.nome}</td>
   <td>${cliente.cpf}</td>
   <td>${cliente.nascimento}</td>
   <td>${cliente.situacao}</td>
   
   <td>
    <a href="ClienteApagar?clienteId=${cliente.id }">Apagar</a>
    <a href="ClienteUpdate?clienteId=${cliente.id }">Atualizar</a>
   
   </td>
   
   </tr>
   
   </c:forEach>
   
   </tbody>
   
   
   </table>
   
   <h5>
   <a href="index.html" style= "font-family: 'Yanone Kaffeesatz', sans-serif;">Voltar para Cadastro</a>
   </h5>
   
   </div>
 </div>

</div>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

</body>

</html>