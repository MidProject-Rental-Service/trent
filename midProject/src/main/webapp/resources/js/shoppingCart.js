	function goBack(event) {
			event.preventDefault(); // 기본 동작을 막음
			window.history.back();
		}
		
		function cartDelete(sh_id) {
		    $.ajax({
		        type: "POST",
		        url: "cartDelete.do",
		        data: { sh_id: sh_id },
		        success: function(response) {
		            
		            console.log("카트에서 상품이 성공적으로 삭제되었습니다.");
		            $(`#product_${sh_id}`).remove(); 
 
		        },
		        error: function() {
		            
		            console.error("카트에서 상품 삭제 중 오류가 발생했습니다.");
		            
		        }
		    });
		}