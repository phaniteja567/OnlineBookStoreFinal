<!DOCTYPE html>
<html lang="en">
<head>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
  <title>Shoe Clue's</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <head>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <script>document.write('<base href="' + document.location + '" />');</script>
  </head>
<body>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
<header id="fh5co-header" role="banner">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container-fluid">
				<div class="navbar-header"> 
				<!-- Mobile Toggle Menu Button -->
				<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle" data-toggle="collapse" data-target="#fh5co-navbar" aria-expanded="false" aria-controls="navbar"><i></i></a>
				<img src="resources/images/ani.gif" alt="some_text" style="width:90px;height:70px;;" align="left"><a class="navbar-brand" href="/shoeclue"><b >OnlineBookStore</a>
				</div>
				<div id="fh5co-navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav navbar-right">
						<li class="active"><a href="/shoeclue"><span><i class="fa fa-home fa-fw"></i>Home <span class="border"></span></span></a></li>
						<!-- <li><a href="contactUs"><span><i class="fa fa-phone fa-fw" ></i>ContactUs <span class="border"></span></span></a></li>
						<li><a href="Services"><span><i class="fa fa-newspaper-o fa-fw" ></i>Services <span class="border"></span></span></a></li>
						<li><a href="customerSignUp"><span><i class="fa fa-user fa-fw"></i>SignUp <span class="border"></span></span></a></li>
						<li><a href="CustomerCheck"><span><i class="fa fa-sign-in fa-fw"></i>Login <span class="border"></span></span></a></li> -->
						<li><a href="logout"><span><i class="fa fa-sign-in fa-fw"></i>LogOut <span class="border"></span></span></a></li> 
					</ul>
				</div>
			</div>
		</nav><div>
<center><img src="resources/images/products.jpg" style="width:300px;height: 300px"></center>
</div>
<div>
<div class="container">
  <div>

    <hr></hr>
    <table class="table table-striped">
    <tr>
    <th>Id</th>
    <th>Product Name</th>
    <th>Product Category</th>
    <th>Brand</th>
     <th>price</th>
    <th>Product Image</th>
    </tr>
        <tr >
             <td>${product.product_id}</td>
            <td>${ product.product_name}</td>
            <td>${product.product_category}</td>
               <td>${product.brand}</td>
               <td>${product.price}</td>
            <td><img src="resources/images/${product.product_id}.jpg" style="width: 200px;height:150px"></td>
            <!-- <div ng-app="addToCartApp">
            <div ng-controller="addToCartCtrl">							
		    <td><a href="#" class="btn btn-primary"
										   ng-click="addItemToCart(${product.product_id})"><span
												class="glyphicon glyphicon-shopping-cart"></span>Add to cart
											</a></td>
										<td><a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a></td>
        </tr>    
    </table>
    </div>
<script src="./resources/js/ordercontroller.js"/></script>
</div>-->

<body ng-app="addToCartApp">
    <div ng-controller="addToCartCtrl">
        <a href="javascript:void(0)" ng-click="addItemToCart(${product.product_id})">Add To kart </a>
        
        <a href="<spring:url value="/user/cart" />"
										   class="btn btn-primary"><span class="glyphicon glyphicon-hand-right"></span>View Cart</a>
    </div>
    <script>
    var cartApp = angular.module ("addToCartApp", []);

    cartApp.controller("addToCartCtrl", function ($scope, $http){
    	
    	 /*
         * retrieveCart method is used to get all cart items at the starting of the application
         */
        $scope.retrieveCart = function (cartId) {
            $scope.cartId = cartId;
            $scope.refreshCartItems(cartId);
        };
        
        $scope.showAlert = function () {
            alert("This is an example of ng-click");
        }
        
        
        /*
         * removeItemFromCart method is used to remove a item from the cart
         */
        $scope.removeItemFromCart = function (itemId) {
            $http.put('http://localhost:8984/shoeclue/usercart/cart/removeItem/'+itemId).success(function (data) {
                $scope.refreshCartItems();
            });
        };

    	 /*
         * addItemToCart method is used to add items into the cart
         */
        $scope.addItemToCart = function (itemId) {
        	 alert("test");
            $http.put('http://localhost:8984/shoeclue/usercart/cart/addItem/'+itemId).success(function () {
                alert("Item added to the cart!")
            });
        };
       
       
        /*
         * GrandTotalOfItems method is called on cart page to calculate grand total for the added items
         */
        $scope.GrandTotalOfItems = function () {
            var grandTotal=0;

            for (var i=0; i<$scope.cart.cartItems.length; i++) {
                grandTotal+=$scope.cart.cartItems[i].totalPrice;
           }

            return grandTotal;
        };
        /*
    	 * refreshCartItems method is called by others methods in same controller to refresh the cart
    	 */
        $scope.refreshCartItems = function () {
            $http.get('http://localhost:8984/shoeclue/usercart/cart/refreshCart/'+$scope.cartId).success(function (data) {
               $scope.cart=data;
            });
        };
        
        /*
         * clearCartItems method is used to delete all items from the cart
         */
        $scope.clearCartItems = function () {
        	$http['delete']('http://localhost:8984/shoeclue/usercart/cart/clearCartItems/'+$scope.cartId).success(function (data) {$scope.refreshCartItems()});
        };
    });
    
</script>
</tr>
</table>
</div>
</div>
</div>
<%@include file="footer.jsp" %>
</body>

</header>
<%@include file="footer.jsp" %>
</body>

</html>
