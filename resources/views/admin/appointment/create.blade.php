@extends('admin.layouts.master')

@section('content')

    <div class="page-header">
        <div class="row align-items-end">
            <div class="col-lg-8">
                <div class="page-header-title">
                    <i class="ik ik-edit bg-blue"></i>
                    <div class="d-inline">
                        <h5>Записи</h5>
                        <span>Время записи</span>
                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <nav class="breadcrumb-container" aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="../index.html"><i class="ik ik-home"></i></a>
                        </li>
                        <li class="breadcrumb-item"><a href="#">Врач</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Создать</li>
                    </ol>
                </nav>
            </div>
        </div>
    </div>

<div class="container">
    @if(Session::has('message'))
        <div class="alert bg-success alert-success text-white" role="alert">
            {{Session::get('message')}}
        </div>
    @endif
    @foreach($errors->all() as $error)
        <div class="alert alert-danger">
            {{$error}}
        </div>
        @endforeach
    <form action="{{route('appointment.store')}}" method="post">
        @csrf
<div class="card">
    <div class="card-header">
        Выберите дату
    </div>
    <div class="card-body">
        <input type="text" class="form-control datetimepicker-input" id="datepicker" data-toggle="datetimepicker" data-target="#datepicker" name="date">
    </div>
</div>

    <div class="card">
        <div class="card-header">
            До обеда
            <span style="margin-left: 700px">Отметить/снять отметку
                <input type="checkbox" onclick="for(c in document.getElementsByName('time[]')) document.getElementsByName('time[]').item(c).checked=this.checked">
            </span>
        </div>
        <div class="card-body">
            <table class="table table-striped">

                <tbody>
                <tr>
                    <th scope="row">1</th>
                    <td><input type="checkbox" name="time[]" value="6:00">6:00</td>
                    <td><input type="checkbox" name="time[]"  value="6:20">6:20</td>
                    <td><input type="checkbox" name="time[]"  value="6:40">6:40</td>
                </tr>
                <tr>
                    <th scope="row">2</th>
                    <td><input type="checkbox" name="time[]" value="7:00">7:00</td>
                    <td><input type="checkbox" name="time[]"  value="7:20">7:20</td>
                    <td><input type="checkbox" name="time[]"  value="7:40">7:40</td>
                </tr>
                <tr>
                    <th scope="row">3</th>
                    <td><input type="checkbox" name="time[]" value="8:00">8:00</td>
                    <td><input type="checkbox" name="time[]"  value="8:20">8:20</td>
                    <td><input type="checkbox" name="time[]"  value="8:40">8:40</td>
                </tr>
                <tr>
                    <th scope="row">4</th>
                    <td><input type="checkbox" name="time[]" value="9:00">9:00</td>
                    <td><input type="checkbox" name="time[]"  value="9:20">9:20</td>
                    <td><input type="checkbox" name="time[]"  value="9:40">9:40</td>
                </tr>
                <tr>
                    <th scope="row">5</th>
                    <td><input type="checkbox" name="time[]" value="10:00">10:00</td>
                    <td><input type="checkbox" name="time[]"  value="10:20">10:20</td>
                    <td><input type="checkbox" name="time[]"  value="10:40">10:40</td>
                </tr>
                <tr>
                    <th scope="row">6</th>
                    <td><input type="checkbox" name="time[]" value="11:00">11:00</td>
                    <td><input type="checkbox" name="time[]"  value="11:20">11:20</td>
                    <td><input type="checkbox" name="time[]"  value="11:40">11:40</td>
                </tr>
                </tbody>
            </table>
        </div>
    </div>

    <div class="card">
        <div class="card-header">
            После обеда
        </div>
        <div class="card-body">
            <table class="table table-striped">

                <tbody>
                <tr>
                    <th scope="row">7</th>
                    <td><input type="checkbox" name="time[]"  value="12:00">12:00</td>
                    <td><input type="checkbox" name="time[]"  value="12:20">12:20</td>
                    <td><input type="checkbox" name="time[]"  value="12:40">12:40</td>
                </tr>
                <tr>
                    <th scope="row">7</th>
                    <td><input type="checkbox" name="time[]"  value="13:00">13:00</td>
                    <td><input type="checkbox" name="time[]"  value="13:20">13:20</td>
                    <td><input type="checkbox" name="time[]"  value="13:40">13:40</td>
                </tr>
                <tr>
                    <th scope="row">8</th>
                    <td><input type="checkbox" name="time[]"  value="14:00">14:00</td>
                    <td><input type="checkbox" name="time[]"  value="14:20">14:20</td>
                    <td><input type="checkbox" name="time[]"  value="14:40">14:40</td>
                </tr>
                <tr>
                    <th scope="row">9</th>
                    <td><input type="checkbox" name="time[]"  value="15:00">15:00</td>
                    <td><input type="checkbox" name="time[]"  value="15:20">15:20</td>
                    <td><input type="checkbox" name="time[]"  value="15:40">15:40</td>
                </tr>
                <tr>
                    <th scope="row">10</th>
                    <td><input type="checkbox" name="time[]"  value="16:00">16:00</td>
                    <td><input type="checkbox" name="time[]"  value="16:20">16:20</td>
                    <td><input type="checkbox" name="time[]"  value="16:40">16:40</td>
                </tr>
                <tr>
                    <th scope="row">11</th>
                    <td><input type="checkbox" name="time[]"  value="17:00">17:00</td>
                    <td><input type="checkbox" name="time[]"  value="17:20">17:20</td>
                    <td><input type="checkbox" name="time[]"  value="17:40">17:40</td>
                </tr>
                <tr>
                    <th scope="row">12</th>
                    <td><input type="checkbox" name="time[]"  value="18:00">18:00</td>
                    <td><input type="checkbox" name="time[]"  value="18:20">18:20</td>
                    <td><input type="checkbox" name="time[]"  value="18:40">18:40</td>
                </tr>
                <tr>
                    <th scope="row">13</th>
                    <td><input type="checkbox" name="time[]"  value="19:00">19:00</td>
                    <td><input type="checkbox" name="time[]"  value="19:20">19:20</td>
                    <td><input type="checkbox" name="time[]"  value="19:40">19:40</td>
                </tr>
                <tr>
                    <th scope="row">15</th>
                    <td><input type="checkbox" name="time[]"  value="20:00">20:00</td>
                    <td><input type="checkbox" name="time[]"  value="20:20">20:20</td>
                    <td><input type="checkbox" name="time[]"  value="20:40">20:40</td>
                </tr>

                </tbody>
            </table>
        </div>
    </div>
    <div class="card">
        <div class="card-body">
            <button type="submit" class="btn btn-primary">Сохранить</button>
        </div>
    </div>
    </form>
</div>

    <style type="text/css">
        input[type="checkbox"]{
            zoom:1.1;

        }
        body{
            font-size: 18px;
        }
    </style>

@endsection