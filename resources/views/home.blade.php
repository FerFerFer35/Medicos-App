<x-app title="Inicio">

    <div class="container py-5">

        <div class="row align-items-center min-vh-50">

            <div class="col-lg-6">
                <span class="badge bg-primary mb-3">
                    Sistema de Gestión Médica
                </span>

                <h1 class="display-4 fw-bold mb-3">
                    Administración de Médicos
                </h1>

                <p class="lead text-muted mb-4">
                    Plataforma para registrar, consultar y administrar
                    información de médicos de forma rápida, segura y organizada.
                </p>

                <div class="d-flex gap-2 flex-wrap">
                    <a href="{{ route('medicos.index') }}" class="btn btn-primary btn-lg">
                        Ver Médicos
                    </a>

                    <a href="{{ route('medicos.create') }}" class="btn btn-outline-primary btn-lg">
                        Registrar Médico
                    </a>
                </div>
            </div>

            <div class="col-lg-6 mt-5 mt-lg-0">
                <div class="card shadow border-0">
                    <div class="card-body p-4">

                        <h4 class="mb-4">
                            Funcionalidades
                        </h4>

                        <ul class="list-group list-group-flush">
                            <li class="list-group-item">
                                Registro de médicos
                            </li>

                            <li class="list-group-item">
                                Consulta y listado de registros
                            </li>

                            <li class="list-group-item">
                                Edición de información
                            </li>

                            <li class="list-group-item">
                                Búsqueda y filtrado de datos
                            </li>
                        </ul>

                    </div>
                </div>
            </div>

        </div>

    </div>

</x-app>
