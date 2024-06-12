const url = "php/competiciones.php";

let $cuadrosContainer = document.querySelector(".cuadros-container"),
    eventosLoc = [];


async function ajax(options) {
    let { url, method = "GET", fExito, fError, data } = options;
    try {
        let resp = await fetch(url, {
                method: method,
                headers: { "Content-type": "application/json; charset=utf-8" },
                body: JSON.stringify(data)
            }),
            json = await resp.json();

        if (!resp.ok) {
            throw {
                status: resp.status,
                statusText: resp.statusText || "Ocurrió un error"
            };
        }
        fExito(json);
    } catch (error) {
        fError(error);
    }
}

// Función para obtener eventos
function getEventos() {
    ajax({
        url: url,
        fExito: json => {
            eventosLoc = [...json];
            renderEventos();
        
        },
        fError: error => {
            console.log(error);
        }
    });
}


function renderEventos() {
    if (!eventosLoc.length) {
        console.log("No hay eventos disponibles.");
        return;
    }


    let eventos = eventosLoc.filter(evento => evento.Finalizado != 1);

    let html = eventos.slice(0, 3).map(evento =>
        `
        <a class="cuadro" href="competicion.html" onclick="localStorage.setItem('evento', JSON.stringify(eventosLoc.filter(el => el.ID_Evento == '${evento.ID_Evento}')));">
            <h3>${evento.Nombre}</h3>
            <p>${evento.Fecha}</p>
        </a>`
    ).join('');

    $cuadrosContainer.innerHTML = html;

}

document.addEventListener("DOMContentLoaded", e => {
    getEventos();
   
});
