<x-app title="Médicos">

    <div class="d-flex justify-content-between align-items-center mb-4">

        <h1>Médicos</h1>

        <a href="{{ route('medicos.create') }}" class="btn btn-primary">
            Nuevo Médico
        </a>

    </div>

    <div class="card shadow-sm">

        <div class="card shadow-sm">

            <div class="card-body">

                <form method="GET" action="{{ route('medicos.index') }}">

                    <div class="row g-3 mb-4">

                        <div class="col-md-4">
                            <label class="form-label">
                                Buscar
                            </label>

                            <input type="text" name="search" class="form-control"
                                placeholder="Nombre o especialidad..." value="{{ request('search') }}">
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">
                                Fecha inicial
                            </label>

                            <input type="date" name="fecha_inicio" class="form-control"
                                value="{{ request('fecha_inicio') }}">
                        </div>

                        <div class="col-md-3">
                            <label class="form-label">
                                Fecha final
                            </label>

                            <input type="date" name="fecha_fin" class="form-control"
                                value="{{ request('fecha_fin') }}">
                        </div>

                        <div class="col-md-2 d-flex align-items-end gap-2">

                            <button type="submit" class="btn btn-primary w-100">
                                Filtrar
                            </button>

                        </div>

                    </div>

                </form>

                <div class="table-responsive">

                    <div class="card-body">

                        <div class="table-responsive">

                            <table class="table table-hover align-middle">

                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre</th>
                                        <th>Especialidad</th>
                                        <th>Cédula</th>
                                        <th>Fecha Registro</th>
                                        <th>Acciones</th>
                                    </tr>
                                </thead>

                                <tbody>

                                    @forelse($medicos as $medico)
                                        <tr>
                                            <td>{{ $medico->id }}</td>
                                            <td>{{ $medico->nombre_completo }}</td>
                                            <td>{{ $medico->especialidad }}</td>
                                            <td>{{ $medico->cedula_profesional }}</td>
                                            <td>
                                                {{ $medico->fecha_registro->format('d/m/Y h:i A') }}
                                            </td>

                                            <td>
                                                <a href="{{ route('medicos.edit', $medico) }}"
                                                    class="btn btn-warning btn-sm">
                                                    Editar
                                                </a>
                                            </td>

                                        </tr>

                                    @empty
                                        <tr>
                                            <td colspan="6" class="text-center">
                                                No hay médicos registrados.
                                            </td>
                                        </tr>
                                    @endforelse

                                </tbody>

                            </table>

                        </div>

                    </div>

                    <div class="d-flex justify-content-between align-items-center mt-4">

                        <div class="text-muted small">
                            Mostrando {{ $medicos->firstItem() ?? 0 }}
                            a {{ $medicos->lastItem() ?? 0 }}
                            de {{ $medicos->total() }} registros
                        </div>

                        {{ $medicos->withQueryString()->links() }}

                    </div>

                </div>

            </div>

        </div>

    </div>

</x-app>
