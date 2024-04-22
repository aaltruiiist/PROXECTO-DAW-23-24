# Requerimientos do sistema

- [Requerimientos do sistema](#requerimientos-do-sistema)
  - [1- Descrición Xeral](#1--descrición-xeral)
  - [2- Funcionalidades](#2--funcionalidades)
  - [3- Tipos de usuarios](#3--tipos-de-usuarios)
  - [4- Contorno operacional](#4--contorno-operacional)
  - [5- Normativa](#5--normativa)
  - [6- Melloras futuras](#6--melloras-futuras)

> *EXPLICACION*: Este documento describe os requirimentos para "nome do proxecto" especificando que funcionalidade ofrecerá e de que xeito.

## 1- Descrición Xeral
> DanceSync non é unha simple plataforma web; é unha comunidade de baile deportivo.
>
> DanceSync nace coa idea de eliminar as barreiras que dificultan o acceso ás competicións, simplificando a inscrición nos diferentes eventos que se organizan. Ademais, imos un paso máis alá, ofrecémoslles aos organizadores ferramentas para anunciar os seus eventos e xestionar todas as tarefas administrativas de forma rápida e eficiente.
>
> En DanceSync, intentamos mellorar o benestar dos deportistas da nosa comunidade. Cremos que a danza deportiva non é un simple deporte físico senón que é unha forma de vida. Por este motivo, esforzámonos por mellorar a calidade de vida dos bailaríns de todos os xeitos posibles.
>
> Qué nos fai diferentes? Non só somos unha plataforma de inscrición; Somos un ecosistema completo que abarca desde o envío de resultados de concursos ata un calendario de eventos e un portal de emprego temporal. A nosa galería de fotos e vídeos recolle os momentos máis emocionantes e memorables das competicións, mentres que as nosas clasificacións e puntuacións actualizadas manteñen a todos informados.
>
> Aínda que comezamos centrados no baile deportivo, non queremos limitarnos só a ese ámbito. No futuro poderiamos ampliar e adaptarnos ás necesidades de calquera asociación ou entidade que busque servizos similares. Incluso pensamos nunha posible internacionalización.

## 2- Funcionalidades
- **Alta de usuario**
  - *Descripción:* En caso de non ter un usuario na plataforma, a traves de un formulario poderase establecer un usuario
  - *Usuarios:* Anonimos
 - **Inicio de sesión**
  - *Descripción:* En caso de  ter un usuario na páxina, a traves de un formulario de inicio de sesion, cambiarase de anónimo a autenticado.
  - *Usuarios:* Anonimos

- **Inscripción en competicións**
  - *Descripción:* Enviar os datos da parella á base de datos e gardalos na  tabla vinculada ao evento, que también inclue o pago telemático.
  - *Usuarios:* Anónimos ou autenticados.

- **Visualización competicións disponibles**
  - *Descripción:* Visualizar unha lista de competicións dispoñibles separadas por modalidades.
  - *Usuarios:* Anónimos ou autenticados.

- **Visualización do ranking actual**
  - *Descripción:* Mostrar a lista pública dos puntos actuais separados por categorías de idade e modalidade.
  - *Usuarios:* Anónimos ou autenticados.
 
  
- **Apartado empleo temporal**
  - *Descripción:* Neste apartado da plataforma haberá  ofertas de traballo  que na que organizadores de exibicións, concertos, eventos etc. busquen un perfil adecuado de bailarins, no que simplemente se mostrara unha conta de correo ou calquer tipo de dato de contacto que aporte a empresa
  - *Usuarios:* Autenticados.

  
  
## 3- Tipos de usuarios

 **Anonimos**
  Estos usuarios poden acceder a case todo os servizos da páxina, inscripción en competicions, visualizar o calendario e incluso acceder ao ranking, xa que non queriamos obligar a os deportistas a rexistrarse na plataforma.

**Autenticados**
  Os usuarios que conten con auteticacion poderan acceder ao apartado de "empleo temporal" que ofrezen os organizadores de eventos, que

## 4- Contorno operacional

> Neste caso DanceSync sera accesible dende o navegador, no que simplemente se necesitará conexión a internet

## 5- Normativa
En DanceSync entendemos que a privacidade dos datos é de suma importancia. Por este motivo, comprometémonos a cumprir todas as normas de protección de datos vixentes a nivel nacional (Lei Orgánica núm. 3/2018, do 5 de decembro, de Protección de Datos Persoais e Garantía dos Dereitos Dixitais (LOPDPGDD)). A nivel europeo (Regulamento Xeral de Protección de Datos (GDPR)).

Que datos recollemos?

Recopilamos os datos que nos proporcionan voluntariamente cando os usuarios se rexistras na nosa plataforma, inscribe nun evento ou contacta con nós. Estes datos poden incluír o seu nome, enderezo de correo electrónico, número de teléfono, detalles de pago e outra información.

## 6- Melloras futuras

> A futuro tiñamos pensado as seguintes melloras:
- **Iniciativa ReDance**
  - *Descripción:* Seria un portal de venta de segunda man de roupa de baile, na que os usuarios poidan publicar as súas ofertas e darlle unha segunda vida a os vesturarios.
  - *Usuarios:* 
    - Autenticados: Poderan subir ofertas ao apartado
    - Anonimos: Poderán visualizar e contactar cos vendedores, pero non subir ningunha oferta
> Nun futuro tamén queriamos añadir que foran as propias empresas organizadoras quen publicaran as ofertas e añadisen as competicions/eventos elas mesmas mediante un novo tipo de ususario, xa que nunha primeira versisón da plataforma todos estos apartados faranse manualmente.