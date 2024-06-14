
  document
  .getElementById("form--single")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    const formData = new FormData(this);

    fetch("php/inscripciones/procesar_single.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.text())
      .then((responseText) => {
        alert(responseText);
        if (responseText.includes("Inscripción registrada correctamente.")) {
          emailjs.init("fXp7cCzFPRx2X6TzV");
          event.preventDefault();
      
          const serviceID = "default_service";
          const templateID = "template_m9f056h";
      
          emailjs.sendForm(serviceID, templateID, this).then(
            () => {
              alert("¡Inscripción formalizada! Comprueba tu correo electronico");
            },
            (err) => {
              alert(JSON.stringify(err));
            }         
          );
          this.reset();
        }
      })
      .catch(() => {
        alert("Error al enviar el formulario");
      });
  });
  document
  .getElementById("form--parejas")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    const formData = new FormData(this);

    fetch("php/inscripciones/procesar_parejas.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.text())
      .then((responseText) => {
        alert(responseText);
        if (responseText.includes("Inscripción registrada correctamente.")) {
          emailjs.init("fXp7cCzFPRx2X6TzV");
          event.preventDefault();
      
          const serviceID = "default_service";
          const templateID = "template_6n72yhj";
      
          emailjs.sendForm(serviceID, templateID, this).then(
            () => {
              alert("¡Inscripción formalizada! Comprueba tu correo electronico");
            },
            (err) => {
              alert(JSON.stringify(err));
            }          
          );
          this.reset();
        }
      })
      .catch(() => {
        alert("Error al enviar el formulario");
      });
  });

document
  .getElementById("form--coreo")
  .addEventListener("submit", function (event) {
    event.preventDefault();

    const formData = new FormData(this);

    fetch("php/inscripciones/procesar_coreografica.php", {
      method: "POST",
      body: formData,
    })
      .then((response) => response.text())
      .then((responseText) => {
        alert(responseText);
        if (responseText.includes("Inscripción registrada correctamente.")) {
          emailjs.init("Kxbxxo1FTnRek60FF");
          const serviceID = "default_service";
          const templateID = "template_7c7n164";

          emailjs.sendForm(serviceID, templateID, this).then(
            () => {
              alert(
                "¡Inscripción formalizada! Comprueba tu correo electronico"
              );
            },
            (err) => {
              alert(JSON.stringify(err));
            }
          );
          this.reset();
        }
      })
      .catch(() => {
        alert("Error al enviar el formulario");
      });
  });
