<div class="mb-3">
    <label class="form-label">
        Nombre completo
    </label>

    <input type="text" name="nombre_completo" class="form-control @error('nombre_completo') is-invalid @enderror"
        value="{{ old('nombre_completo', $medico->nombre_completo ?? '') }}">

    @error('nombre_completo')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror

</div>

<div class="mb-3">
    <label class="form-label">
        Especialidad
    </label>

    <input type="text" name="especialidad" class="form-control @error('especialidad') is-invalid @enderror"
        value="{{ old('especialidad', $medico->especialidad ?? '') }}">

    @error('especialidad')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror

</div>

<div class="mb-3">
    <label class="form-label">
        Cédula Profesional
    </label>

    <input type="text" name="cedula_profesional"
        class="form-control @error('cedula_profesional') is-invalid @enderror"
        value="{{ old('cedula_profesional', $medico->cedula_profesional ?? '') }}">

    @error('cedula_profesional')
        <div class="invalid-feedback">
            {{ $message }}
        </div>
    @enderror

</div>
