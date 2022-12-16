@extends('layouts.mastars')

@section('title', 'Dashboard | Users')

@section('content-dash')
    <div class="row">
        <div class="col-12">
            @if ($success = Session::get('success'))
                <div class="alert alert-success " role="alert">
                    <strong>{{ $success }}</strong>
                </div>
            @endif
            <div class="card">
                <div class="card-header">
                    <h3 class="card-title">All Employers</h3>
                    <div class="card-tools">
                        <div class="input-group input-group-sm" style="width: 150px;">
                            @can('employee-create')
                                <div class="input-group-append">
                                    <a href="{{ route('users.create') }}" class="btn btn-default">New Employee</a>
                                </div>
                            @endcan
                        </div>
                    </div>
                </div>
                <div class="card-body table-responsive p-0">
                    <table class="table table-hover text-nowrap">
                        <thead>
                            <tr>
                                <th>{{ __('ID') }}</th>
                                <th>{{ __('Name') }}</th>
                                <th>{{ __('Email') }}</th>
                                <th>{{ __('Role') }}</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach ($users as $data)
                                <tr>
                                    <td>{{ $data->id }}</td>
                                    <td>{{ $data->name }}</td>
                                    <td>{{ $data->email }}</td>
                                    <td>
                                        @foreach ($role as $roles)
                                            @if($roles->model_id == $data->id)
                                            <span class="badge bg-success">{{ $roles->name }}</span>
                                            @endif
                                        @endforeach
                                    </td>
                                    <td>
                                        <a href="{{ route('users.show', $data->id) }}"
                                            class="btn btn-primary btn-sm">Show</a>
                                        @can('employee-edit')
                                            <a href="{{ route('users.edit', $data->id) }}"
                                                class="btn btn-warning btn-sm">Edit</a>
                                        @endcan
                                        @can('employee-deleta')
                                            <a href="{{ route('users.destroy', $data->id) }}"
                                                class="btn btn-danger btn-sm">Delete</a>
                                        @endcan

                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        <div class="m-2">
            {{ $users->links() }}
        </div>
    </div>
@endsection
