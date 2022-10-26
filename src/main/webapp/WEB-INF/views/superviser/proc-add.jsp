<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
        *{
            margin: 0 auto;
            padding: 0;
            box-sizing: border-box;

        }
        #container {
            display: flex;
            align-items: center;
            text-align: center;
            justify-content: center;
            border: 1px solid black ;
            width: 100vw;
            height: 100vh;
        }

        #add-box {
            width: 35%;
            line-height: 4rem;
        }

        input {
            height: 30px;;
        }
        #no1 , #no2, #no3, #no4, #no5, #no6 {
            display: flex;
            width: 80%;
        } 

        #pr_name1, #pr_shop1, #pr_thum1, #pr_content1, #pr_cate1, #pr_price1 {
            width: 50%;
        }

        h3 {
            width: 100%;
        }

        option {
            width: 2000px;
        }

        #proc_category{
            width: 100%;
            margin-right: 0.7rem;
            height: 30px;
        }

        button {
            width : 15rem;
            height: 30px;
            border: none;
            border-radius: 5px;
            background-color: black;
            color: yellow;
        }

    </style>

<title>Insert title here</title>
</head>
<body>
	<div id="container">
		<form id="add-box" action="${pageContext.request.contextPath}/">
			<h1>상품 등록 할 거 지 롱 메 롱</h1>
			<div id="no1">
				<div id="pr_name1">
					<h3>상품 이름</h3>
				</div>
				<div id="pr_name2">
					<input type="text" name="proc_name" id="proc_name">
				</div>
			</div>
			<div id="no2">
				<div id="pr_shop1">
					<h3>업체 이름</h3>
				</div>
				<div id="pr_shop2">
					<input type="text" name="proc_shop" id="proc_shop">
				</div>
			</div>
			<div id="no3">
				<div id="pr_thum1">
					<h3>상품 썸네일</h3>
				</div>
				<div id="pr_thum2">
					<input type="text" name="proc_image" id="proc_image">
				</div>
			</div>
			<div id="no4">
				<div id="pr_content1">
					<h3>상품 이미지</h3>
				</div>
				<div id="pr_content2">
					<input type="text" name="proc_content" id="proc_content">
				</div>
			</div>
			<div id="no5">
				<div id="pr_cate1">
					<h3>카테고리</h3>
				</div>
				<div id="pr_cate2">
					<select id="proc_category" name="proc_category">
						<option value="choice">카테고리를 선택하세요</option>
						<option value="line">-----------------</option>
						<option value="home">Home</option>
						<option value="Walk">Walk</option>
						<option value="Carrier">Carrier</option>
						<option value="Clothes">Clothes</option>
						<option value="Dining">Dining</option>
						<option value="Grooming">Grooming</option>
						<option value="Toy">Toy</option>
						<option value="Food">Food</option>
					</select>
				</div>
			</div>
			<div id="no6">
				<div id="pr_price1">
					<h3>상품 가격</h3>
				</div>
				<div id="pr_price2">
					<input type="text" name="proc_price" name="proc_price">
				</div>
			</div>
			<div>
				<button>상품 등록 할 거 지롱 메롱 바보들아</button>
			</div>
		</form>
	</div>

	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
	<script>
		$("select option[value*='choice']").prop('disabled', true);
		$("select option[value*='line']").prop('disabled', true);
	</script>


</body>
</html>