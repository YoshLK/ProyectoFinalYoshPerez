      document.addEventListener('DOMContentLoaded', function() {
        
        //Recolecta datos del modal por medio del boton
        let formulario = document.querySelector("#ModelDatos");

        var calendarEl = document.getElementById('agenda');
        var calendar = new FullCalendar.Calendar(calendarEl, {
          initialView: 'dayGridMonth', //vista por mes 
          locale:"es", //idioma español
          //aspectRatio: 5.0,
          headerToolbar://Cabecera del calendario
          {
            //botones
            left:'prev,next,today Miboton',        
            center:'title',
            right:'dayGridMonth,timeGridWeek,listDay' //listWeek
          },

          customButtons:{
            Miboton:{
                text:"Creditos",
                click:function(){
                    alert("Yosh Antony Perez Ixcot 1490-18-17681 Proyecto final GESTOR DE EVENTOS");
                    //$('#exampleModal').modal('toggle');
                }
            }
        },

          //events: "http://localhost/proyectofinal/public/evento/mostrar",
          //events:baseURL+"/evento/mostrar",
          eventSources:{
            url: baseURL+"/evento/mostrar",
            method:"POST",
            extraParams:{
              _token: formulario._token.value,
            }
          },


          //Funcion para capturar el dia con un clik sobre el calendario
          dateClick:function(info){
            formulario.reset(); //limpia el formulario
            
            formulario.start.value=info.dateStr;  //captura fecha inicial
            formulario.end.value=info.dateStr;    //captura fecha final
            
            $("#evento").modal("show"); //llama a mi modal del index.blade.php 
          },


          //Funcion para leer los datos en el modal
          eventClick:function(info){
            var evento = info.event; // le envio los datos del evento selecionado
            console.log (evento);

          axios.post(baseURL+"/evento/editar/"+info.event.id).  
          then( //envio de info  por url y retorna en json
            (respuesta)=>{               
              formulario.id.value= respuesta.data.id;
              formulario.title.value= respuesta.data.title;
              formulario.descripcion.value= respuesta.data.descripcion;
              formulario.start.value= respuesta.data.start;
              formulario.end.value= respuesta.data.end;
              formulario.color.value= respuesta.data.color;
              formulario.textColor.value= respuesta.data.textColor;
              $("#evento").modal("show"); //muestra la info en el modal
            }
            ).catch() 
              error=>{
                if(error.response){
                  console.log(error.response.data);
                }
              }

          }

        });

        
        calendar.render();

        //Recuperar datos al hacer click el BOTON btnCrear
        document.getElementById("btnCrear").addEventListener("click",function(){
          enviarDatos("/evento/crear");
        });


        //BOTON ELIMINAR
        document.getElementById("btnEliminar").addEventListener("click",function(){
          enviarDatos("/evento/eliminar/ "+formulario.id.value);
        });

        //BOTON EDITAR
        document.getElementById("btnEditar").addEventListener("click",function(){
          enviarDatos("/evento/actualizar/ "+formulario.id.value);
        });


        //funcion para evnviar los datos por medio de una url
        function enviarDatos(url){
          const datos = new FormData(formulario);
          //crear nuevo evento
          const  nuevaURL = baseURL+url; //URL de la pagina 
          axios.post(nuevaURL, datos).  //envio de info  por url
          then(
            (respuesta)=>{               
              calendar.refetchEvents(); //refresca la pagina
              $("#evento").modal("hide"); //cierra el modal, si no hay error
            }
            ).catch( 
              error=>{if(error.response){console.log(error.response.data);}
              }
            )
        }


      });

    