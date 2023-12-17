// script.js

document.addEventListener("DOMContentLoaded", function () {
    var nombreInput = document.getElementById("nombre");
    var emailInput = document.getElementById("email");
    var telefonoInput = document.getElementById("telefono");
    var consultaTextarea = document.getElementById("textAreaConsulta");
    var btnEnviar = document.getElementById("btnEnviar");
    var textoResultado = document.getElementById("textoResultado");

    btnEnviar.addEventListener("click", function () {
        var nombre = nombreInput.value;
        var email = emailInput.value;
        var telefono = telefonoInput.value;
        var consulta = consultaTextarea.value;

        // Aquí puedes hacer lo que desees con los datos capturados
        console.log("Nombre: " + nombre);
        console.log("Email: " + email);
        console.log("Teléfono: " + telefono);
        console.log("Consulta: " + consulta);

        // Puedes mostrar el resultado en la página
        textoResultado.textContent = "Formulario enviado con éxito";

        // Realiza acciones adicionales si es necesario

        // Limpia el formulario
        nombreInput.value = "";
        emailInput.value = "";
        telefonoInput.value = "";
        consultaTextarea.value = "";
    });
});




