document
  .getElementById("open-login-btn")
  .addEventListener("click", function () {
    document.getElementById("login-modal").style.display = "flex";
  });

document
  .getElementById("open-registro-modal")
  .addEventListener("click", function () {
    document.getElementById("login-modal").style.display = "none";
    document.getElementById("registro-modal").style.display = "flex";
  });

function closeModal(modalId) {
  document.getElementById(modalId).style.display = "none";
}

$(document).ready(function () {
  $("#form-reg").submit(function (e) {
    e.preventDefault();

    $.ajax({
      type: "POST",
      url: "php/registro.php",
      data: $(this).serialize(),
      success: function (response) {
        alert(response);
        if (response.includes("Usuario registrado exitosamente.")) {
          closeModal("registro-modal");
          document.getElementById("form-reg").reset();
        }
      },
      error: function () {
        alert("Error al enviar el formulario");
      },
    });
  });
});

$(document).ready(function () {
  $("#form-log").submit(function (e) {
    e.preventDefault();

    $.ajax({
      type: "POST",
      url: "php/login.php",
      data: $(this).serialize(),
      success: function (response) {
        alert(response);
        if (response.includes("¡Inicio de sesión exitoso!")) {
          closeModal("login-modal");
          document.getElementById("form-log").reset();
        }
      },
      error: function () {
        alert("Error al enviar el formulario");
      },
    });
  });
});
