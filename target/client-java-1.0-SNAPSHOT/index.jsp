<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% String context = request.getContextPath();%>
<!DOCTYPE html>
<html>
<head>
    <title>POKEMON API</title>
    <link rel="stylesheet" href="<%=context%>/css/bootstrap.min.css">
</head>
<body>
    <h1>Roy Axxel Salgado Martinez</h1>
    <div>
        <table id="table" class="table">
            <thead class="thead-light">
            <tr>
                <th scope="col">Nombre</th>
            </tr>
            </thead>
            <tbody id="tbody"></tbody>
        </table>
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.js" integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk=" crossorigin="anonymous"></script>
    <script>
        $.ajax({
            method: "GET",
            url: "https://pokeapi.co/api/v2/pokemon?limit=50"
        }).done(function(res){
            let table = document.getElementById("table")
            let tbody = document.getElementById("tbody")

            for(let i = 0; i < res.results.length; i++){
                let tr = document.createElement("tr")
                let td = document.createElement("td")
                let text = document.createTextNode(res.results[i].name)
                td.appendChild(text)
                tr.appendChild(td)
                tbody.appendChild(tr)
                table.appendChild(tbody)
            }
        });
    </script>
</body>
</html>