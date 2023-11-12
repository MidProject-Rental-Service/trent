function formatPrice(price) {
    return price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function goBack(event) {
    event.preventDefault();
    
	location.href = document.referrer;
	

	    
    
}

function cartDelete(sh_id, price) {
	
    $.ajax({
        type: "POST",
        url: "cartDelete.do",
        data: { sh_id: sh_id },
        success: function(response) {
            console.log("카트에서 상품이 성공적으로 삭제되었습니다.");
            console.log(`#product_${sh_id}`);
            
            $(`#product_${sh_id}`).remove();
            
            if (response === "success") {
                var totalCnt = parseInt($(".subtotal span").text(), 10);
				var totalPriceMatch = $(".cart-total span").text().match(/\d+,\d+/);
				
				if (totalPriceMatch) {
				    var totalPriceString = totalPriceMatch[0];
				    var totalPrice = parseInt(totalPriceString.replace(/,/g, ''), 10);
				    console.log("totalPrice:", totalPrice);
				} else {
				    console.error("totalPrice error");
				}
				
                // price가 문자열이면 ,를 제거하고 정수로 변환
                
                if (typeof price === 'string') {
                    price = parseInt(price.replace(/[^0-9]/g, ''), 10);
                }

                totalCnt--;
                totalPrice -= price;

                $(".subtotal span").text(totalCnt);
                $(".cart-total span").text("월"+ formatPrice(totalPrice) +"원"); 
            }
        },
        error: function() {
            console.error("카트에서 상품 삭제 중 오류가 발생했습니다.");
        }
    });
}


