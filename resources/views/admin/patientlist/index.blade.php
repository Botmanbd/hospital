@extends('admin.layouts.master')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">Appointments ({{$bookings->count()}})</div>
                    <form action="{{route('patient')}}" method="GET">
                        <div class="card-header">

                            Filter:
                            <div class="row">

                                <div class="col-md-10">
                                    <input type="data" class="form-control datetimepicker-input" id="datepicker"
                                           data-toggle="datetimepicker" data-target="#datepicker" name="date">
                                </div>
                                <div class="col-md-2">
                                    <button type="submit" class="btn btn-primary">Search</button>
                                </div>
                            </div>

                        </div>
                    </form>
                    <div class="card-body">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th scope="col">#</th>
                                <th scope="col">Photo</th>
                                <th scope="col">Date</th>
                                <th scope="col">User</th>
                                <th scope="col">Email</th>
                                <th scope="col">Phone</th>
                                <th scope="col">Gender</th>
                                <th scope="col">Time</th>
                                <th scope="col">Doctor</th>
                                <th scope="col">Status</th>
                                <th scope="col">Prescription</th>
                            </tr>
                            </thead>
                            <tbody>
                            @forelse($bookings as $key=>$booking)
                                <tr>
                                    <th scope="row">{{$key+1}}</th>
                                    <td><img src="/profile/{{$booking->user->image}}" width="80"
                                             style="border-radius: 50%" alt=""></td>
                                    <td>{{$booking->date}}</td>
                                    <td>{{$booking->user->name}}</td>
                                    <td>{{$booking->user->email}}</td>
                                    <td>{{$booking->user->phone_number}}</td>
                                    <td>{{$booking->user->gender}}</td>
                                    <td>{{$booking->time}}</td>
                                    <td>{{$booking->doctor->name}}</td>
                                    <td>
                                        @if($booking->status==1)
                                        checked
                                            @endif
                                    </td>
                                    <td>
                                        <!-- Button trigger modal -->
                                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
                                            Write prescription
                                        </button>
                                    </td>
                                </tr>
                            @empty
                                <td>There is no any appointment Today!</td>
                            @endforelse
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@if(count($bookings)>0)
    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body" id="app">
                    <input type="hidden" name="user_id" value="{{$booking->user_id}}">
                    <input type="hidden" name="doctor_id" value="{{$booking->doctor_id}}">
                    <input type="hidden" name="date" value="{{$booking->date}}">

                    <div class="form-group">
                        <label>Disease</label>
                        <input type="text" name="name_of_disease" class="form-control" required="">
                    </div>
                    <div class="form-group">
                        <label>Symptoms</label>
                        <textarea name="symptoms" class="form-control" placeholder="symptoms" required=""></textarea>
                    </div>
                        <div class="form-group">
                            <label>Medicine</label>
                            <add-btn></add-btn>
                        </div>
                    <div class="form-group">
                        <label>Procedure to use medicine</label>
                        <textarea name="procedure_to_use_medicine" class="form-control" placeholder="procedure_to_use_medicine" required=""></textarea>
                    </div>
                    <div class="form-group">
                        <label>Feedback</label>
                        <textarea name="feedback" class="form-control" placeholder="feedback" required=""></textarea>
                    </div>
                    <div class="form-group">
                        <label>Signature</label>
                        <input type="text" name="signature" class="form-control" required="">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Understood</button>
                </div>
            </div>
        </div>
    </div>
    @endif
@endsection
