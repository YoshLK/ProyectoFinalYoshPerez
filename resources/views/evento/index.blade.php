

@extends('layouts.app')
@section('content')

    <div class="container">
    <!--genera calendario-->
    <div id="agenda" ></div>
    </div>


<!-- Modal -->
<div class="modal fade "  id="evento" tabindex="-1" role="dialog" aria-labelledby="modelTitleId" aria-hidden="true">
    <div class="modal-dialog "  role="document">
        <div class="modal-content col-md-10 ">
            <div class="modal-header ">
                <h5 class="modal-title bg-dark text-white col-md-11" > Datos del evento</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
            </div>
            <div class="modal-body">
                
                <!--label o etiquetas del modal-->
                <form action="" id="ModelDatos">

                {!! csrf_field() !!} <!--Token para validar info-->

                <div class="form-group d-none">
                  <label for="id">ID:</label>
                  <input type="text" class="form-control" name="id" id="id" aria-describedby="helpId" placeholder="id">
                  <small id="helpId" class="form-text text-muted">Help text</small>
                </div>

                <!--Formato del modelo-->
                <div class="form-row ">
                <label for="title">Titulo Del Evento</label> 
                <input type="text" class="form-control" name="title" id="title" aria-describedby="helpId" placeholder="Ingresar el titulo del envento">
                

                <div class="form-group ">
                <label for="descripcion">Descripcion del envento</label></div>
                <textarea class="form-control" name="descripcion" id="descripcion" rows="3"></textarea>
                

                  <div class="form-group col-md-10">
                    <label for="start">Inicio del evento</label>
                    <input type="text" class="form-control" name="start" id="start" aria-describedby="helpId" placeholder="start">
                  </div>

                  <div class="form-group col-md-10">
                  <label for="end">Final del evento</label>
                    <input type="text" class="form-control" name="end" id="end" aria-describedby="helpId" placeholder="end">  
                  </div>

                
                  <div class="form-group col-md-6">
                    <label>Color de evento:</label>
                    <input type="color" value="#1d99ca" class="form-control" name="color" id="color" aria-describedby="helpId" placeholder="color">
                  </div>

                  <div class="form-group col-md-6">
                    <label>Color del texto:</label>
                    <input type="color" value="#000000"  class="form-control" name="textColor" id="textColor" aria-describedby="helpId" placeholder="textColor">  
                  </div>
              </div> 
                </div>
                </form>
                
          <div class="modal-footer bg- col-md-12" >
          <!--Botones del modal-->
        <button type="button" class="btn btn-success" id ="btnCrear">Crear</button>
        <button type="button" class="btn btn-warning"id ="btnEditar">Editar</button>
        <button type="button" class="btn btn-danger" id ="btnEliminar">Eliminar</button>
        <button type="button" class="btn btn-dark " data-dismiss="modal">Cancelar</button>
            </div>   
            </div>
        </div>
    </div>

@endsection
