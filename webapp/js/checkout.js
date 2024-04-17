/**
 * 23-11-01
 */
function checkAll(){
	// 체크되었으면 true, 아니면 false
	let isChecked = document.getElementById("checkAll").checked;
	
	// 체크된 상품들
	let chks = document.getElementsByName("chk");
	
	for(let i=0; i<chks.length;i++){
		chks[i].checked = isChecked;
	}
}

function prodDel(){
	let chks = document.getElementsByName("chk");
	
	let pnumStr = "";
	let separator = false;
	
	for(let i=0; i<chks.length;i++){		
		if(chks[i].checked){
			// 최초에는 "/" 넣지 않기위한 조건
			if(separator){
				pnumStr = pnumStr +"/";
			}
			// "3/5/6" 처럼 문자열 만들기
			pnumStr = pnumStr + chks[i].value;
			//console.log(pnum);
			separator = true;
		}
	}
	if(!pnumStr){
		alert("삭제할 상품을 체크하세요!!");
		return;
	}	
	console.log(pnumStr);	
	// 삭제할 상품 번호 문자열 pnumStr을 input delPnums에 저장
	document.checkForm.delPnums.value=pnumStr;
	
	let res = confirm("삭제 하시겠습니까?");
	// 확인를 누르면 리턴값이 true
	if(res){ 
		document.checkForm.submit();
	}
}

function usePoint(obj, point, price){
	let pointElem = document.getElementById("point");	
	let tot_amount = document.getElementById("cartTotPrice");
	
	if(obj.checked){
		pointElem.value = point.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
										// 정규표현식을 이용해서 천단위로 변경
		tot_amount.innerText = (price - point).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}else{
		pointElem.value = "";
		tot_amount.innerText = price.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}	
}

// 문자 입력 방지(숫자만 입력)
function removeChar(e){				// 숫자가 아닌 모든 문자는 ''로 교체
	e.target.value = e.target.value.replace(/[^0-9]/g, '');
}

// 지불 방법 선택
function selPayment(){
	let payArr = document.getElementsByName("payment");
	
	for(let i = 0; i<payArr.length; i++){
		if(payArr[i].checked){
			document.getElementById(payArr[i].value).style.display="block";
		}else{
			document.getElementById(payArr[i].value).style.display="none";
		}
	}
}

 