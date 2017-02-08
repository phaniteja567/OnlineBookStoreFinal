<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html lang="en">
<head>
  <title>OnlineBookStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
  <script>document.write('<base href="' + document.location + '" />');</script>
    <link href="./resources/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./resources/css/style.css" rel="stylesheet" media="screen">
    <script data-require="angular.js@1.0.x" src="http://code.angularjs.org/1.0.7/angular.min.js" data-semver="1.0.7"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">

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
    <br>
    <br>
    <br>
	.
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
<i class="fa fa-home fa-fw"></i>Home <span class="border"></span></span></a></li>
						 <!-- <li><a href="showCustomers"><span><i class="fa fa-phone fa-fw" ></i>View Customers <span class="border"></span></span></a></li> -->
						<li><a href="viewProducts"><span><i class="fa fa-newspaper-o fa-fw" ></i>View Products <span class="border"></span></span></a></li> 
						<li><a href="logout"><span><i class="fa fa-sign-in fa-fw"></i>LogOut <span class="border"></span></span></a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

<div>
<center><img src="resources/images/products.jpg" style="width: 300px; height: 100px"></center>
</div>
<div>
<hr></hr>
</div>
<div>
${message}
</div>
 <div style="background-color: #e0e0d1;">
<form:form action="storeProduct" commandName="shoes" method="post" enctype="multipart/form-data">
<center><table>
<tr><td><hr></hr></td></tr>
<tr>
<td style="font-size: 20px">Product Name:</td>

<td><form:input path="product_name" placeholder="Product Name"  style="width:300px;height:40px"/></td>
      <td><form:errors path="product_name"> </form:errors></td>

</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product Category:</td>
<td><form:select path="product_category" style="width:300px;height:40px">
<form:option value="Technical"></form:option>
<form:option value="Psychology"></form:option>
<form:option value="Devotional"></form:option>
<form:option value="Romantic"></form:option>
</form:select></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Type of Product:</td>
<td><form:select path="typeOfProduct"  style="width:300px;height:40px">
<form:option value="Technology"></form:option>
<form:option value="General"></form:option>
</form:select></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Brand:</td>
<td><form:select path="brand" style="width:300px;height:40px">
<form:option value="Sparx">S.S publications</form:option>
<form:option value="Tommy Hilfiger">Complete Reference</form:option>
<form:option value="Adidas">Satraj Sahni</form:option>
<form:option value="Nike">Bala Guru Swamy</form:option>
<form:option value="Reebok">Mc Grew Hill</form:option>
<form:option value="Diesel">Chetan Bhagath</form:option>
</form:select></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product price:</td><td><form:input path="price" placeholder="Product Price"  required="true" style="width:300px;height:40px"/></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product Description:</td><td><form:textarea path="description" cols="10" rows="10" placeholder="Description"   style="width:300px;height:40px"/></td>
<td><form:errors path="description"></form:errors></td> 
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px">Product Image:</td><td><input type="file" name="file"/></td>
</tr>
<tr><td><br></br></td></tr>
<tr>
<td style="font-size: 20px"><td><input type="submit" value="Add New Product"/></td>
</tr>
</table>
</form:form>
</div>
<%@include file="footer.jsp" %>
</body>
</html>
