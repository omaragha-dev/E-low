<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Spatie\Permission\Models\Role;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use App\Http\Requests\StoreUserRequest;
use App\Http\Requests\UpdateUserRequest;

class UsersController extends Controller
{
    public function __construct()
    {
        $this->middleware('permission:employee-list|employee-create|employee-edit|employee-deleta',['only' => ['index','show']]);
        $this->middleware('permission:employee-create',['only' => ['create','store']]);
        $this->middleware('permission:employee-edit',['only' => ['edit','update']]);
        $this->middleware('permission:employee-deleta',['only' => ['destroy']]);
    }
    public function index()
    {
        $users = User::latest()->where('company_id', Auth::user()->company_id)->simplePaginate(10);

        $role = DB::table('model_has_roles')->join('roles', 'model_has_roles.role_id', '=', 'roles.id')->select('roles.name', 'model_id')->get();
        return view('users.index', compact('users', 'role'));
    }

    public function create()
    {
        return view('users.create');
    }

    public function store(User $user, StoreUserRequest $request)
    {
        //For demo purposes only. When creating user or inviting a user
        // you should create a generated random password and email it to the user
        $user->create([
            'name' => $request->get('name'),
            'email' => $request->get('email'),
            'company_id' => Auth::user()->company_id,
            'password' => Hash::make($request->get('password'))
        ]);

        return redirect()->route('users.index')
            ->with('success', __('Employee created successfully.'));
    }

    public function show($id)
    {
        $user = User::findorFail($id);
        return view('users.show', [
            'user' => $user
        ]);
    }

    public function edit(User $user)
    {
        return view('users.edit', compact('user'));
    }

    public function update(User $user, UpdateUserRequest $request)
    {
        $user->update($request->validated());
        $user->syncRoles($request->get('role'));
        return redirect()->route('users.index')
            ->with('success', __('Employee updated successfully.'));
    }

    public function destroy(User $user)
    {
        $user->delete();
        return redirect()->route('users.index')
            ->with('success', __('Employee deleted successfully.'));
    }
}
