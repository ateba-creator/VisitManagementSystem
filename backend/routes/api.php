<?php

use App\Http\Controllers\Api\AuthController;
use App\Models\User;
use App\Models\Visit;
use App\Models\Visitor;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::get('visits', function() {
    return Visit::orderBy('created_at', 'DESC')->get();
});

Route::get('visits/recent', function() {
    return Visit::orderBy('created_at', 'DESC')->get()->take(5);
});

Route::get('visits/{id}', function($id) {
    return Visit::find($id);
});

Route::post('visits', function(Request $request) {
    $data = $request->all();
    $visit = Visit::create([
        'purpose'=>$request['purpose'],
        'visitor_id'=>$request['visitor_id'],
        'user_id'=>Auth::id()
    ]);
    $visit->departureDate = $data['departureDate'];
    return $visit;
});

Route::get('get_visits_data',function(Request $request){
    $data = [
        // {"name"=> "Page A", violence": 400},
        // "name"=> "Page B", violence": 300,
        // "name"=> "Page C", violence: 200,
        // "name"=> "Page D", violence: 500,
    ];
    return $data;
});

Route::put('visits/{id}', function(Request $request, $id) {
    $visit = Visit::findOrFail($id);
    $visit->update($request->all());
    return $visit;
});

Route::delete('visits/{id}', function(Request $request, $id) {
    $visit = Visit::findOrFail($id);
    $visit->delete();
    return response()->json(null);
});


Route::get('visitors', function() {
    return Visitor::orderBy('created_at', 'DESC')->get();
});


Route::get('visitors/{id}', function($id) {
    return Visitor::find($id);
});

Route::post('visitors', function(Request $request) {
    return Visitor::create($request->all());
});

Route::put('visitors/{id}', function(Request $request, $id) {
    $visitor = Visitor::findOrFail($id);
    $visitor->update($request->all());

    return $visitor;
});

Route::delete('visitors/{id}', function(Request $request, $id) {
    $visitor = Visitor::findOrFail($id);
    $visitor->delete();
    return response()->json(null);
});

Route::get('users', function() {
    return User::all();
});

Route::get('users/{id}', function($id) {
    return User::find($id);
});

Route::post('users', function(Request $request) {
    return User::create($request->all);
});

Route::put('users/{id}', function(Request $request, $id) {
    $user = User::findOrFail($id);
    $user->update($request->all());

    return $user;
});

Route::post('/auth/register', [AuthController::class, 'createUser']);
Route::post('/auth/login', [AuthController::class, 'loginUser']);

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
