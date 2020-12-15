<?php

namespace App\Http\Controllers;

use Carbon\Carbon;
use App\Models\Voting;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class VotingController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->ajax()) {
            $data = Voting::latest()->get();
            return datatables()->of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($data) {
                    $button = '
                <a href="' .  route('votings.show', $data->id)  . '" class="btn btn-sm btn-warning">Detail</a>
                <a href="javascript:void(0)" data-id="' . $data->id . '" class="btn btn-sm btn-danger changePassword">Delete</a>';
                    return $button;
                })
                ->editColumn('date', function ($request) {
                    return Carbon::parse($request->date)->format('d F Y');
                })
                ->editColumn('start', function ($request) {
                    return Carbon::parse($request->start)->format('H:i');
                })
                ->editColumn('end', function ($request) {
                    return Carbon::parse($request->end)->format('H:i');
                })
                ->escapeColumns([])
                ->make(true);
        }
        return view('votings.index');
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('votings.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $user_id = Auth::id();
        Voting::create([
            'name' => $request->name,
            'description' => $request->description,
            'date' => $request->date,
            'start' => $request->date . " " . $request->start,
            'end' => $request->date . " " . $request->end,
            'user_id' => $user_id
        ]);
        return redirect('votings');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Voting  $voting
     * @return \Illuminate\Http\Response
     */
    public function show(Voting $voting)
    {
        $voting->date = Carbon::parse($voting->date)->format('d F Y');
        $voting->start = Carbon::parse($voting->start)->format('H:i');
        $voting->end = Carbon::parse($voting->end)->format('H:i');
        return view('votings.show', ['voting' => $voting]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Voting  $voting
     * @return \Illuminate\Http\Response
     */
    public function edit(Voting $voting)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Voting  $voting
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Voting $voting)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Voting  $voting
     * @return \Illuminate\Http\Response
     */
    public function destroy(Voting $voting)
    {
        //
    }
}
