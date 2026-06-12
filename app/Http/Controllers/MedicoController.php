<?php

namespace App\Http\Controllers;

use App\Models\Medico;
use Illuminate\Http\Request;
use App\Http\Requests\StoreMedicoRequest;
use App\Http\Requests\UpdateMedicoRequest;

class MedicoController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Request $request)
    {
        $query = Medico::query();

        if ($request->filled('search')) {

            $query->where(function ($q) use ($request) {

                $q->where(
                    'nombre_completo',
                    'like',
                    '%' . $request->search . '%'
                )
                ->orWhere(
                    'especialidad',
                    'like',
                    '%' . $request->search . '%'
                );

            });
        }

        if ($request->filled('fecha_inicio')) {

            $query->whereDate(
                'fecha_registro',
                '>=',
                $request->fecha_inicio
            );
        }

        if ($request->filled('fecha_fin')) {

            $query->whereDate(
                'fecha_registro',
                '<=',
                $request->fecha_fin
            );
        }

        $medicos = $query->orderByDesc('fecha_registro')->paginate(10);

        return view('medicos.index',compact('medicos'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('medicos.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreMedicoRequest $request)
    {
        Medico::create([
            'nombre_completo' => $request->nombre_completo,
            'especialidad' => $request->especialidad,
            'cedula_profesional' => $request->cedula_profesional,
            'fecha_registro' => now(),
        ]);

        return redirect()->route('medicos.index')->with('success', 'Médico registrado correctamente.');
    }

    /**
     * Display the specified resource.
     */
    public function show(Medico $medico)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Medico $medico)
    {
        return view('medicos.edit', compact('medico'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateMedicoRequest $request, Medico $medico)
    {
        $medico->update(
            $request->validated()
        );

        return redirect()->route('medicos.index')->with(
                'success',
                'Médico actualizado correctamente.'
                );
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Medico $medico)
    {
        //
    }
}
