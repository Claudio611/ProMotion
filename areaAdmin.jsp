<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Area Riservata Admin</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link href="/css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <!-- Font principali -->
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;700&family=Playfair+Display&display=swap" rel="stylesheet">
</head>

<body class="admin-page">

<%
it.unirc.nba.model.Utente utente = (it.unirc.nba.model.Utente) session.getAttribute("utente");
    String username = (utente != null) ? utente.getUsername() : "Ospite";
%>

<!-- Navbar -->
<%@ include file="frame_nav.html" %>

<br>
<br>

<div class="welcome-section">
    <h1>Benvenuto <%= username %>!</h1>
    <p> In quest'area potrai gestire allenamenti e giocatori 🏀</p>
    <p> Allenamenti in programma? </p>

    <form action="/privato/admin/richiediCreazioneSfida" method="get">
        <button class="btn btn-primary" type="submit">
            <i class="fas fa-plus-circle"></i> Crea allenamenti
        </button>
    </form>

    <p>Qualche ripensamento? Gestisci gli allenamenti che hai già creato!</p> 

    <form action="/privato/admin/VisualizzaSfideAdmin" method="get">
        <button class="btn btn-primary" type="submit">
            <i class="fas fa-eye"></i> Visualizza allenamenti
        </button>
    </form>
</div>

<!-- Footer -->
<%@ include file="frame_footer.html" %>

</body>
</html>