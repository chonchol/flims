<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Flim;
use App\Comment;
use Redirect;
use Illuminate\Support\Facades\Input;
use DB;
use Auth;

class FlimController extends Controller
{
	public function __construct()
    {
        $this->middleware('auth');
    }
	// Api Route Calling start here
	public function index()
    {
        return Flim::all();
    }
 
    public function show(Flim $flim)
    {
        return $flim;
    }

    public function store(Request $request)
    {
        $flim = Flim::create($request->all());
        return response()->json($flim, 201);
    }

    public function update(Request $request, Flim $flim)
    {
        //$flim = Flim::findOrFail($id);
        $flim->update($request->all());

        return response()->json($flim, 200);
    }

    public function delete(Flim $flim)
    {
        //$flim = Flim::findOrFail($id);
        $flim->delete();

        return response()->json(null, 204);
    }

    public function create()
    {
        return view('page.create');
    }

    public function StoreFlim(Request $request)
    {
   		$this->validate($request, [
            'name' => 'required',
            'description' => 'required',
            'release_date' => 'required',
            'rating' => 'required',
            'ticket_price' => 'required',
            'country' => 'required',
            'genre' => 'required',
            'photo' => 'required'
        ]);

        $flim = new Flim();
        $flim->name = $request->get('name');
        $flim->description = $request->get('description');
        $flim->release_date = $request->get('release_date');
        $flim->rating = $request->get('rating');
        $flim->ticket_price = $request->get('ticket_price');
        $flim->country = $request->get('country');
        $flim->genre = $request->get('genre');

/*      $genres = $inputs['genre'];
		foreach ($genres as $genre) {
		    Flim::create([
		        'genre'   => $genre,
		    ]);
		}*/

        if ($request->hasFile('photo')) {
            $file = array('photo' => Input::file('photo'));
            $destinationPath = 'uploads/'; // upload path
            $extension = Input::file('photo')->getClientOriginalExtension(); 
            $fileName = rand(11111,99999).'.'.$extension; // renaming image
            Input::file('photo')->move($destinationPath, $fileName);
            $flim->photo = $fileName;
        }else{
            echo "Please Upload flim Image!";
        }

        $flim->save();

        $request->session()->flash('alert-success', 'New Flim added Successfully!');
        return Redirect::to('flims/create');
    }

    public function ShowFlim()
    {
    	$flims = Flim::where('id', '>=', 1)->paginate(1000);              
        return view('page.show', ['flims' => $flims]);
    }

    public function SingleFlim($slug)
    {
    	$singleFlim = DB::table('flims')->select('*')->where('name','=', $slug)->first();

    	$idSingleFlim = $singleFlim->id;
    	$allComment = DB::table('comments')
            ->leftJoin('flims', 'comments.flim_id', '=', 'flims.id')
            ->select('comments.comment', 'comments.name')
            ->where('comments.flim_id', '=', $idSingleFlim)
            ->get();
    	//dd($allComment);
        return view('page.single', ['slug' => $slug, 'singleFlim' => $singleFlim, 'allComment' => $allComment]);
    }

    public function Comment(Request $request, $id=0)
    {
   		$this->validate($request, [
            'name' => 'required',
            'comment' => 'required',
        ]);



        $flim_id = Flim::find($id);

   		$flimId = Flim::select('id')->where('id', '=', $flim_id)->first();
   		//dd($qrcodes);
        $comment = new Comment();
        $comment->user_id = Auth::user()->id;
        //$comment->flim_id = $flimId->id;
        
        $comment->name = $request->get('name');
        $comment->comment = $request->get('comment');

        $comment->save();
        return redirect()->back();
    }
}
