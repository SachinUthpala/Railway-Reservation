<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home : Sri Lanka Railways</title>
    <!--link css files-->
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/boostrap.min.css">
    <!--link javascript fils-->
    <script src="./js/script.js"></script>
    <script src="./js/icons.js"></script>
    <!--boostrap css link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <!--boostrap links-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
    <!--animations-->
    <link rel="stylesheet" href="./css/animate.min.css">
</head>
<body>
    <!--hed section-->
    <section id="header">

        <nav class="navbar"> <!--nav bar-->
          
            <div class="container-fluid">
              <a class="navbar-brand" href="#" style="color:#fff;font-size: 40px;"><img src="./imgs/logo-removebg-preview.png" alt="" width="100px" height="100px"></a>
              <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars" aria-hidden="true"></i>
              </button>
              <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link"  href="#top">Home</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#about">About Us</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#servicea">Services</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#famous">Feactures</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#testimonials">Reviwes</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link" href="#footer">Contact Us</a>
                  </li>
                </ul>
              </div>
            </div>
          </nav>
    </section>

    <!--wellcome text-->
    <section id="wellcome"  >
      <div class="container">
        <div class="wellcome text-center wow slideInLeft">
          <h1>Wellcome To Railway Resavation</h1>
          <p>On its path to Europe and the global market, coffee was transported by rail in Sri Lanka in 1864 from plantations in the Kandy area of the country's hills to the port city of Colombo. 
            As a result of the 1871 coffee blight, many beautiful plantations were lost, and tea took their place.</p>
          <button type="submit" class="main_btn" onclick="location.href='../SignUp/login.jsp'">Reserva Now</button>  
      </div>
    </section>

    <!--about us-->
    <section id="about">
      <div class="container">
        <div class="row">
          <!--col1-->
          <div class="col-md-6 text-center">
            <img src="./imgs/about_img.jpg" class="img-fluid">
          </div>
          <!--col2-->
          <div class="col-md-6 text-justify">
            <h3>About Our Service Hestory</h3>
            <p>Service began in 1864 with the construction of the Main Line from Colombo to Ambepussa, 54 kilometres (34 mi) east, and the first train ran on 27 December 1864. The line was officially opened to traffic on 2 October 1865.</p>
            <p>To serve the coconut plantations flourishing in the west, south west and north west coastal areas of the country, and the wet inland rubber plantations below the tea belt, railway lines were built in the wake of these agricultural developments. Thereafter, the need for cheap and safe travel in order to open up the hinterland of the country led to the expansion of the railway.</p>
          </div>
          <!--col3-->
          <div class="col-md-6 text-justify">
            <h3>Our History</h3>
            <p>The Sri Lankan Railways formerly known as the Ceylon Government Railways has an eventful history of 150 years from the day the possibility of having a railways line from Colombo to Kandy and beyond was first discussed.By 1842, the necessity of the railway track was identified by the colonial rulers as the road alone was providing inadequate transport for coffee as there were not sufficient bullock carts or bullocks available.</p>
            <p>The history of Indian Railways dates back to over 160 years ago. On 16th April 1853, the first passenger train ran between Bori Bunder (Bombay) and Thane, a distance of 34 km. It was operated by three locomotives, named Sahib, Sultan and Sindh, and had thirteen carriages..</p>
          </div>
          <!--col4-->
          <div class="col-md-6 text-justify">
            <div class="embed-responsive embed-responsive-16by9">
              <iframe class="embed-responsive-item" width="560" height="315" src="https://www.youtube.com/embed/hxITmHjOD-w" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--services-->
    <section id="servicea">
      <div class="container">
        <div class="row">
          <div class="col-md-4">
            <img src="./imgs/seat-removebg.png" alt="" width="100px" height="80px">
            <h4>Reserva Seats</h4>
            <p>You can reaseve seats from this website. You can select the class ,seat number ,seat type by using this website</p>
          </div>

          <div class="col-md-4">
            <img src="./imgs/time-removebg-preview.png" alt="" width="90px" height="80px">
            <h4>Train timetables</h4>
            <p>You can reaseve seats from this website. You can select the class ,seat number ,seat type by using this website</p>
          </div>

          <div class="col-md-4">
            <img src="./imgs/speed-removebg-preview.png" alt="" width="110px" height="70px">
            <h4>Train Avaliability</h4>
            <p>You can reaseve seats from this website. You can select the class ,seat number ,seat type by using this website</p>
          </div>
        </div>
      </div>
    </section>

    <!--famous destinations-->
    <section id="famous">
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <img src="./imgs/st1.jpg" alt="" class="img-fluid" style="border-radius: 10px;" width="500px" height="400px">
            
          </div>
          <div class="col-md-6">
            <div class="famous-box">
              <div class="famous-left">
                <i class="fa fa-smile-o" aria-hidden="true"></i>
              </div>
              <div class="famous-right">
                <h4>Our Staff</h4>
                <p>We hava the owrld famous and fully trained staff  to provide our service</p>
              </div>
            </div>

            <div class="famous-box">
              <div class="famous-left">
                <i class="fa fa-train" aria-hidden="true"></i>
              </div>
              <div class="famous-right">
                <h4>Our Drivers</h4>
                <p>We hava the owrld famous and fully trained staff  to provide our service</p>
              </div>
            </div>

            <div class="famous-box">
              <div class="famous-left">
                <i class="fa fa-certificate" aria-hidden="true"></i>
              </div>
              <div class="famous-right">
                <h4>World Recomondations</h4>
                <p>We hava the owrld famous and fully trained staff  to provide our service</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!--testimonials-->
    <section id="testimonials">
      <div class="container">
        <h1 class="text-center">Ideas From Our Users</h1>
        <p class="text-center">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Iste eligendi labore officiis expedita iusto voluptatum modi eum dolore autem maiores, illo quo provident vitae.</p><br>
        <div class="row">
          <div class="col-md-4">
            <p class="reawive">
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odio atque exercitationem, 
               <br> <i class="fa fa-twitter" aria-hidden="true"></i><span>  @sachin</span>
            </p>
            <img src="./imgs/user1.jpg" alt="">
          </div>

          <div class="col-md-4 middle">
            <p class="reawive">
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odio atque exercitationem, 
               <br> <i class="fa fa-twitter" aria-hidden="true"></i><span>  @sachin</span>
            </p>
            <img src="./imgs/user2.jpg" alt="">
          </div>

          <div class="col-md-4">
            <p class="reawive">
              Lorem ipsum dolor sit, amet consectetur adipisicing elit. Odio atque exercitationem, 
               <br> <i class="fa fa-twitter" aria-hidden="true"></i><span>  @sachin</span>
            </p>
            <img src="./imgs/user3.jpg" alt="">
          </div>
        </div>
      </div>
    </section>

    <!--subscribe-->
    <section id="subscribe">
      <div class="container">
        <div class="subscribe text-center">
          <h3>Subscribe For latest Updates.!</h3>
          <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Laborum, sequi?</p>
          <div class="input-group">
            <input type="email" name="" id="" class="form-control" placeholder="Email">
            <input type="submit" value="Submit" class="form-control" >
          </div>
        </div>

      </div>
    </section>

    <!--footer section-->
    <section id="footer">
      <div class="container ">
        <div class="row">
          <div class="col-md-3">
            <img src="./imgs/logo-removebg-preview.png" alt="" width="100px" height="100px" class="footer-logo">
            <p>Lorem ipsum dolor sit amet facere odit earum neque ullam illum voluptatibus molestiae.</p>
          </div>

          <div class="col-md-3">
            <h1>Feactures</h1>
            <p>Super Staff</p>
            <p>Super Trains</p>
            <p>Super Drivers</p>
            <p>Super Commiunicatord</p>
          </div>

          <div class="col-md-3">
            <h1>Quick Contact</h1>
            <p><i class="fa fa-phone-square"></i> +9476 271 200</p>
            <p><i class="fa fa-envelope"></i> railway@yahoo.com</p>
            <p><i class="fa fa-home"></i> No23,Colombo,Sri Lanka</p>
            <p><i class="fa fa-fax" aria-hidden="true"></i>fax : +22311234</p>
          </div>

          <div class="col-md-3">
            <h1>Follow Us On</h1>
            <p><i class="fa fa-twitter" aria-hidden="true"></i> @railwayLannka</p>
            <p><i class="fa fa-facebook"></i> @railway</p>
            <p><i class="fa fa-linkedin"></i> @railway</p>
            <p><i class="fa fa-youtube"></i> @railway</p>
          </div>

        </div><hr>
        <p class="copyright text-center">Made By : Sachin Uthpala</p>
      </div>
    </section>

    <!--smmoth scroll js-->
    <script src="./js/smooth-scroll.js"></script>
    <script>
      var scroll = new SmoothScroll('a[href*="#"]');
    </script>

    <!---animatons-->
    <script src="./js/wow.min.js"></script>
    <script src="./js/wow.js"></script>
    <script>
      new WOW().init();   
    </script>
</body>
</html>