
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://kit.fontawesome.com/4b992414b9.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Zilla+Slab&display=swap" rel="stylesheet">
    <script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
     <%-- <script src="${pageContext.request.contextPath}/hotel/jquery-3.6.1.min.js"></script> --%>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/hotel/header.css?11">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/final/css/frame/main/footer.css">
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=38c22d800f1aec1bb2343f51973224a6&libraries=services"></script>
    <title>Document</title>
    <style>
        
        html,
        body,
        header,
        main,
        footer,
        section,
        h1,
        h2,
        h3,
        h4,
        h5,
        h6,
        p,
        a,
        ul,
        li,
        nav {
            font-family: 'Noto Sans KR', sans-serif;
            margin: 0;
            padding: 0;
        }

        body {
            position: relative;
            height: 100%;
        }

        
        #container {
            position: relative;
            width: 100%;
            height: 100%;
            display: grid;
            grid-template-rows: 70px 1fr 70px;
            grid-template-columns: 1fr;
        }

       
        main {
            width: 100%;
            background-color: #EDEDE9;
            min-height: 86vh;

        }

        section {
            width: 100vw;
            height: 100%;
        }

        /* img */
        #hotel_img {
            display: grid;
            grid-template-rows: repeat(5, 1fr);
            grid-template-columns: repeat(3, 1fr);
            grid-template-areas: 'img1 img1 img2'
                'img1 img1 img2'
                'img1 img1 img5'
                'img3 img4 img5'
                'img3 img4 img5';
            gap: 10px;
            height: inherit;
            width: 90%;
            margin: 10px auto;
        }

        #img1 {
            grid-area: img1;
            background-color: red;
        }

        img {
            size: inherit;
        }

        #img2 {
            grid-area: img2;
            background-color: yellow;
        }

        #img3 {
            grid-area: img3;
            background-color: green;
        }

        #img4 {
            grid-area: img4;
            background-color: blue;
        }

        #img5 {
            grid-area: img5;
            background-color: purple;
        }

        /* .date {
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: center
        }
 */
        .list {
        	        width: 65%;
    
    display: flex;
    flex-direction: column;
    height: 100%;
    gap: 4vh;
    padding: 5px 0px;
        }
        
        
        .option_list {
            width: 48%;
            margin-left:52%;
            display: flex;
            flex-direction: row;
          

        }
		
        .option_list {
            display: none;
            
        }

        .inner1 {
            width: 30%;
            

        }

        .inner1>img {
            width: 100%;
    height: 100%;
    object-fit: cover;
        }

        .inner2 {
            width: 65%;
            padding-left: 20px;
                display: flex;
    flex-direction: column;
    justify-content: space-between
        }
        
        .inner2>h2 {
        margin-bottom: 1vh;
    font-size: 2rem;
        }

        .innerbtn {
            display: flex;
            flex-direction: row;
            align-items: center;
			min-width:165px;
            width: 25%;

        }

        .innerbtn>button {
               border: 2px solid #000000de;
    font-size: 15px;
    color: #000000de;
    width: 100%;
    height: 40%;
    font-weight: 700;
    gap: 5%;
    background-color: white;
        }

		.innera {
		    width: 100%;
    height: 40%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: #000000de;
		
		}
		
		.innera>a {
		color: white;
		}
		

        table {
            width: 100%;
            border-collapse: collapse;
        }

        .intr {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            padding: 5px 20px;
        }

        .intr_a {
            display: flex;
            flex-direction: row;
			width: 80%;
    justify-content: space-between;
        }
        
        .intr_a>a{
        	font-size: 14px;
    text-decoration: underline;
        }

        td {
            border: 1px solid black;
        }

        .td1 {
            width: 80%;
        }

        .td2 {
            text-align: center;
        }

  
	 .date {
            width: 90%;
            margin: 0 auto;
            display: flex;
            align-items: center;
            justify-content: space-around;
            height: 5vh;
            padding: 1vh 0;
        }

        

        .indate {
            display: flex;
            flex-direction: row;
            justify-content: space-around;
            width: fit-content;
            align-items: center;
            gap: 15px;
        }

        #datepicker1 {
            width: fit-content;
            border: 0;
            background-color: #edede9;
            font-size: 17px;
        }

        /* #selecbtn {
            height: 70%;
            border: 0;
            background-color: black;
            width: 5vw;
            color: white;
        } */
	
		.selecbtn {
	height: 70%;
	border: 0;
	background-color: black;
	width: 5vw;
	color: white !important;
	text-align: center;
}
.isbx-toggle {
	display: block !important;
}
/*  #ioutbox {
           display: none;
            width: 90%;
            margin: 0 auto;
            padding-bottom: 1vh;
        }
 */
        .outbox {
            display: block !important;
            width: 90%;
            margin: 0 auto;
        }

        #bxform>label {
            padding: 0px 5px;
        }
        
        .clicked {
        	display : block !important;
        	display : flex !important;

        }
        #isbx {
            display: flex;
            flex-direction: row;
            justify-content: left;
            width: 70%;
            gap: 4vw;
            margin: 0 auto;
            display:none;

        }
        #selectp{
        	cursor:default;
        }
        
        .hotelbox{
            display: flex;
    flex-direction: row;
    justify-content: space-around;
    margin: 25px auto;
    width: 65%;
        height: 30vh;
        }
        
        .listbox{
        display: flex;
    flex-direction: row;
    justify-content: space-between;
        height: 35%;
        }
        
        .modal, .mapmodal{
            display: flex;
            justify-content: center;
            align-items: center;
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;

        }

        .modalback, .mapmodalback {
            background-color: rgba(0, 0, 0, 0.4);
            width: 100%;
            height: 100%;
            position: absolute;
        }

        .modalcont {
            text-align: center;
            position: relative;
            background-color: white;
            border-radius: 10px;
            top: 0;
            padding: 10px 25px;
            width: 60%;
            height: 70%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
			margin: 8% auto;
        }
        
        .mapmodalcont {
            text-align: center;
            position: relative;
            
            border-radius: 10px;
            top: 0;
            
            width: 40%;
    height: 50%;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
			margin: 12% auto;
        }

        .hidden {
            display: none;
        }

        .detail{
           border: none;
    background-color: #edede9;
    cursor: pointer;
    border-bottom: 1px solid black;

        }
        
        .close {
           border: none;
    background-color: white;
    cursor: pointer;
    /* border-bottom: 1px solid black; */
    font-weight: bold;
    margin-left: 95%;

    font-size: 20px;

        }
        
        .mapclose {
           border: none;
    background-color:rgb(0 0 0 / 0%);
    color:white;
    cursor: pointer;
    /* border-bottom: 1px solid black; */
    font-weight: bold;
    margin-left: 90%;

    font-size: 20px;
        }

        .simg {
            position: absolute;
            width: 100%;
    height: 100%;

            transition: opacity 0.5s ease-in-out;
            opacity: 0;

            filter: alpha(opacity=0.5);
            object-fit: cover;
        }

        .simg:first-child {
            /* display: block; */
            opacity: 1;
        }

        .simg>img {
                width: 80%;
    			height: 85%;
            object-fit: contain;
        }
        
        .album{
        	display: flex;
    flex-direction: row;
    gap: 1vw;
    align-items: center;
    height: 90%;
    width:100%
        }
        
        .prev,.next {
        background-color: white;
    z-index: 3;
    border: none;
    height: 20%;
    width:45px;
    opacity: 0.2;
    
        }
        
        
        
        .imgBox{
        	width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
        }
        button>svg{
        height : 30px;
        width : 30px;
        }
        
        td {
        border : none;
        border-bottom : 1px dotted black;
        }
        
        .mapbtn{
        width: fit-content;
    background: none;
    border: none;
    border-bottom: 1px solid black;
    cursor: pointer;
        }
    </style>
