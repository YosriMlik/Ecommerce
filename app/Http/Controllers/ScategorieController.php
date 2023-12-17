<?php

namespace App\Http\Controllers;

use App\Models\Scategorie;
use App\Models\Categorie;
use Illuminate\Http\Request;

class ScategorieController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $scategories = Scategorie::with('categories')->get()->toArray();
        return ($scategories);
    }


    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $_scategorie = new Scategorie([
            'nomscategorie' => $request->input('nomscategorie'),
            'imagescategorie' => $request->input('imagescategorie'),
            'categorieID' => $request->input('categorieID'),
        ]);
        $_scategorie->save();
        return response()->json($_scategorie, 201);
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        $categorie = Categorie::find($id);
        return response()->json($categorie);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $id)
    {
        $categorie = Categorie::find($id);
        $categorie->update($request->all());
        return response()->json('Catégorie MAJ !');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy($id)
    {
        $categorie = Categorie::find($id);
        $categorie->delete();
        return response()->json('Catégorie supprimée !');
    }

}
