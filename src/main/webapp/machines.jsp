<%-- 
    Document   : machines
    Created on : 4 déc. 2021, 08:55:50
    Author     : Lachgar
--%>

<%@page import="beans.Machine"%>
<%@page import="service.MachineService"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Gestion des machines</title>
<link href="style/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="style/assets/vendors/mdi/css/materialdesignicons.min.css" />
<link rel="stylesheet"
	href="style/assets/vendors/flag-icon-css/css/flag-icon.min.css" />
<link rel="stylesheet"
	href="style/assets/vendors/css/vendor.bundle.base.css" />
<link rel="stylesheet"
	href="style/assets/vendors/font-awesome/css/font-awesome.min.css" />
<link rel="stylesheet"
	href="style/assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css" />
<link rel="stylesheet" href="style/assets/css/style.css" />
</head>
<body>
	<form action="MachineController" method="POST">
		<input type="hidden" name="id"
			value="<%=request.getParameter("id") == null ? "" : request.getParameter("id")%>"
			size="id" />
		<fieldset>
			<legend>Nouvelle machine</legend>
			<table border="0">

				<tr>
					<td>Référence :</td>
					<td><input required="" type="text" name="reference"
						value="<%=request.getParameter("reference") == null ? "" : request.getParameter("reference")%>" /></td>
					<td>*</td>
				</tr>
				<tr>
					<td>Date Achat :</td>
					<td><input required="" type="date" name="dateAchat"
						value="<%=request.getParameter("dateAchat") == null ? "" : request.getParameter("dateAchat")%>" /></td>
					<td>*</td>
				</tr>
				<tr>
					<td>Prix :</td>
					<td><input required="" type="text" name="prix"
						value="<%=request.getParameter("prix") == null ? "" : request.getParameter("prix")%>" /></td>
					<td>*</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" value="Envoyer" /></td>
					<td><input type="reset" value="Annuler" /></td>
				</tr>

			</table>

		</fieldset>
	</form>

	<fieldset>
		<legend>Liste des machines </legend>
		<table border="1">
			<thead>
				<tr>
					<th>ID</th>
					<th>Référence</th>
					<th>Date Achat</th>
					<th>Prix</th>
					<th>Supprimer</th>
					<th>Modifier</th>
				</tr>
			</thead>
			<tbody>
				<%
				MachineService ms = new MachineService();
				for (Machine m : ms.findAll()) {
				%>
				<tr>
					<td><%=m.getId()%></td>
					<td><%=m.getReference()%></td>
					<td><%=m.getDateAchat()%></td>
					<td><%=m.getPrix()%></td>
					<td><a href="MachineController?id=<%=m.getId()%>&op=delete">Supprimer</a></td>
					<td><a href="MachineController?id=<%=m.getId()%>&op=update">Modifier</a></td>
				</tr>
				<%
				}
				%>
			</tbody>
		</table>

	</fieldset>
</body>
</html>
