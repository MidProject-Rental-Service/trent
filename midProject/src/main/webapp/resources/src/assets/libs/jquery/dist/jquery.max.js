var jqueryScript = document.createElement('script');
jqueryScript.src = 'https://code.jquery.com/jquery-3.6.0.min.js';
jqueryScript.type = 'text/javascript';
document.head.appendChild(jqueryScript);

jqueryScript.onload = function() {
	


	{
    console.log("ee");
    var listForm = $("#listForm");

    $(".pagination_button").on("click", function(e) {

        e.preventDefault();
        
        // searchCondition 값을 가져와서 console에 출력


        var pageNum = $(this).find("a").attr("href"); // 페이지 번호 가져오기
        listForm.find("input[name='pageNum']").val(pageNum);
        listForm.submit();
    });
    }

    document.getElementById("mySelect").addEventListener("change", function() {
        var selectedValue = this.value;
        console.log("console.log : selectedValue " + selectedValue);
        document.getElementById("selectedOption").value = selectedValue;
    });
    
    
    

	// 답변하기 버튼 클릭 이벤트 처리
	$('#answer').click(function() {
	
	   alert('답변등록이 완료 되었습니다.');
	});



	// 수정하기 버튼 클릭 이벤트 처리
	$('#modify').click(function() {
	
	    alert('정보수정이 완료되었습니다.');
	});
	


	// 상품등록하기 버튼 클릭 이벤트 처리
	$('#productregister').click(function() {
	
	   alert('상품등록이 완료되었습니다.');
	});
	
	// 공급사등록하기 버튼 클릭 이벤트 처리
	$('#supplyregister').click(function() {
	
	   alert('공급사등록이 완료되었습니다.');
	});
	
	//공급사가 답변등록하면 이벤트 처리
	$('#inquiryregister').click(function() {
	
	   alert('답변등록이 완료되었습니다.');
	});	
	
	// 주소 값 분리
	// 페이지가 로드될 때 주소 필드의 내용을 읽어와서 분리
	var fullAddress = $("#sample6_address").val();
	var parts = fullAddress.split(',');
	
	// 주소 입력 필드에 주소 설정
	$("#sample6_address").val(parts[0]);
	    
	// 상세주소 입력 필드에 상세주소 설정 (필요에 따라 조건 검사)
	if (parts.length >= 1) {
	    $("#sample6_detailAddress").val(parts[1]);
	}

	
	
	
      $("#id_chk").click(function(){
         var id = $('#id').val();
         
         // AJAX를 사용하여 서버로 중복 체크 요청 보내기
          $.ajax({
              type: "POST",
              url: "/midProject/admin/idCheck.do", // 서버의 중복 체크 컨트롤러 주소
              data: { id: id }, // 아이디를 서버로 보내기
              success: function(response) {
                  if (response === "1") {
                      alert("이미 존재하는 아이디입니다.");
                      $("#submitBtn").prop('disabled', true);

                  } else if (response === "0") {
                      alert("사용 가능한 아이디입니다.");
                       // 아이디 중복 확인이 성공했으므로 제출 버튼을 활성화합니다.
                       $("#submitBtn").prop('disabled', false);
                  }
              },
              error: function() {
                  // 오류 처리
                  alert("오류가 발생했습니다.");
              }
          });
      });	
	
	


};






	function sample6_execDaumPostcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수
	
	            // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }
	
	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                // 조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("sample6_extraAddress").value = extraAddr;
	            } else {
	                document.getElementById("sample6_extraAddress").value = '';
	            }
	
	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('sample6_postcode').value = data.zonecode;
	            document.getElementById("sample6_address").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("sample6_detailAddress").focus();
	        }
	    }).open();
	}







