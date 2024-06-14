const url = "php/competiciones.php";

let $eventos = document.querySelector(".eventos-grid"),
    $calendario = document.getElementById("calendario"),
    $busqueda = document.getElementById("search");

let eventosLoc = [];
async function ajax(options) {
    let { url, method, fExito, fError, data } = options;
    try {
        let resp = await fetch(url, {
                method: method || "GET",
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

function getEventos() {
    ajax({
        url: url,
        fExito: json => {
            eventosLoc = [...json];
            renderEventos(eventosLoc);
        },
        fError: error => console.log(error)
    });
}

function renderEventos(eventos) {
    if (!eventos.length) {
        $eventos.innerHTML = '<p>No hay eventos disponibles.</p>';
        return;
    }

    $eventos.innerHTML = eventos.map(evento =>
        `
        <a class="card" href="competicion.html" onclick="localStorage.setItem('evento', JSON.stringify(eventosLoc.filter(el => el.ID_Evento == '${evento.ID_Evento}')));">
        <div class="card-content">
            <h3>${evento.Nombre}</h3>
            <p>${evento.Fecha}</p>
        </div>
        </a>`
    ).join('');
}
function filtradoEventos(fecha, nombre) {
    let eventoFiltro = eventosLoc;

    if (fecha) {
        eventoFiltro = eventoFiltro.filter(el => el.Fecha === fecha);
    }

    if (nombre) {
        eventoFiltro = eventoFiltro.filter(el => el.Nombre.toLowerCase().includes(nombre.toLowerCase()));
    }


    if (eventoFiltro.length) {
        renderEventos(eventoFiltro);
    } else {
       
        if (fecha) {
            let eventosFuturos = eventosLoc.filter(el => el.Fecha > fecha);
            if (eventosFuturos.length > 0) {
                renderEventos(eventosFuturos.slice(0, 2));
            } else {
                renderEventos([]);
            }
        } else {
      
            renderEventos([]);
        }
    }
}


document.addEventListener("DOMContentLoaded", e => {
    getEventos();
});

$calendario.addEventListener("change", e => {
    filtradoEventos(e.target.value, $busqueda.value.toLowerCase());
});

$busqueda.addEventListener("keyup", e => {
    filtradoEventos($calendario.value, e.target.value.toLowerCase());
});
