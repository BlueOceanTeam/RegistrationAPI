<!DOCTYPE html>
<html lang="en">
<title>Marshlander Telecom Services</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif}
.w3-bar,h1,button {font-family: "Montserrat", sans-serif}
.fa-anchor,.fa-coffee {font-size:200px}
</style>
<body>

<!-- Navbar -->
<div class="w3-top">
  <div class="w3-bar w3-red w3-card w3-left-align w3-large">
    <a class="w3-bar-item w3-button w3-hide-medium w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-red" href="javascript:void(0);" onclick="myFunction()" title="Toggle Navigation Menu"><i class="fa fa-bars"></i></a>
    <a href="#" class="w3-bar-item w3-button w3-padding-large w3-white">Home</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">About US</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Services Offered</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Contact US</a>
    <a href="#" class="w3-bar-item w3-button w3-hide-small w3-padding-large w3-hover-white">Help</a>
  </div>

</div>

<!-- Header -->
<header class="w3-container w3-red w3-center" style="padding:128px 16px">
  <h1 class="w3-margin w3-jumbo">MarshLander Telecom Services</h1>
  <p class="w3-xlarge">The Power of Automation</p>
 <!-- <button class="w3-button w3-black w3-padding-large w3-large w3-margin-top">Get Started</button>-->
 <table align="center">
		<tr>
			<td><a href="login">Login</a></td>
			<td><a href="register">Register</a></td>
		</tr>
	</table>
</header>

<!-- First Grid -->
<div class="w3-row-padding w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-twothird">
      <h1>About Marshlander</h1>
      <h5 class="w3-padding-32">Marslander a leading telecom service provider who deliver outstanding wireline/wireless experiences to more than several million s of customers.</h5>

      <p class="w3-text-grey">Marslander as part of their DevOps transformation journey is strategically transforming one of their program Phoenix into DevO ps Model. The main driver for this transformation is a need to improve time to market for new application functionality or other code changes, wher e historically there has been a pain point in development teams being bottlenecked by lengthy and inefficient processes related to application operati ons (e.g. release management, database con figuration). One of the reasons why Marslander has historically suffered from lengthy release processes is that code quality has not been up to par. Phoenix program has number of Applications that fall into Digital (microservices, containers etc.) & Le gacy Applications
(Monoliths, etc.). To that end, Marslander is looking for a service provider to achieve its aspirational business benefits wh</p>
    </div>

    <div class="w3-third w3-center">
      <i class="fa fa-anchor w3-padding-64 w3-text-red"></i>
    </div>
  </div>
</div>

<!-- Second Grid -->
<div class="w3-row-padding w3-light-grey w3-padding-64 w3-container">
  <div class="w3-content">
    <div class="w3-third w3-center">
      <i class="fa fa-coffee w3-padding-64 w3-text-red w3-margin-right"></i>
    </div>

    <div class="w3-twothird">
      <h1>Looking For Devops service provider	</h1>
      <h5 class="w3-padding-32">To that end, Marslander is looking for a service provider to achieve its aspirational business benefits wh ich are to:Reduce time to market of new application functionalities and other code changes.Iterative and incremental delivery approach with small release cycles to deliver incremental value to business.Improve quality of released code through improved, increasingly automated testing and release processes.Effective and robust communication process & better collaboration of the business and delivery units.
Reduce running cost of Application Operations overall IT</h5>

      <p class="w3-text-grey">Build Enterprise moving software assembly line and capability to enable traceability and quality controls. The focus for the Ent erprise moving software assembly line is to enable the engineering teams to deploy anytime with no human touch. Marslander focuses on rapid service delivery using agile and lean practices, therefore Continuous Delivery and DevOps are imp ort ant requirements
practices to achieve this goal</p>
    </div>
  </div>
</div>

<div class="w3-container w3-black w3-center w3-opacity w3-padding-64">
    <h1 class="w3-margin w3-xlarge">Quote of the day: "A little progress each day adds up to BIG results"</h1>
</div>

<!-- Footer -->
<footer class="w3-container w3-padding-64 w3-center w3-opacity">  
  <div class="w3-xlarge w3-padding-32">
    <i class="fa fa-facebook-official w3-hover-opacity"></i>
    <i class="fa fa-instagram w3-hover-opacity"></i>
    <i class="fa fa-snapchat w3-hover-opacity"></i>
    <i class="fa fa-pinterest-p w3-hover-opacity"></i>
    <i class="fa fa-twitter w3-hover-opacity"></i>
    <i class="fa fa-linkedin w3-hover-opacity"></i>
 </div>
 <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

<script>
// Used to toggle the menu on small screens when clicking on the menu button
function myFunction() {
  var x = document.getElementById("navDemo");
  if (x.className.indexOf("w3-show") == -1) {
    x.className += " w3-show";
  } else { 
    x.className = x.className.replace(" w3-show", "");
  }
}
</script>

</body>
</html>
