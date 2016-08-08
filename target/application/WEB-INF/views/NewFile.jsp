<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <script src="Scripts/jquery-1.10.2.js"></script>
    <script src="Scripts/jquery.validate.js"></script>
    <script src="Scripts/modernizr-2.6.2.js"></script>
    <script src="Scripts/bootstrap.js"></script>
    <script src="Scripts/respond.js"></script>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/Site.css" rel="stylesheet" />
</head>


<body>
    <script>
    $(document).ready(function () {
        //To show popup on startup.
    	//$("#myModal").modal('show');
    });
    </script>
    <style>
        .hovereffect {
  width: 100%;
  height: 100%;
  float: left;
  overflow: hidden;
  position: relative;
  text-align: center;
  cursor: default;
  background: -webkit-linear-gradient(45deg, #ff89e9 0%, #05abe0 100%);
  background: linear-gradient(45deg, #ff89e9 0%,#05abe0 100%);
}

.hovereffect .overlay {
  width: 100%;
  height: 100%;
  position: absolute;
  overflow: hidden;
  top: 0;
  left: 0;
  padding: 3em;
  text-align: left;
}

.hovereffect img {
  display: block;
  position: relative;
  max-width: none;
  width: calc(100% + 60px);
  -webkit-transition: opacity 0.35s, -webkit-transform 0.45s;
  transition: opacity 0.35s, transform 0.45s;
  -webkit-transform: translate3d(-40px,0,0);
  transform: translate3d(-40px,0,0);
}

.hovereffect h2 {
  text-transform: uppercase;
  color: #fff;
  position: relative;
  font-size: 17px;
  background-color: transparent;
  padding: 15% 0 10px 0;
  text-align: left;
}

.hovereffect .overlay:before {
  position: absolute;
  top: 20px;
  right: 20px;
  bottom: 20px;
  left: 20px;
  border: 1px solid #fff;
  content: '';
  opacity: 0;
  filter: alpha(opacity=0);
  -webkit-transition: opacity 0.35s, -webkit-transform 0.45s;
  transition: opacity 0.35s, transform 0.45s;
  -webkit-transform: translate3d(-20px,0,0);
  transform: translate3d(-20px,0,0);
}

.hovereffect a, .hovereffect p {
  color: #FFF;
  opacity: 0;
  filter: alpha(opacity=0);
  -webkit-transition: opacity 0.35s, -webkit-transform 0.45s;
  transition: opacity 0.35s, transform 0.45s;
  -webkit-transform: translate3d(-10px,0,0);
  transform: translate3d(-10px,0,0);
}

.hovereffect:hover img {
  opacity: 0.6;
  filter: alpha(opacity=60);
  -webkit-transform: translate3d(0,0,0);
  transform: translate3d(0,0,0);
}

.hovereffect:hover .overlay:before,
.hovereffect:hover a, .hovereffect:hover p {
  opacity: 1;
  filter: alpha(opacity=100);
  -webkit-transform: translate3d(0,0,0);
  transform: translate3d(0,0,0);
}
    </style>

    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
               <a href='#' class = "navbar-brand">Shopping Name</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href='#'>Home</a></li>
                    <li><a href='#'>About</a></li>
                    <li><a href='#'>Contact</a></li>
                </ul>
                
            </div>
        </div>
    </div>

    <div class="container">
        <br>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
                <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>

            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active">
                    <img src="Images/img_chania.jpg" alt="Chania" width="460" height="345">
                </div>

                <div class="item">
                    <img src="Images/img_chania.jpg" alt="Chania" width="460" height="345">
                </div>

                <div class="item">
                    <img src="Images/img_chania.jpg" alt="Flower" width="460" height="345">
                </div>

                <div class="item">
                    <img src="Images/img_chania.jpg" alt="Flower" width="460" height="345">
                </div>
            </div>

            <!-- Left and right controls -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </div>
    <div class="container" style="padding-top:20px;">
        <ul class="nav nav-tabs">

            <li class="active col-md-6"><a data-toggle="tab" href="#menu1">Menu 1</a></li>
            <li class="col-md-6"><a data-toggle="tab" href="#menu2">Menu 2</a></li>

        </ul>
        <div class="tab-content">
            <div id="menu1" class="tab-pane fade in active">
                <div class="row" style="margin-top:10px;">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="menu2" class="tab-pane fade">
                <div class="row" style="margin-top:10px;">
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3">
                        <div class="thumbnail hovereffect">
                            <img class="img-responsive" src="Images/img_chania.jpg" alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    

    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">Title</h4>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Remind Me Later</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>