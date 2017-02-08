<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
 
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }    
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  </style>
  <script type="text/javascript">
$(document).ready(function(){
     $("#myCarousel").carousel({
         interval : 1000,
         pause: false
     });
});
</script>
 <script>document.write('<base href="' + document.location + '" />');</script>
</head>
<body>
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
						<li class="active"><a href="/shoeclue"><span>
						<!-- <li><a href="logout"><span><i class="fa fa-sign-in fa-fw"></i>LogOut <span class="border"></span></span></a></li>
				 -->	</ul>
				</div>
			</div>
		</nav>
	</header>
<div class="span9 margin-bottom center"> 
					<center><h3>Items in your cart</h3></center>
					</div>
<div class="span9 margin-left10" ng-app="addToCartApp">
	 <div class="row margin-left25" ng-controller = "addToCartCtrl" ng-init="retrieveCart('${cartId}')">
        <table class="table table-bordered table-striped fs13" >
		  <thead>
			  <tr>
				
				<th>Image</th>
				<th class="width110">Product</th>
				<th >Unit Price</th>
				<th>Quantity</th>
				<th>Price(in Rs.)</th>
				<th>id</th>
				<th>Action</th>
			  </tr>
			</thead>
			<tbody>
				<tr ng-repeat = "items in cart.cartItems">
				data:  {{items.item.product_id}}
					 	<td class="span1"><img src="/shoeclue/resources/images/{{items.item.product_id}}.jpg" style="width: 100px;height: 100px" alt="image"/></td>
						<td>{{items.item.product_name}}</td>
						<td>{{items.item.price}}</td>
						<td>{{items.quantity}}</td>
						<td>{{items.totalPrice}}</td>
						<td>{{items.item.product_id}}</td> 	
						<td><a href="#" class="btn btn-danger btnAction" ng-click="removeItemFromCart(items.item.product_id)">
							<span class="glyphicon glyphicon-remove"></span>remove</a></td>
					</tr>
			  <tr>
                    <td></td>
                    <td></td>
					<td></td>
                    <td>Grand Total(in Rs.)</td>
                    <td>{{GrandTotalOfItems()}}</td>
                    <td></th>
                </tr>	  
			</tbody>
		  </table>
          <div class="row">
		  <div class="span3">
             &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="<spring:url value="/" />" class="btn btn-primary center">Continue Shopping</a>
			</div>	
			<div class="span3">
            &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a href="<spring:url value="/order/${cartId}"/>"
                   class="btn btn-success center"><span class="glyphicon-shopping-cart glyphicon"></span> Check out
                </a>
			</div>	  
			<div class="span2">
           &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<a class="btn btn-danger center" ng-click="clearCartItems()"><span
                        class="glyphicon glyphicon-remove-sign"></span>Clear Cart</a>
			</div>		  
			
        </div>
		</div>
      </div>     

<body>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.2/angular.min.js"></script>
    <div>
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
        	alert('inside remove method');
            $http.put('http://localhost:8984/shoeclue/usercart/cart/removeItem/'+itemId).success(function (data) {
            	alert('pls refresh now');
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
        	alert('inside refresh')
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
<center><%@include file="footer.jsp" %></center>
</body>
</html>
