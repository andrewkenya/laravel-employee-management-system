@extends('layouts.app')
@section('content')
  <h1> Edit Employee Record</h1>
<a class="btn btn-default btn-lg float-right" href="/"><i class="fas fa-caret-square-left"></i></a>
{!! Form::open(['action' => ['EmpsController@update', $emp->id], 'method'=> 'POST']) !!}
{{ Form::bsText('name', $emp->name) }}
{{ Form::bsText('surname',$emp->surname)}}
{{ Form::bsText('age',$emp->age)}}
{{ Form::bsText('salary', $emp->salary)}}
{{ Form::bsText('position' , $emp->position)}}
{{ Form::bsText('address', $emp->Address)}}
{{ Form::bsText('hired_date', $emp->Hired_date)}}
{{ Form::Hidden('_method', 'PUT')}}
{{ Form::bsSubmit('submit', ['class' => 'btn btn-primary'])}}
{!! Form::close() !!}
@endsection