@extends('layouts.app')
@section('content')
<h1>Create Employee Record</h1>

{!! Form::open(['action' => 'EmpsController@store', 'method'=> 'POST']) !!}
{{ Form::bsText('name') }}
{{ Form::bsText('surname')}}
{{ Form::bsText('age')}}
{{ Form::bsText('salary')}}
{{ Form::bsText('position')}}
{{ Form::bsText('address')}}
{{ Form::bsText('hired_date')}}
{{ Form::bsSubmit('submit', ['class' => 'btn btn-primary'])}}
{!! Form::close() !!}
@endsection