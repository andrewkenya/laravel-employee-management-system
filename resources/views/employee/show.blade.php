@extends('layouts.app')

@section('content')
    <div class="container">
        <table class="table table-hover">
          <thead>
                <tr>
                    <th>Name</th>
                     <th>Surname</th>
                     <th>Age</th>
                     <th>Salary</th>
                     <th>Position</th>
                     <th>Address</th>
                     <th>Hired_Date</th>
                     </tr>
                     </thead>
                     <tbody>
                     <tr class="table-success">
                            <td>{{$emp->name}}</td>
                            <td>{{$emp->surname}}</td>
                            <td>{{$emp->age}}</td>
                            <td>{{$emp->salary}}</td>
                            <td>{{$emp->position}}</td>
                            <td>{{$emp->Address}}</td>
                            <td>{{$emp->Hired_date}}</td>
                            {{-- <td> <a class="btn btn-default btn-lg" href="/"><i class="fas fa-caret-square-left"></i></a></td> --}}
                            <td>
                                    <a href="/"><button type="button" class="btn btn-default btn-sm"><i class="fas fa-caret-square-left"></i>Back</button></a>
                                @if(!Auth::guest())
                                    @if(Auth::user()->id == $emp->user_id)
                                <a class="btn btn-primary btn-sm" href="/emp/{{$emp->id}}/edit"><i class="fas fa-edit"></i></a>
                                {!! Form::open(['action' => ['EmpsController@destroy', $emp->id], 'method' => 'POST', 'class' => 'float-right']) !!}
                                                    {{ Form::Hidden('_method', 'DELETE')}}
                                                    {{ Form::bsSubmit('Delete', ['class' => 'btn btn-danger btn-sm'])}}
                                                    {!! Form::close() !!}
                            

                                                    @endif
                                                    @endif
                                                </td>

                     </tr>
                     
                     </tbody>
                     </table>
                    
                     
                    </div>

                    @endsection
            
  
