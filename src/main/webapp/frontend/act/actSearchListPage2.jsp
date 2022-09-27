﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<head>

  <!-- Required meta tags -->
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

  <!-- JS -->
  <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/popper.min.js" type="text/javascript"></script>
  <script src="ownJS/moment.js" type="text/javascript"></script>
  <script src="js/bootstrap.min.js" type="text/javascript"></script>
  <script src="js/bootstrap-datepicker.min.js" type="text/javascript"></script>
  
  <!-- Bootstrap CSS -->
  <link href="css/style.css" type="text/css" rel="stylesheet" />
  <link href="css/bootstrap-datepicker.css" type="text/css" rel="stylesheet" />

  <!-- Favicon -->
  <!-- Favicon and Touch Icons -->
  <link href="/CGA103G1/frontend/imgs/logo.png" rel="shortcut icon" type="image/png" />
  <link href="/CGA103G1/frontend/imgs/logo.png" rel="apple-touch-icon" />
  <link href="/CGA103G1/frontend/imgs/logo.png" rel="apple-touch-icon" sizes="72x72" />
  <link href="/CGA103G1/frontend/imgs/logo.png" rel="apple-touch-icon" sizes="114x114" />
  <link href="/CGA103G1/frontend/imgs/logo.png" rel="apple-touch-icon" sizes="144x144" />
  <title>揪團活動頁</title>

</head>

<body>

  	<%@ include file="/frontend/header.file" %>
  
<!--   <header class="header-static navbar-sticky navbar-light shadow"> -->

