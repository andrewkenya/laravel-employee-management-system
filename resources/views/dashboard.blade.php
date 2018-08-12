@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Dashboard</div>

                <div class="card-body">
                    @if (session('status'))
                        <div class="alert alert-success">
                            {{ session('status') }}
                        </div>
                    @endif  
                    <p>Create Employee Record</p>
                   <a href="/emp/create"><button type="button" class="btn btn-primary btn-lg"><i class="fa fa-arrow-circle-left"></i> Create</button></a>

                    <h3>Employee Records</h3>
                    @if(count($emps) > 0)
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
                                       @foreach($emps as $emp)
                                       <tbody>
                                       <tr class="table-success">
                                              <td>{{$emp->name}}</td>
                                              <td>{{$emp->surname}}</td>
                                              <td>{{$emp->age}}</td>
                                              <td>{{$emp->salary}}</td>
                                              <td>{{$emp->position}}</td>
                                              <td>{{$emp->Address}}</td>
                                              <td>{{$emp->Hired_date}}</td>
                                              <td class="mt-10"><a class="btn btn-success btn-sm" href="/emp/{{$emp->id}}"><i class="fas fa-eye"></i></a>
                                              <a class="btn btn-primary btn-sm" href="/emp/{{$emp->id}}/edit"><i class="fas fa-edit"></i></a></td>
                                              
                                               <td class ="py-5"> {!! Form::open(['action' => ['EmpsController@destroy', $emp->id], 'method' => 'POST', 'class' => 'float-right']) !!}
                                                    {{ Form::Hidden('_method', 'DELETE')}}
                                                    {{ Form::bsSubmit('Delete', ['class' => 'btn btn-danger btn-sm'])}}
                                                    {!! Form::close() !!}</td>
                                              </tr>
                                       </tr>
                                       
                                       </tbody>
                                       @endforeach
                                       </table>
                                       @else
                                         <p>NO Employee Records Created</p>
                                       @endif
     
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
