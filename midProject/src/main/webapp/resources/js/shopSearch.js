function searchCategory(category) {
  $.ajax({
    type: "POST",									// POST방식
    url: "searchByCategory.do",			// searchByCategory.do 로 전송
    data: { c_name: category },				// 컨트롤러에서 c_name으로 , 서버에서 category로
    dataType : "JSON",							// 돌려받을 데이터타입 JSON
    success: function(response) {
		console.log(response);
    	
	  // 서버에서 받은 제품 리스트
      var goodsList = response
      ;
      // 제품 리스트를 넣을 위치
      var productListDiv = $(".product-list .row"); 

      //  초기화
      productListDiv.empty();

      // 받아온 제품 리스트를 화면에 출력
      $.each(goodsList, function(index, list) {
        var productItem =
          `<div class="col-lg-4 col-sm-6">
            <div class="product-item">
              <div class="pi-pic">
                <a href="getBoard.do?b_id=${list.g_id}">
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
