<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>결제 성공</title>
</head>
<body>

    <script type="text/javascript">
    	alert('${name}님! 후원이 성공적으로 완료되었습니다!\n주문번호: ${order.orderId}\n후원금액: ${order.donationPrice} 원');
    	console.log('${petId}');
    	location.href='/pet/detail?petId=${petId}';
    </script>
    
</body>
</html>