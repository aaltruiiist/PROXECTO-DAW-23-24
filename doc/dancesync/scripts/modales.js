document.addEventListener("DOMContentLoaded", function () {
  document.getElementById("open-login-btn").addEventListener("click", function () {
    document.getElementById("login-modal").style.display = "flex";
  });

  document.getElementById("open-registro-modal").addEventListener("click", function () {
    document.getElementById("login-modal").style.display = "none";
    document.getElementById("registro-modal").style.display = "flex";
  });



  document.getElementById("form-reg").addEventListener("submit", function (e) {
    e.preventDefault();

    const formData = new FormData(this);

    fetch("php/registro.php", {
      method: "POST",
      body: formData
    })
      .then(response => response.text())
      .then(responseText => {
        alert(responseText);
        if (responseText.includes("Usuario registrado exitosamente.")) {
          closeModal("registro-modal");
          document.getElementById("form-reg").reset();
        }
      })
      .catch(() => {
        alert("Error al enviar el formulario");
      });
  });

  document.getElementById("form-log").addEventListener("submit", function (e) {
    e.preventDefault();

    const formData = new FormData(this);

    fetch("php/login.php", {
      method: "POST",
      body: formData
    })
      .then(response => response.text())
      .then(responseText => {
        alert(responseText);
        if (responseText.includes("¡Inicio de sesión exitoso!")) {
  
          sesionIniciada()
        }
      })
      .catch(() => {
        alert("Error al enviar el formulario");
      });
  });

});


async function sesionIniciada() {
  closeModal("login-modal");
  document.getElementById("form-log").reset();
  await new Promise(resolve => setTimeout(resolve, 100));
        let icono = document.querySelector(".login-ico")
        
        icono.innerHTML=`
  <a href="" class="nav-link" onclick="logout()" id="logout">
  <i class="fas fa-right-from-bracket"></i>
</a>
  
  `;
}


function closeModal(modalId) {
  document.getElementById(modalId).style.display = "none";
}



