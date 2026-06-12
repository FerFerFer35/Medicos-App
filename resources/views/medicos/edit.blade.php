<x-app title="Editar Médico">

    <div class="row justify-content-center">

        <div class="col-lg-8">

            <div class="card shadow-sm">

                <div class="card-header">
                    <h3 class="mb-0">
                        Editar Médico
                    </h3>
                </div>

                <div class="card-body">

                    <form action="{{ route('medicos.update', $medico) }}" method="POST">

                        @csrf
                        @method('PUT')

                        @include('medicos.parts.form')

                        <div class="d-flex justify-content-end gap-2">

                            <a href="{{ route('medicos.index') }}" class="btn btn-secondary">
                                Cancelar
                            </a>

                            <button type="submit" class="btn btn-primary">
                                Actualizar
                            </button>

                        </div>

                    </form>

                </div>

            </div>

        </div>

    </div>

</x-app>
