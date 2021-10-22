<?php

namespace App\Http\Controllers;

use App\Models\Evento;
use Illuminate\Http\Request;
use Carbon\Carbon;

class EventoController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //Llama a la vista index.blad.php (public/resources/views/evento)
        return view('evento.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
        
     //funcion para enviar datos
     public function store(Request $request)
    {
        
        request()->validate(Evento::$rules);  //validar datos
        $evento=Evento::create($request->all()); //crea la info con todos los datos
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */

        //funcion para consultar datos
     public function show(Evento $evento)
    {
        $evento=Evento::all();
        return response()->json($evento);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */

     //funcio para editar evento.
    public function edit($id)
    {
        $evento=Evento::find($id); //consulta los datos del id seleccionado

        $evento->start=Carbon::createFromFormat('Y-m-d H:i:s', $evento->start)->format('Y-m-d H:i');
        $evento->end=Carbon::createFromFormat('Y-m-d H:i:s', $evento->end)->format('Y-m-d H:i');   

        return response()->json($evento); //envia los datos por json $evento
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */

     //FUNCION PARA ACTUALIZAR
    public function update(Request $request, Evento $evento)
    {
        request()->validate(Evento::$rules);  //validar datos
        $evento->update($request->all());    // actualizacion
        return response()->json($evento); //envia los datos por json $evento
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Evento  $evento
     * @return \Illuminate\Http\Response
     */

    //FUNCION para eliminar evento
    public function destroy($id)
    {
        $evento=Evento::find($id)->delete(); //
        
        return response()->json($evento); //envia los datos por json $evento
    }
}
