<?php
/**
 * Created by PhpStorm.
 * User: puter
 * Date: 07/12/2015
 * Time: 22:03
 */
//Search books
$app->get('/search/:query', function ($string) use ($app) {

    $app->response()->header("Content-Type", "application/json");

    $query = str_replace(' ', '', $string);

    /// sending over a request to google books api
    // with the query
    $url = 'https://www.googleapis.com/books/v1/volumes?q='.$query.
        '+&maxResults=5&key=AIzaSyAxOTrmhPJg0GJarCFds40aurnshpzQBS0';

    $jsonfile = file_get_contents($url);
    $books =(json_decode($jsonfile));

    // checking the DB to see if the book is already in the DB
    // if its not it will add it.

    //The point of this is to build up the book data base.
    foreach($books->items as $key => $mydata) {

        $bookname = $mydata->volumeInfo->title;
        if(isset($mydata->volumeInfo->description)){

            $description = $mydata->volumeInfo->description;
        }else{
            $description='';
        }
        if(isset($mydata->volumeInfo->authors)){

            $author = $mydata->volumeInfo->authors;
        }else{
            $author=' ';
        }
        if(isset($mydata->volumeInfo->imageLinks->thumbnail)){

            $image = $mydata->volumeInfo->imageLinks->thumbnail;
        }else{
            $image='';
        }
        if(isset($mydata->volumeInfo->averageRating)){


            $float = floatval($mydata->volumeInfo->averageRating);

            $rating = number_format($float,0,'.','');

        }else{
            $rating= '';
        }

        $DB_book = $app->book
            ->where('name', $bookname)
            ->first();



        if (isset($DB_book)) {
            if ($DB_book->name == $bookname) {

                //do nothing as book is already in the database
            }
        }else{

            //adding the book to the data base
            $app->book->create([
                'name' => $bookname,
                'description' => $description,
                'author' => $author[0],
                'image' => $image,
                'rating' => $rating
            ]);

            }
    }

    // returns the book to the user
    // data from the DB.
    $DB = $app->book
        ->where('name', 'LIKE', '%'.$string.'%')
        ->get();

 echo   json_encode($DB);


});

// end point adds a new book for the user
$app->post('/addbook',function()use ($app){

    $app->response()->header("Content-Type", "application/json");

    $er = json_decode($app->request->getBody(),true);
    $book_name = $er['name'];
    $description = $er['description'];
    $author = $er['author'];
    $image = $er['image'];
    $id = $er['id'];


echo json_encode('success');

//adding the book to the data base
    $app->book->create([
        'name' => $book_name,
        'description' => $description,
        'author' => $author,
        'image' => $image,
        'rating ' => '',
        'userid' => $id

    ]);

});
// this end point returns the user books
$app->get('/getUserBooks/:id',function($id)use ($app){

    $DB = $app->book
        ->where('userid', $id)
        ->get();

    echo json_encode($DB);

});

// this endpoint gets the books on the main page
$app->get('/books',function()use ($app){

    $books = $app->book->orderBy('rating','DESC')->get();

    echo json_encode($books);
});

//this endpoint gets a single book to be shown in more detail
// when a user clicks on a book
$app->get('/book/:id', function ($id) use ($app) {
    //Show book identified by $id
        $DB_book = $app->book
            ->where('id',$id)
            ->first();

    echo json_encode($DB_book);

});