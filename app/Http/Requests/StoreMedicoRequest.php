<?php

namespace App\Http\Requests;

use Illuminate\Contracts\Validation\ValidationRule;
use Illuminate\Foundation\Http\FormRequest;

class StoreMedicoRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'nombre_completo' => 'required|max:150',
            'especialidad' => 'required|max:100',
            'cedula_profesional' => 'required|max:30|unique:medicos,cedula_profesional',
        ];
    }

    public function messages(): array
    {
        return [
            'nombre_completo.required' => 'El nombre completo es obligatorio.',
            'especialidad.required' => 'La especialidad es obligatoria.',
            'cedula_profesional.required' => 'La cédula profesional es obligatoria.',
            'cedula_profesional.unique' => 'La cédula profesional ya está registrada.',
        ];
    }
}
