<?php

$app->get('/orders', function() use ($app) {
    
   
    
    if(isset($_SESSION['user_id'])){
        
        $id = $_SESSION['user_id'];
        
        $order = $app->order
            ->where('userId',$id)
            ->get();
            
        foreach($order as $key => $mydata)   {
            
            
            // var_dump($mydata->bookId);
            
           $order =  $app->book
            ->where('id',$mydata->bookId)
            ->get();
           
           
           
           
            $orders = array(
                
                
                'order' =>$order);
          
           
            
        }
        
    }else{
        
        
        $id = '0';
    }

        
   echo json_encode($orders);

});


$app->post('/addorder', function() use ($app) {

    $app->response()->header("Content-Type", "application/json");

    $er = json_decode($app->request->getBody(),true);

    $userId = $er['userId'];
    $bookId = $er['bookId'];


    $app->order->create([
        'userId' => $userId,
        'bookId' => $bookId
    ]);



});