/**
 * Created by puter on 20/11/2015.
 */

angular.module('bookshop').service('Session',function(){

  this.create = function (sessionId,userId,userRole){
      this.id = sessionId;
      this.userid = userId;
      this.userRole = userRole;
  }
    this.destory = function(){
        this.id =null;
        this.userid=null;
        this.userRole=null;
    }
})
