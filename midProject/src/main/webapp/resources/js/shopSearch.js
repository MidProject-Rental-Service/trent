// 카테고리 전송
function sendCategoryToController(category) {
  var sendData = {
    c_name: category
  };

  $.ajax({
    type: "POST",
    url: "searchCategory.do",
    data: sendData,
    dataType: "JSON",
    success: function(response) {
    
      // 서버에서 받은 제품 리스트
      var goodsList = response;
      
      // 제품 리스트를 넣을 위치
      var productListDiv = $(".product-list .row");

      // 초기화
      productListDiv.empty();

      // 받아온 제품 리스트를 화면에 출력
      $.each(goodsList, function(index, list) {
        var productItem =
          `<div class="col-lg-4 col-sm-6">
            <div class="product-item">
              <div class="pi-pic">
                <a href="product.do?g_id=${list.g_id }">
                  <img src="../img/products/${list.g_rimg1}" alt="">
                  <div class="sale pp-sale">Sale</div>
                  <div class="icon">
                    <i class="icon_heart_alt"></i>
                  </div>
                </a>
                <ul>
                  <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                  <li class="quick-view"><a href="#">+ Quick View</a></li>
                  <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                </ul>
              </div>
              <div class="pi-text">
                <a href="#">
                  <h5>${list.g_name}</h5>
                </a>
                <div class="product-price">
                  <span>$35.00</span> $14.00
                </div>
              </div>
            </div>
          </div>`;

        productListDiv.append(productItem);
      });
    },
    error: function() {
      console.error("출력Error");
    }
  });
}

// 브랜드,가격 전송
function sendBrandAndPriceToController() {

// 선택된 브랜드 배열처리
  var selectedBrands = []; 
  $('input[type=checkbox]:checked').each(function() {
    selectedBrands.push($(this).attr('id'));
  });
  
// 가격에서 ₩ 기호 제거
  var minPrice = $("#minamount").val().replace('₩', ''); 
  var maxPrice = $("#maxamount").val().replace('₩', '');

  var sendData = {};

  if (selectedBrands.length > 0) {
    sendData.selectedBrands = selectedBrands;
  }

  if (minPrice && maxPrice) {
    sendData.minPrice = minPrice;
    sendData.maxPrice = maxPrice;
  }

  $.ajax({
    type: "POST",
    url: "searchCategory.do",
    data: sendData,
    dataType: "JSON",
    success: function(response) {
    
      // 서버에서 받은 제품 리스트
      var goodsList = response;
      
      // 제품 리스트를 넣을 위치
      var productListDiv = $(".product-list .row");

      // 초기화
      productListDiv.empty();

      // 받아온 제품 리스트를 화면에 출력
      $.each(goodsList, function(index, list) {
        var productItem =
          `<div class="col-lg-4 col-sm-6">
            <div class="product-item">
              <div class="pi-pic">
                <a href="product.do?g_id=${list.g_id }">
                  <img src="../img/products/${list.g_rimg1}" alt="">
                  <div class="sale pp-sale">Sale</div>
                  <div class="icon">
                    <i class="icon_heart_alt"></i>
                  </div>
                </a>
                <ul>
                  <li class="w-icon active"><a href="#"><i class="icon_bag_alt"></i></a></li>
                  <li class="quick-view"><a href="#">+ Quick View</a></li>
                  <li class="w-icon"><a href="#"><i class="fa fa-random"></i></a></li>
                </ul>
              </div>
              <div class="pi-text">
                <a href="#">
                  <h5>${list.g_name}</h5>
                </a>
                <div class="product-price">
                  <span>$35.00</span> $14.00
                </div>
              </div>
            </div>
          </div>`;

        productListDiv.append(productItem);
      });
    },
    error: function() {
      console.error("출력Error");
    }
  });
}

// 카테고리 클릭 
$('.filter-catagories a').click(function(e) {
  e.preventDefault();
  var category = $(this).text();
  sendCategoryToController(category);
});

// 검색 버튼 클릭 
$('.filter-btn').click(function(e) {
  e.preventDefault();
  sendBrandAndPriceToController();
});
