<!doctype html>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="it.prova.gestioneprodotti.model.Prodotto"%>
<html lang="it" class="h-100" >
	 <head>
	 
	 	<!-- Common imports in pages -->
	 	<jsp:include page="../header.jsp" />
	   
	   <title>Inserisci Nuovo Prodotto</title>
	 </head>
	   <body class="d-flex flex-column h-100">
	   
	   		<!-- Fixed navbar -->
	   		<jsp:include page="../navbar.jsp"></jsp:include>
	    
			
			<!-- Begin page content -->
			<main class="flex-shrink-0">
			  <div class="container">
			  
			  		<div class="alert alert-danger alert-dismissible fade show ${errorMessage==null?'d-none':'' }" role="alert">
					  ${errorMessage}
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-danger alert-dismissible fade show d-none" role="alert">
					  Esempio di operazione fallita!
					  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
					<div class="alert alert-info alert-dismissible fade show d-none" role="alert">
					  Aggiungere d-none nelle class per non far apparire
					   <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close" ></button>
					</div>
			  
			  <div class='card'>
				    <div class='card-header'>
				        <h5>Inserisci nuovo Prodotto</h5> 
				    </div>
				    <div class='card-body'>
		
							<h6 class="card-title">I campi con <span class="text-danger">*</span> sono obbligatori</h6>
		
		
							<form method="post" action="ExecuteInsertProdottoServlet" class="row g-3" novalidate="novalidate">
							
								<% Prodotto prodottoInPagina = (Prodotto)request.getAttribute("insert_prodotto_attr"); %>
							
								<div class="col-md-6">
									<label for="nome" class="form-label">Nome <span class="text-danger">*</span></label>
									<input type="text" name="nome" id="nome" class="form-control" placeholder="Inserire il nome"  
										value="<%=prodottoInPagina.getNome()!=null?prodottoInPagina.getNome():"" %>" required>
								</div>
								
								<div class="col-md-6">
									<label for="descrizione" class="form-label">Descrizione <span class="text-danger">*</span></label>
									<input type="text" name="descrizione" id="descrizione" class="form-control" placeholder="Inserire la descrizione"  
										value="<%=prodottoInPagina.getDescrizione()!=null?prodottoInPagina.getDescrizione():"" %>" required>
								</div>
								
								<div class="col-md-6">
									<label for="marca" class="form-label">Marca <span class="text-danger">*</span></label>
									<input type="text" name="marca" id="marca" class="form-control" placeholder="Inserire la marca"  
										value="<%=prodottoInPagina.getMarca()!=null?prodottoInPagina.getMarca():"" %>" required>
								</div>
							
								<div class="col-md-6">
									<label for="prezzo" class="form-label">Prezzo <span class="text-danger">*</span></label>
									<input type="number" class="form-control" name="prezzo" id="prezzo" placeholder="Inserire prezzo" 
									value="<%=prodottoInPagina.getPrezzo()!=null?prodottoInPagina.getPrezzo():"" %>" required>
								</div>
								
								<div class="col-md-6">
									<label for="disponibile" class="form-label">Disponibile <span class="text-danger">*</span></label>
									<input type="text" name="disponibile" id="disponibile" class="form-control" placeholder="Inserire true se il prodotto � disponibile false se no" >
								</div>
								
								<div class="col-md-3">
									<label for="dataCreazioneProdotto" class="form-label">Data Creazione Prodotto<span class="text-danger">*</span></label>
									<input class="form-control"  name="dataCreazioneProdotto" id="dataCreazioneProdotto" type="date" placeholder="dd/MM/yy" title="formato : gg/mm/aaaa" 
										value="<%=prodottoInPagina.getDataCreazioneProdotto()!=null? prodottoInPagina.getDataCreazioneProdotto().format(DateTimeFormatter.ofPattern("yyyy-MM-dd")):""  %>" required/>
								</div>
								
								
							<div class="col-12">
								<button type="submit" name="submit" value="submit" id="submit" class="btn btn-primary">Conferma</button>
							</div>
		
						</form>
  
				    
				    
					<!-- end card-body -->			   
				    </div>
				<!-- end card -->
				</div>		
					  
			    
			  <!-- end container -->  
			  </div>
			  
			</main>
			
			<!-- Footer -->
			<jsp:include page="../footer.jsp" />
	  </body>
</html>