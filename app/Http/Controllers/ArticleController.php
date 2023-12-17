<?php

namespace App\Http\Controllers;

use Faker\Provider\Image;
use Illuminate\Http\Request;
use App\Models\Article;

class ArticleController extends Controller
{
    public function index() {
        $articles = Article::with('scategories')->get()->toArray();
        return array_reverse($articles);
    }

    public function store(Request $request) {

        /*$request->validate(array(
            'imageart' => 'image|mimes:jpeg,png,jpg,gif,svg|max:2048',
        ));*/

        //File::copy($request('imageart') , public_path().'/images');

        $article = new Article([
            'designation' => $request->input('designation'),
            'marque' => $request->input('marque'),
            'reference' => $request->input('reference'),
            'qtestock' => $request->input('qtestock'),
            'prix' => $request->input('prix'),
            'imageart' => $request->input('imageart'),
            'scategorieID' => $request->input('scategorieID')
        ]);

        /*if($request->hasFile('image')){
            $image = $request->file('image');
            $filename = time() . '.' . $image->getClientOriginalExtension();
            Image::make($image)->save( storage_path('/uploads/' . $filename ) );
            $article->image = $filename;
            $article->save();
        };*/

        $article->save();
        return response()->json('Article créé !');
    }

    public function show($id) {
        $article= Article::find($id);
        return response()->json($article);
    }

    public function update($id, Request $request) {
        $article = Article::find($id);
        $article->update($request->all());
        return response()->json('Article MAJ !');
    }

    public function destroy($id) {
        $article = Article::find($id);
        $article->delete();
        return response()->json('Article supprimé !');
    }
}
