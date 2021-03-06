
<%@ page contentType="text/html; charset=utf-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><s:property value="configBean.getSiteName()"/></title>
<style>
.cartHeaders div span{
			color:#333;
		}
		.simpleCart_items{
			float:left;
			clear:left;
			width:100%;
			margin:5px;
		}
		.itemContainer{
			clear:both;
			width:100%;
			padding:3px;
			font-size:12px;
			line-height:25px;
			height:10px;
		}
		.itemImage{
			float:left;
			width:80px;
			
			
		}
		.itemImage img{
			vertical-align:middle;
			padding:5px;
			
		}
		.itemName{
			float:left;
			vertical-align:middle;
			width:160px;
			color:#666666;
		}
		.itemPrice {
			float:left;
			width:55px;
			color:#ff0000;
		}
		.itemQuantity span{
			float:left;
			width:60px;
			vertical-align:center;
			text-align:center;
		}
		.itemQuantity input{
			width:20px;
			border:1px solid #ccc;
			padding:3px 2px;
			margin:0 auto;
			display:block;
			font-size:11px;
		}
		.itemTotal{
			float:left;
			color:#c23f26;
			text-align:center;
			width:45px;
		}
		.totalRow{
			clear:both;
			float:left;
			text-align:left;
			margin-top:5px;
		}
		.totalItems{
			float:left;
			width:450px;
			margin-left:5px;
			text-align:center;
		}
		.totalPrice{
			float:left;
			color:#FF0000;
			text-shadow:#CCCCCC;
			text-align:left;
		}
		.nxiaoji{width:50px; color:#FF0000;
		font-size:12px;}
		#backgroundPopup{
display:none;
position:fixed;
_position:absolute; /* hack for internet explorer 6*/
height:100%;
width:100%;
top:0;
left:0;
background:#000000;
border:1px solid #cecece;
z-index:1;
}
#popupContact{
display:none;
position:fixed;
_position:absolute; /* hack for internet explorer 6*/
height:384px;
width:408px;
background:#FFFFFF;
border:2px solid #cecece;
z-index:2;
padding:12px;
font-size:13px;
}
#popupContact h1{
text-align:left;
color:#6FA5FD;
font-size:22px;
font-weight:700;
border-bottom:1px dotted #D3D3D3;
padding-bottom:2px;
margin-bottom:20px;
}
#popupContactClose{
font-size:14px;
line-height:14px;
right:6px;
top:4px;
position:absolute;
color:#6fa5fd;
font-weight:700;
display:block;
}

</style>


</head>

<body>
<s:include value="top.jsp"/>
<br>
<table width="920" class="bigbord" border="0" align="center" cellpadding="0" cellspacing="0">
  <form action="productSearchAPI.jspx" method="post" name="from" id="from"> <tr>
  
  <td height="50" align="center">
    <s:property escape="false" value="getClassAll(1,0)"/>    <!--列举分类标签-->  最高价：
      <INPUT value=0  maxlength=5 onKeyUp="this.value=this.value.replace(/\D/g,'')"  name=minPrice id=minPrice size="3" />
         <select onChange="document.getElementById('minPrice').value=this.value">
           <option value="0">0</option>
           <option value="10">10</option>
           <option value="15">15</option>
           <option value="20">20</option>
           <option value="25">25</option>
           <option value="40">40</option>
           <option value="100">100</option><option value="150">150</option>
           <option value="200">200</option>
        </select>
         最低价：
         <INPUT   maxlength=7 onKeyUp="this.value=this.value.replace(/\D/g,'')" name=maxPrice id=maxPrice size="3" value="5000" />      
        <select onChange="document.getElementById('maxPrice').value=this.value">
           <option value="500">500</option>
           <option value="600">600</option>
           <option value="650">650</option>
           <option value="700">700</option>
           <option value="750">750</option>
           <option value="800">800</option>
           <option value="850">850</option><option value="950">950</option>
           <option value="1000">1000</option>
           <option value="5000">5000</option>
        </select>
      名称：
      <input  name=productName  id=productName3 style="border:1px #663300 outset; height:20px;" size="10"/>
品牌：
<input  name=product.tradeMarkName id=tradeMarkName style="border:1px #663300 outset;" size="10"/>
<input type="submit" value="搜索" /></td>
    </tr> 
  <input type="hidden" name="linkurl" value="result.jsp" />
  </form>
</table>

<br>

<div align="center" >
<table width="920" border="0" cellspacing="1" cellpadding="0" >
            <tr>
              <td height="20" align="center" >我的购物车</td>
            </tr>
            <tr>
              <td align="left"  >
                <div class="simpleCart_items" >				</div>
                
           
              
              </td>
            </tr>
            <tr>
              <td align="right">    <div class="checkoutEmptyLinks">
				<!--Here's the Links to Checkout and Empty Cart-->
				<a href="#" class="simpleCart_empty"><img border="0" src="images/btn_checkout_qingkong.gif"></a>
				
                <s:if test="#session.user==null">
               <a href="../user/index.jspx" >
               
               <img border="0"   src="images/btn_checkout.gif">
               </a>
               
                </s:if>
                <s:else>
                  <a href="#" class="simpleCart_checkout">
                <img border="0" src="images/btn_checkout.gif">
                </a>
                </s:else>
              
                
                
                
			  </div>          </td>
            </tr>
        </table>
</div>

<s:include value="buttom.jsp"/>

</body>
</html>
