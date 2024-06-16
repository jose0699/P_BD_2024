  let select_coleccion = false;


//Lista en memoria para testear
const piezasColeccion = [{
  id: '1035149785',
  nombre: 'Amazonia Taza Moca'
},{
  id: '1035140455',
  nombre: 'Amazonia Tetera 6pers'
},{
  id: '1035140004',
  nombre: 'Amazonia Lechera 6pers'
}
];

//Aquí se irán guardando el id de la pieza y la cantidad de que tiene la vajilla de esta misma 
let piezasVajilla = [];

//se genera el html de la coleccion, en un futuro se llamará a esta función cada vez que se seleccione una función en el select
renderListaColeccion();

//FUNCIONES DE GENERACION DE HTML
//renderiza la lista de la coleccion
function renderListaColeccion(){
  let listaPiezasHTML = '';

  piezasColeccion.forEach((pieza) => {
    const {id, nombre} = pieza;

    const html = `
      <div class = "pieza-container js-pieza-container" data-pieza-id="${id}">
          ${nombre}
          <div>
              <button class="add-button js-add-button" data-pieza-id="${id}">+</button>
              <button class="minus-button js-minus-button" data-pieza-id="${id}">-</button>
          </div>
      </div>
    `;

    listaPiezasHTML += html;
  });

  document.querySelector('.js-coleccion-scrollmenu')
    .innerHTML = listaPiezasHTML;

  //Se añaden los controladores a los botones de + y -
  document.querySelectorAll('.js-add-button')
    .forEach((addButton) =>{
      addButton.addEventListener('click', () =>{
        const {piezaId} = addButton.dataset;
        addPieza(piezaId);
      });
    })


  document.querySelectorAll('.js-minus-button')
    .forEach((minusButton) =>{
      minusButton.addEventListener('click', () =>{
        const {piezaId} = minusButton.dataset;
        minusPieza(piezaId);
      });
    })

}

//renderiza la lista de la vajilla
function renderListaVajilla(){
  let resumenVajillaHTML = '';

  piezasVajilla.forEach((pieza) => {
    const id = pieza.id;

    const piezaEncontrada = getPieza(id);

    const html = `
      <div class = "pieza-container">
          ${piezaEncontrada.nombre}
          <p class="js-quantity">${pieza.cantidad}</p>
      </div>
    `; 

    resumenVajillaHTML += html;
  });

  document.querySelector('.js-vajilla-scrollmenu')
    .innerHTML = resumenVajillaHTML;
};

//FUNCIONES DE BUSQUEDA EN PIEZASCOLECCION Y AÑADIR A LA LISTA DE LA VAJILLA
function addPieza(id){
  let piezaBuscada;

  piezasVajilla.forEach((pieza) =>{
    if(id === pieza.id){
      piezaBuscada = pieza;
    }
  });

  if(piezaBuscada){
    piezaBuscada.cantidad++;
  }else{
    piezasVajilla.push({
      id: id,
      cantidad: 1,
    })
  }

  renderListaVajilla();
}

function minusPieza(id){
  let piezaBuscada;
  let indexPieza;

  piezasVajilla.forEach((pieza,index) =>{
    if(id === pieza.id){
      piezaBuscada = pieza;
      indexPieza = index;
      piezaBuscada.cantidad--;
    }
  });


  if(!piezaBuscada.cantidad){
    piezasVajilla.splice(indexPieza,1);
  }

  renderListaVajilla();
}

function getPieza(id){
  let piezaBuscada;

  piezasColeccion.forEach((pieza) =>{
    if(id === pieza.id){
      piezaBuscada = pieza;
    }
  });

  return piezaBuscada;
};

/*---------------------------------------------------------------------------------------*/
/*                                     COLECCIÓN                                         */
/*---------------------------------------------------------------------------------------*/

//Molde
function Agregar_select_coleccion(datos){
  var select = document.getElementById("coleccion");
  select.innerHTML = "";

  var option = document.createElement("option"); // Declarar la variable option
    option.value = 'NaN';
    option.selected = true;
    option.disabled = true;
    option.textContent = 'Opciones';
    select.appendChild(option);

  for (var i = 0; i < datos.length; i++) {
    var opcion = document.createElement("option");
    opcion.text = datos[i].nombre;
    opcion.value = datos[i].linea + datos[i].uid_coleccion.toString();
    select.add(opcion);
  }
}

document.addEventListener("DOMContentLoaded", function() {
  if(!select_coleccion) {
    select_coleccion = true;
    let peticion = {
      pet: 1
    };
    fetch('/Ceramica_Real/Pieza', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(peticion)
    })
      .then(response => response.json())
      .then(data => {
        let datos = data;
        console.log(datos);
        Agregar_select_coleccion(datos);
      })
      .catch(error => {
        console.error(error);
      });
  } else{
    select_coleccion = true;
  }
});