</head>

<body>
    <div id="container">
        <header>
           <%@ include file="../frame/hotel/header.jsp" %>
        </header>
        
        <main>
            <section>
            	<div class="date">
					<div class="indate">
						<p id="selectp">????????? ?????????????????? </p>

						<!-- <input type="text" placeholder="?????????" id="choicehotel"> -->
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-search" viewBox="0 0 16 16"
							id="svg">
                            <path
								d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                        </svg>
					</div>
					<input type="text" id="datepicker1" name="dates" readonly>
					<!-- <button class="selecbtn">??????</button> -->
					<a href="#" class="selecbtn" id="asearchbtn">??????</a>
				</div>
				
				
				<!-- <div class="coutbox" id="ioutbox"> -->
					<div id="isbx" class="csbx">
						<p>????????????</p>
						<form action="" id="bxform">
						<input type="checkbox" name="cate" id="l1" class="allseo" value="??????"><label for="l1">????????????</label> 
						<input type="checkbox" name="cate" id="l2" class="seo" value="?????????"><label for="l2">?????????</label>
						<input type="checkbox" name="cate" id="l3" class="seo" value="?????????"><label for="l3">?????????</label> 
						<input type="checkbox" name="cate" id="l4" class="seo" value="?????????"><label for="l4">?????????</label>
						<input type="checkbox" name="cate" id="l5" class="seo" value="?????????"><label for="l5">?????????</label>
						<input type="checkbox" name="cate" id="l6" class="seo" value="?????????"><label for="l6">?????????</label>
						<input type="checkbox" name="cate" id="l7" class="seo" value="?????????"><label for="l7">?????????</label><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox" name="cate" id="l8" class="seo" value="?????????" ><label for="l8">?????????</label>
						<input type="checkbox" name="cate" id="l9" class="seo" value="?????????"><label for="l9">?????????</label>
						<input type="checkbox" name="cate" id="l10" class="seo" value="?????????"><label for="l10">?????????</label> 
						<input type="checkbox" name="cate" id="l11" class="seo" value="?????????"><label for="l11">?????????</label>
						<input type="checkbox" name="cate" id="l12" class="seo" value="????????????"><label for="l12">????????????</label>
						<input type="checkbox" name="cate" id="l13" class="seo" value="????????????"><label for="l13">????????????</label>
						<input type="checkbox" name="cate" id="l14" class="seo" value="?????????"><label for="l14">?????????</label> <br />
						<input type="checkbox" name="cate" id="l20" class="allgyeong" value="??????"><label for="l20">????????????</label> 
						<input type="checkbox" name="cate" id="l21" class="gyeong" value="?????????"><label for="l21">?????????</label>
						<input type="checkbox" name="cate" id="l22" class="gyeong" value="????????????"><label for="l22">????????????</label> 
						<input type="checkbox" name="cate" id="l23" class="gyeong" value="????????????"><label for="l23">????????????</label>
						<input type="checkbox" name="cate" id="l24" class="gyeong" value="?????????"><label for="l24">?????????</label>
						<input type="checkbox" name="cate" id="l25" class="gyeong" value="?????????"><label for="l25">?????????</label><br />
						<input type="checkbox" name="cate" id="l15" class="allin" value="??????"><label for="l15">????????????</label>
						<input type="checkbox" name="cate" id="l16" class="in" value="?????????"><label for="l16">?????????</label> 
						<input type="checkbox" name="cate" id="l17" class="in" value="?????????"><label for="l17">?????????</label> 
						<input type="checkbox" name="cate" id="l18" class="in" value="?????????"><label for="l18">?????????</label>
						<input type="checkbox" name="cate" id="l19" class="in" value="??????"><label for="l19">??????</label> <br />
						<input type="checkbox" name="cate" id="l26" class="allchung" value="??????"><label for="l26">????????????</label>
						<input type="checkbox" name="cate" id="l27" class="chung" value="?????????"><label for="l27">?????????</label>
						<input type="checkbox" name="cate" id="l28" class="chung" value="?????????"><label for="l28">?????????</label>
						<input type="checkbox" name="cate" id="l29" class="chung" value="?????????"><label for="l29">?????????</label>
						<input type="checkbox" name="cate" id="l30" class="chung" value="?????????"><label for="l30">?????????</label> 
						</form>
					</div>
				<!-- </div> -->
				<script type="text/javascript">

				window.addEventListener('DOMContentLoaded', function(){
					
					//???????????? ?????? ??????
					
					
					let now = new Date();
					let tom = new Date();
					
					tom.setDate(tom.getDate()+1);
					
					
					$('input[name="dates"]').daterangepicker({
						 "startDate": "${startdate}",
                            //????????????
                         "endDate": "${enddate}",
                            //????????????
                         "minDate": now,
                            //??????????????????
                         "opens": "center",
 
                         locale: {
                           	//?????? ??????
                            "separator": " ~ ",
                            	//?????????
                           	"applyLabel": "??????",
                            	 //?????? ??????
                            "cancelLabel": "??????",
                            format: "YYYY-MM-DD",
                            daysOfWeek: ["???", "???", "???", "???", "???", "???", "???"],
                            monthNames: ["1???", "2???", "3???", "4???", "5???", "6???", "7???", "8???", "9???", "10???", "11???", "12???"]
                        }
                    });
					
					$('input[name="dates"]').on('show.daterangepicker', function() {
						$(".cancelBtn").css("float",??"right");
                 	 	$(".cancelBtn").css("background-color", "white");
                 	 	$(".cancelBtn").css("color","black");
                 	 	$(".applyBtn").css("background-color", "black");
                 	 	$(".applyBtn").css("color","white");
                 		$(".cancelBtn, .applyBtn").css("border","1px solid black");
                 	 	$(".cancelBtn, .applyBtn").css("cursor","pointer");
                 		$(".cancelBtn, .applyBtn").css("width", "60px");
					});
					var startdate = null;
					var enddate = null;
					
					
					$('input[name="dates"]').on('apply.daterangepicker', function(ev, picker) {
						 //datepicker?????? ??????????????? ???????????? ???
						 startdate = picker.startDate.format('YYYY-MM-DD');
						 enddate = picker.endDate.format('YYYY-MM-DD');
						
					});
					
					
					
					/* console.log("?????????"+startdate);
					console.log("??????"+enddate); */
			
                    
                    let cateArr = [];
					let cateArr2 = [];
	        
					
					//????????? ?????? ???????????? ?????? ??????????????? ????????????
					$("#asearchbtn").click(function(){
						
						 $('input[name="cate"]:checked').each(function(){
								var cate=$(this).val();
								cateArr.push(cate);
								cateArr2 = cateArr.slice(1);
							});
						 
						 console.log("cateArr"+cateArr);
		                 console.log("cateArr2"+cateArr2);
						
					if(Array.isArray(cateArr) && cateArr.length === 0) {
						$("#asearchbtn").click(function(){
							$("#selectp").css("color","red");
							$("#selectp").css("fontWeight","900");
							$("#isbx").css("display", "block");
							$("#isbx").css("display", "flex");
						});
					} else { //???????????? ????????? ??????
						
						
							$("#selectp").css("color","black");
							$("#isbx").css("display", "none");
					 		if(startdate!=null){ // ?????????????????????
					 			console.log("start" + startdate);
					 			console.log("end"+enddate);
					 			if($('#l1').is(':checked') || $('#l20').is(':checked') || $('#l15').is(':checked') || $('#26').is(':checked')) {
					 				console.log("???????????? ????????? all??????");
					 				console.log("cateArr2"+cateArr2);
					 	
									$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr2);
					 			} else {
					 				console.log("???????????? ????????? all ?????????");
					 				console.log("cateArr2"+cateArr);
					 		
					 				$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/"+startdate+"/"+enddate+"/"+cateArr);
					 			}
					 		} else { //?????? ?????? ????????? ??? ?????? ????????? ?????????
					 			
					 			
					 			if($('#l1').is(':checked') || $('#l20').is(':checked') || $('#l15').is(':checked') || $('#26').is(':checked')) {
					 				console.log("???????????? ??? ????????? all??????");
					 				console.log("cateArr2"+cateArr2);
					 			
									$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/${startdate}/${enddate}/"+cateArr2);
					 			} else {
					 				console.log("???????????? ??? ????????? all?????????");
					 				console.log("cateArr2"+cateArr);
					 			
					 				$(".selecbtn").attr("href","${pageContext.request.contextPath}/golist/${startdate}/${enddate}/"+cateArr);
					 			}
					 		}
						
						}
					
					});	
					
					
					
					 
				});		
                   
	
                </script>
          <script type="text/javascript">
				$('.allseo').click(function(){
                 	if($('.allseo').is(':checked')){
                 		$('.seo').prop("checked",true);
                 	} else {
                 		$('.seo').prop("checked",false);
                 	};
                 });
                 
                 $('.allin').click(function(){
                 	if($('.allin').is(':checked')){
                 		$('.in').prop("checked",true);
                 	} else {
                 		$('.in').prop("checked",false);
                 	};
                 });
                 
                 $('.allgyeong').click(function(){
                 	if($('.allgyeong').is(':checked')){
                 		$('.gyeong').prop("checked",true);
                 	} else {
                 		$('.gyeong').prop("checked",false);
                 	};
                 });
                 
                 $('.seo').click(function(){
                 	if($('.allseo').is(':checked')){
                 		$('.allseo').prop("checked", false);
                 	};
                 	
                 	if($('.seo:checked').length == $('.seo').length){
                     	$('.allseo').prop("checked",true);
                     };
                 });
                 
                 $('.in').click(function(){
                 	if($('.allin').is(':checked')){
                 		$('.allin').prop("checked", false);
                 	};
                 	
                 	if($('.in:checked').length == $('.in').length){
                     	$('.allin').prop("checked",true);
                     };
                 });
                 
                 $('.gyeong').click(function(){
                 	if($('.allgyeong').is(':checked')){
                 		$('.allgyeong').prop("checked", false);
                 	};
                 	
                 	if($('.gyeong:checked').length == $('.gyeong').length){
                     	$('.allgyeong').prop("checked",true);
                     };
                 });
				
				</script>
                <script>
                    var p = document.getElementById("selectp");
                    var svg = document.getElementById("svg");
                    var iob = document.getElementById("ioutbox");
					var isbx = document.getElementById("isbx");
                    var date = document.getElementById("datepicker1");
					var div = document.getElementById("datepicker1").firstChild;
                    
                    p.addEventListener("click", function () {
                    	isbx.classList.toggle("clicked");    
                    });
                    
                    svg.addEventListener("click", function () {
                    	isbx.classList.toggle("clicked");
                    	
                    });
                    
                    date.addEventListener("click", function () {
                    	
                    	if(isbx.className="clicked"){
                    		isbx.classList.toggle("clicked");
                    	}
                    });
                    

                </script>
                 <c:forEach var="item" items="${hotel}" varStatus="status">
    				<div class="hotelbox">
        				<div id="inner1" class="inner1 inner">
            				<img src="${pageContext.request.contextPath}/${item.hotelThum }" alt="">
        				</div>

        				<div class="list">
            				<div class="listbox">
                				<div id="inner2" class="inner2 inner">
                    				<p>${item.hotelOpt }</p>
                    				<h2 class="mapname" class="${item.hotelName }">${item.hotelName }</h2>
                    				<p class="hotelAddr">${item.hotelAddr}</p>
                    				<button class="mapbtn ${item.hotelAddr}" id="${item.hotelAddr}">????????????</button>
                    				<!-- <p>2021.12.11~2023.08.31</p> -->
                    				<%-- <h1 class="${item.hotelId}" id="h1">${item.hotelId}</h1> --%>
                    				<!-- <h1>??????</h1> -->
                    				<input type="hidden" name="hidden" id="hidden" value="${item.hotelId }" />
                				</div>
                				
                			
                				<div class="innerbtn">
                    				<button class="realbtn" id="btn${status.index}">????????????</button>
                    				<div class="innera">
                    					<a href="${pageContext.request.contextPath}/godetail/${item.hotelId}/${startdate}/${enddate}">????????????</a>
                    					
                    					<!-- <a href="#" id="adetail">????????????</a> -->
                    				</div>
                				</div>
            				</div>	
            				<div class="option_list" id="${item.hotelId}">
								<table>
                    				<c:forEach var="roomitem" items="${room}">
                        				<c:if test="${item.hotelId == roomitem.hotelId}">
                            				<tr>
                                				<td class="td1">
                                    				<div class="intr">
                                        				<div class="intr_room">
                                            				<P>${roomitem.roomType }???</P>
                                        				</div>
                                        				<div class="intr_a">
                                            				<button class="detail ${roomitem.roomType }">??????????????????</button>
                                            				
															<p>
                                                				<fmt:formatNumber type="currency" value="${roomitem.roomPrice}" />
                                            				</p>
                                        				</div>
                                        			</div>
                                				</td>
                                				
                            				</tr>
                        				</c:if>
		                    		</c:forEach>
		        		        </table>
        		    		</div>
        		    		
        				</div>
					</div>
				</c:forEach>
				
						<c:forEach var="roomimgitem" items="${room}" varStatus="status">
							<div class="modal hidden modal${status.index}" id = "${status.index}">
                    			<div class="modalback"></div>
								<div class="modalcont">
                        			<button class="close ">
                        				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  											<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
										</svg>
                        			</button>
                        			<div class="album">
                            			<button class="prev prev${status.index}" style="z-index: 3;" >
                            				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-left" viewBox="0 0 16 16">
  												<path fill-rule="evenodd" d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z"/>
											</svg>
										</button>
                            			<!-- ????????? ???????????? -->
                            			<div class="imgBox imgBox${status.index}" >
                                		<!-- free url ?????? -->
                                				<c:forEach var="roomimg" items="${roomimg}" varStatus = "status1">
                                					<c:if test="${roomimgitem.roomType == roomimg.roomType && roomimgitem.hotelId == roomimg.hotelId }">
                                						<div class="simg simg${status.index} on${status.index} on"><img src="${pageContext.request.contextPath}/${roomimg.roomImg }" alt=""></div>
                                					</c:if>
                                				</c:forEach>
                                				 
                                			</div>
                            			<button class="next next${status.index}" style="z-index: 3;" >
                            				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-right" viewBox="0 0 16 16">
  												<path fill-rule="evenodd" d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z"/>
											</svg>
										</button>
                        			</div>
                    			</div>
                			</div>
						</c:forEach>
                			<div class="mapmodal hidden">
                    			<div class="mapmodalback"></div>
								<div class="mapmodalcont">
								
									<button class="mapclose">
                        				<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
  											<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
										</svg>
                        			</button>
                        			<div id="map"style="width:100%;height:100%;margin:0 auto;">
                        			</div>	
                        		</div>
                			</div>
                			
            </section>
       
                 
        </main>

        <footer>
           <%@ include file="../frame/main/footer.jsp" %>
        </footer>
    </div>
    
        <script>
        window.addEventListener('DOMContentLoaded', function () {
        	
        	//????????? ?????????
        	let btn = document.getElementsByClassName("realbtn");
            for(let i = 0 ; i < btn.length ; i++){
            	btn[i].addEventListener("click",function(){
            		$(".option_list").eq(i).slideToggle();	
            	});
            };
        	
            let detailbtn = document.getElementsByClassName("detail");
            let closebtn = document.getElementsByClassName("close");
           let mbackbtn =  document.getElementsByClassName("modalback");
            
            for(let i = 0 ; i < detailbtn.length ; i++){
            	detailbtn[i].addEventListener("click",function(){
            		$(".modal").eq(i).toggle();	
            	});
            	closebtn[i].addEventListener("click",function(){
            		$(".modal").eq(i).toggle();
            	});
            	mbackbtn[i].addEventListener("click",function(){
            		$(".modal").eq(i).toggle();	
            	});
            };
            
            /* $(".detail, .close, .modalback").click(function(){
                $(".modal").toggle();
            })
 */
 
//????????? ??? ?????? ?????????
let modalbtn=  document.getElementsByClassName("modal");
let prevbtn = document.getElementsByClassName("prev");
let nextbtn = document.getElementsByClassName("next");
for(let i = 0 ; i < modalbtn.length ; i++){
	prevbtn[i].addEventListener("click",function(e){
 /* $(".prev").eq(i).click(function (e) { */
     e.preventDefault();
	console.log(i);
     // ????????? ????????? ??????
     var imgOn = $(".imgBox").eq(i).find(".on").index();
     console.log("imgOn"+imgOn);
     // ????????? ??? ?????? 
     var imgLen = $(".imgBox").eq(i).children(".simg").length;
     console.log("imgLen"+imgLen);

     // imgBox?????? img ??? imgOn ????????? on ????????? ?????? 
     $(".imgBox").eq(i).children(".simg").eq(imgOn).removeClass("on");
     // imgBox?????? img ??? imgOn ?????? ????????? 
     $(".imgBox").eq(i).children(".simg").eq(imgOn).css("opacity", 0);

     //  ????????? ????????? ?????????????????????
     imgOn = imgOn - 1;

     if (imgOn < 0) {
         // ????????? ????????? -1??? ?????? 
         // ???????????? ??????????????? ????????????
         $(".imgBox").eq(i).children(".simg").eq(imgLen - 1).css("opacity", 1);
         $(".imgBox").eq(i).children(".simg").eq(imgLen - 1).addClass("on");
     } else {
         // ????????? ????????? -1??? ?????? ??????
        $(".imgBox").eq(i).children(".simg").eq(imgOn).css("opacity", 1);
        $(".imgBox").eq(i).children(".simg").eq(imgOn).addClass("on");
     }
		
		
 });

 nextbtn[i].addEventListener("click",function(e){
 /* $(".next").eq(i).click(function (e) { */
     e.preventDefault();
     // ?????? ?????? 
     var imgOn = $(".imgBox").eq(i).find(".on").index();
     console.log("imgOn"+imgOn);
     // ????????? ??? ?????? 
     var imgLen = $(".imgBox").eq(i).children(".simg").length;
     console.log("imgLen"+imgLen);
     // ?????? ??????
      $(".imgBox").eq(i).children(".simg").eq(imgOn).removeClass("on");
      $(".imgBox").eq(i).children(".simg").css("opacity", 0);

     // ????????? ????????? ????????? ?????? ????????? 
     imgOn = imgOn + 1;

     if (imgOn === imgLen) {
         // ????????? ????????? ??? ???????????? ??? ??????
         // ????????? ????????? ????????????
          $(".imgBox").eq(i).children(".simg").eq(0).css("opacity", 1);
          $(".imgBox").eq(i).children(".simg").eq(0).addClass("on");
     } else {
         // ?????? ????????? ?????? ?????? 
          $(".imgBox").eq(i).children(".simg").eq(imgOn).css("opacity", 1);
          $(".imgBox").eq(i).children(".simg").eq(imgOn).addClass("on");
     }
     
   
 });
}
            
          //?????? ??????
	         	$(".mapbtn, .mapclose, .mapmodalback").click(function(){
	                $(".mapmodal").toggle();
	            });
	           
	         	
	       
	        	  
	           $(".mapbtn").click(function(){
	        	   var addrid = $(this).attr('id');
	        	
	        	   console.log("??????????????????"+addrid);
	      
	        	   
	        	   var mapContainer = document.getElementById('map'), // ????????? ????????? div 
	        	    mapOption = { 
	        	        center: new kakao.maps.LatLng(33.450701, 126.570667), // ????????? ????????????
	        	        level: 3 // ????????? ?????? ??????
	        	    };

	        		// ????????? ????????? div???  ?????? ????????????  ????????? ???????????????
	        		var map = new kakao.maps.Map(mapContainer, mapOption);
	        	   
	        		// ??????-?????? ?????? ????????? ???????????????
	        		var geocoder = new kakao.maps.services.Geocoder();

	        		// ????????? ????????? ???????????????
	        		geocoder.addressSearch(addrid, function(result, status) {

	        		    // ??????????????? ????????? ??????????????? 
	        		     if (status === kakao.maps.services.Status.OK) {

	        		        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        		        // ??????????????? ?????? ????????? ????????? ???????????????
	        		        var marker = new kakao.maps.Marker({
	        		            map: map,
	        		            position: coords
	        		        });

	        		        // ?????????????????? ????????? ?????? ????????? ???????????????
	        		      /*   var infowindow = new kakao.maps.InfoWindow({
	        		            content: '<div style="width:150px;text-align:center;padding:6px 0;">????????????</div>'
	        		        });
	        		        infowindow.open(map, marker); */

	        		        // ????????? ????????? ??????????????? ?????? ????????? ??????????????????
	        		        map.setCenter(coords);
	        		    } 
	        		});
	           });
	       		
	        });
         
        
    </script>	
                				   
                		           
                				
</body>
</html>