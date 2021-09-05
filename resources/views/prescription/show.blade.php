@extends('admin.layouts.master')
@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header" >
                    </div>
                    <div class="card-body">
                        <p>Дата:{{$prescription->date}}</p>
                        <p>Пациент:{{$prescription->user->name}}</p>
                        <p>Врач:{{$prescription->doctor->name}}</p>
                        <p>Болезнь:{{$prescription->name_of_disease}}</p>
                        <p>Симтомы:{{$prescription->symptoms}}</p>
                        <p>Лекарство:{{$prescription->medicine}}</p>
                        <p>Способ применения лекарств:{{$prescription->procedure_to_use_medicine}}</p>
                        <p>Обратная связь:{{$prescription->feedback}}</p>
                        <p>Подпись врача:{{$prescription->signature}}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
