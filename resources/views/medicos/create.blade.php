<x-app title="Registrar Médico">

    <div class="row justify-content-center">

        <div class="col-lg-8">

            <div class="card shadow-sm">

                <div class="card-header">
                    <h3 class="mb-0">
                        Registrar Médico
                    </h3>
                </div>

                <div class="card-body">

                    <form action="{{ route('medicos.store') }}" method="POST">

                        @csrf

                        <div class="mb-3">
                            <label class="form-label">
                                Nombre completo
                            </label>

                            <input type="text" name="nombre_completo"
                                class="form-control @error('nombre_completo') is-invalid @enderror"
                                value="{{ old('nombre_completo') }}">

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

                            <input type="text" name="especialidad"
                                class="form-control @error('especialidad') is-invalid @enderror"
                                value="{{ old('especialidad') }}">

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
                                value="{{ old('cedula_profesional') }}">

                            @error('cedula_profesional')
                                <div class="invalid-feedback">
                                    {{ $message }}
                                </div>
                            @enderror
                        </div>

                        <div class="d-flex justify-content-end gap-2">

                            <a href="{{ route('medicos.index') }}" class="btn btn-secondary">
                                Cancelar
                            </a>

                            <button type="submit" class="btn btn-primary">
                                Guardar
                            </button>

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</x-app>
