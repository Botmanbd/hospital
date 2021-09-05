@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Мои рецепты</div>

                    <div class="card-body">

                        <table class="table table-striped">
                            <thead>
                            <tr>

                                <th scope="col">Дата</th>
                                <th scope="col">Врач</th>
                                <th scope="col">Болезень</th>
                                <th scope="col">Симптомы</th>
                                <th scope="col">Лекарство</th>
                                <th scope="col">Порядок использования лекарства</th>
                                <th scope="col">Отзыв врача</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($prescriptions as $prescription)
                                <tr>

                                    <td>{{$prescription->date}}</td>
                                    <td>{{$prescription->doctor->name}}</td>
                                    <td>{{$prescription->name_of_disease}}</td>
                                    <td>{{$prescription->symptoms}}</td>
                                    <td>{{$prescription->medicine}}</td>
                                    <td>{{$prescription->procedure_to_use_medicine}}</td>
                                    <td>{{$prescription->feedback}}</td>
                                </tr>
                            @empty
                                <td>У вас нет рецептов</td>
                            @endforelse

                            </tbody>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
