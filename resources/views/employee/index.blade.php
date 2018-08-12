@extends('layouts.app')

@section('content')
<h1>Employee Database</h1>
@if(count($emps) > 0 )
     @foreach($emps as $emp)
       <table class="table">
           <thead class="thead-dark">
               <tr>
                    <th scope="col">EID</th>
                    <th scope="col">Name</th>
                    <th scope="col">Surname</th>
                    <th scope="col">Age</th>
                    <th scope="col">Salary</th>
                    <th scope="col">Position</th>
                    <th scope="col">Address</th>
                    <th scope="col">Hired_Date</th>
                    <th scope="col">Action </th>
                   
                   
               </tr>
           </thead>
           <tbody>
               <tr class="danger">
                    <th scope="row">1</th>
                    <td>{{$emp->name}}</td>
                    <td>{{$emp->surname}}</td>
                    <td>{{$emp->age}}</td>
                    <td>{{$emp->salary}}</td>
                    <td>{{$emp->position}}</td>
                    <td>{{$emp->Address}}</td>
                    <td>{{$emp->Hired_date}}</td>
                    {{-- <td>{{$emp->created_at}} by {{$emp->user->name}}</td> --}}
                    <td><a class="btn btn-success btn-sm" href="/emp/{{$emp->id}}"><i class="fas fa-eye"></i></a>
                     <a class="btn btn-primary btn-sm" href="/emp/{{$emp->id}}/edit"><i class="fas fa-edit"></i></a>
                     <a class="btn btn-primary btn-sm"><i class="far fa-trash-alt" onclick="deleteUser({{$emp->id}})"></i></a>  
                         {{-- {!! Form::open(['action' => ['EmpsController@destroy', $emp->id], 'method' => 'POST', 'class' => 'float-right']) !!}
                              {{ Form::Hidden('_method', 'DELETE')}}
                              {{ Form::bsSubmit('Delete', ['class' => 'btn btn-danger btn-sm'])}}
                              {!! Form::close() !!}</td> --}}

                   
                  

                     
           </tbody>
        </table>
     @endforeach
        {{$emps->links()}}
 @endif
 @endsection