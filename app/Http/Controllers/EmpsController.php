<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Emp;

class EmpsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */


     public function __construct()
     {
         $this->middleware('auth', ['except' => ['index', 'show']]);
     }
    public function index()
    { 
        // $emps = Emp::all();
        $emps = Emp::orderBY('created_at', 'desc')->paginate(10);
        return view('employee.index')->with('emps', $emps);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('employee.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validate text filds
         $this->validate($request, [
             'name' => 'required',
             'surname' => 'required',
             'age' => 'required',
             'salary' => 'required',
             'position' => 'required',
             'address' => 'required',
             'hired_date' => 'required'
         ]);

         //insert employee record
        $emp = new Emp;
        $emp->name = $request->input('name');
        $emp->user_id = auth()->user()->id;
        $emp->surname = $request->input('surname');
        $emp->age = $request->input('age');
        $emp->salary = $request->input('salary');
        $emp->position = $request->input('position');
        $emp->address = $request->input('address');
        $emp->hired_date = $request->input('hired_date');

        $emp->save();

        //redirect to home page
        return redirect('/')->with('success', 'Employee Created');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //find record
        $emp = Emp::find($id);
        return view('employee.show')->with('emp', $emp);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $emp = Emp::find($id);

        //check for user authorization
        if(auth()->user()->id !==$emp->user_id){
            return redirect('/')->with('error', 'Unauthorized User');
        }
        return view('employee.edit')->with('emp', $emp);

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //update record

        $emp = Emp::find($id);
        $emp->name = $request->input('name');
        $emp->surname = $request->input('surname');
        $emp->age = $request->input('age');
        $emp->salary = $request->input('salary');
        $emp->position = $request->input('position');
        $emp->address = $request->input('address');
        $emp->hired_date = $request->input('hired_date');

        $emp->save();

        //redirect to home page
        return redirect('/')->with('success', 'Employee Updated');

        
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $emp= Emp::find($id);


        if(auth()->user()->id !==$emp->user_id){
            return redirect('/')->with('error', 'Unauthorized User');
        }

       $emp->delete();

        //rediect
        return redirect('/')->with('success', 'Record Deleted');
    }
}