<!--   </header> -->

  <!-- 	Banner innerpage -->
  <div id="actBanner">
    
  </div>
  <!-- Banner innerpage -->

  <section class="pt80 pb80 cruise-grid-view">
    <div class="container">
      <div class="row">
        <div class="col-lg-4 col-md-4 col-sm-12">
          <div class="Filter-left">
            <form action="doPost" method="post" autocomplete="off">
              <div class="pb-left">
                <div id="moreFilters" class="collapse show">
                  <div class="filter-block">
                    <h6 class="mb-3"></h6>
                    <ul class="list-unstyled mb-0">
                      <li>
                        <div class="custom-control custom-radio">
                            <input type="radio" id="actAll" name="actList" class="custom-control-input">
                            <label for="actAll" class="custom-control-label">全部</label>
                        </div>
                      </li>
                      <li>
                        <div class="custom-control custom-radio">
                          <input type="radio" id="actInvoke" name="actList" class="custom-control-input">
                          <label for="actInvoke" class="custom-control-label">揪團進行中</label>
                        </div>
                      </li> 
                      <li>
                        <div class="custom-control custom-radio">
                          <input type="radio" id="actDone" name="actList" class="custom-control-input">
                          <label for="actDone" class="custom-control-label">已成團</label>
                        </div>
                      </li>
                    </ul>
                  </div>
                  <div class="filter-block">
                    <div class="form-group">
                      <label for="form_neighbourhood" class="form-label">舉辦縣市</label>
                      <select class="custom-select select-big mb-3" id="loc">
                        <option value="0">請選擇</option>
                        <option value="1">臺北市</option>
                        <option value="2">新北市</option>
                        <option value="3">桃園市</option>
                        <option value="4">臺中市</option>
                        <option value="5">臺南市</option>
                        <option value="6">高雄市</option>
                        <option value="7">宜蘭縣</option>
                        <option value="8">新竹縣</option>
                        <option value="9">苗栗縣</option>
                        <option value="10">彰化縣</option>
                        <option value="11">南投縣</option>
                        <option value="12">雲林縣</option>
                        <option value="13">嘉義縣</option>
                        <option value="14">屏東縣</option>
                        <option value="15">花蓮縣</option>
                        <option value="16">臺東縣</option>
                        <option value="17">澎湖縣</option>
                        <option value="18">基隆市</option>
                        <option value="19">新竹市</option>
                        <option value="20">嘉義市</option>
                      </select>
                    </div>
                  </div>
                  <div class="mb-left">
                    <label for="form_dates" class="form-label">活動報名起始日</label>
                    <div class="form-group">
                      <input class="form-control" type="text" id="datepicker" autocomplete="off"
                        placeholder="Choose your dates">
                    </div>
                    <label for="form_dates" class="form-label">活動報名截止日</label>
                    <div class="form-group">
                      <input class="form-control" type="text" id="datepicker-out" autocomplete="off"
                        placeholder="Choose your dates">
                    </div>
                  </div>
                  <div class="mb-left">
                   
                  </div>
                  <div class="mb-left">
                    <label for="form_type" class="form-label">活動種類</label>
                    <select class="custom-select select-big" id="type">
                      <option value="0">請選擇</option>
                      <option value="1">競技</option>
                      <option value="2">運動</option>
                      <option value="3">美食</option>
                      <option value="4">露營</option>
                      <option value="5">電影</option>
                      <option value="6">社會服務</option>
                      <option value="7">音樂會</option>
                      <option value="8">展覽</option>
                    </select>
                  </div>
                  <div class="mb-left">
                    <label class="form-label">人數最小限制</label>
                    <div class="range-slider">
                      <input type="range" value="1" min="1" max="999" range="true" id="minCount">
                      <span class="range-value">1</span>
                    </div>
                  </div>

                  <div class="mb-left">
                  
                  </div>
                  
                  <div class="mb-left">
                    <button type="button" class="btn btn-primary btn-grad FilterBtn" id="filterAct"> <i
                        class="fas fa-filter mr-1"></i> 篩選 </button>
                  </div>

                  <div class="filter-block">
                    <h6 class="mb-3"></h6>
                    <div class="form-group ">
                      <label class="form-label"></label>
                      <div class="d-flex align-items-center"> 
                      
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="form-label"></label>
                      <div class="d-flex align-items-center">
                       
                      </div>
                    </div>
                    <div class="form-group mb-0">
                      <label class="form-label"></label>
                      <div class="d-flex align-items-center">
                      
                      </div>
                    </div>
                  </div>
                  <div class="filter-block">
                    <h6 class="mb-3"></h6>
                    <div class="form-group mb-0">
                      <div class="custom-control custom-switch">
                    
                      </div>
                    </div>
                    <div class="form-group mb-0">
                      <div class="custom-control custom-switch">
                   
                      </div>
                    </div>
                  </div>                 
                  <div class="filter-block">
                    <h6 class="mb-3"></h6>
                    <ul class="list-unstyled mb-0">
                      <li>
                        <div class="custom-control custom-checkbox">
           
                        </div>
                      </li>
                      <li>
                        <div class="custom-control custom-checkbox">
                          
                        </div>
                      </li>
                      <li>
                        <div class="custom-control custom-checkbox">
                
                        </div>
                      </li>
                      <li>
                        <div class="custom-control custom-checkbox">
                        
                        </div>
                      </li>
                    </ul>
                  </div>
                </div>

              </div>
            </form>
          </div>
        </div>
        
        <!-- 商品列表 -->
        <div class="col-lg-8 col-md-8 col-sm-12">
          <div class="resultBar barSpaceAdjust">
            <h2>目前活動有<span id="actCount"> </span> 個</h2>
          </div>

          <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12" id="actListDiv">
              

             
            </div>
            
          </div>



          <!-- <div class="paginationCommon blogPagination categoryPagination"> 
            <nav aria-label="Page navigation">
              <ul class="pagination">
                <li> <a href="#" aria-label="Previous"> <span aria-hidden="true"><i class="fa fa-angle-left"
                        aria-hidden="true"></i></span> </a> </li>
                <li class="active"><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
                <li> <a href="#" aria-label="Next"> <span aria-hidden="true"><i class="fa fa-angle-right"
                        aria-hidden="true"></i></span> </a> </li>
              </ul>
            </nav>
          </div> -->

        </div>
      </div>
    </div>
  </section>


  <!--  footer  -->
  	<%@ include file="/frontend/footer.file" %>

<!--   <footer class="footer footer-dark pt-6 position-relative"> -->

<!--   </footer> -->
    <!-- footer  -->


     

    <script>
     
    </script>
         

<!--     <script src="/CGA103G1/frontend/act/ownJS/includeFooterHeader.js" type="text/javascript"></script> -->
    <script src="/CGA103G1/frontend/act/ownJS/includeActBanner.js" type="text/javascript"></script>
    <script src="/CGA103G1/frontend/act/ownJS/actSearchListPage.js" type="text/javascript"></script>





    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/functions.js" type="text/javascript"></script>
    <script src="js/owl.carousel.min.js" type="text/javascript"></script>
    <script src="js/slick.js" type="text/javascript"></script>
    <script src="js/swiper.min.js" type="text/javascript"></script>
    <script src="js/main.js" type="text/javascript"></script>
    <script src="js/jquery.fancybox.min.js" type="text/javascript"></script>
    <script src="js/jquery-ui.min.js" type="text/javascript"></script>
    <script src="js/isotope.pkgd.min.js" type="text/javascript"></script>
    <script src="js/imagesloaded.pkgd.min.js" type="text/javascript"></script>
    
</body>

</html>