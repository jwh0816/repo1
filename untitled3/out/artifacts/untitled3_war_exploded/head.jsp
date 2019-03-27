<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/3/4
  Time: 17:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script>
<script type="text/javascript">
    jQuery(function () {
        jQuery.ajax({
            url: "gouwuche",
            type: "post",
            dataType: "json",
            success: function (data) {
                var str = "";
                var gongji=0;
                jQuery.each(data, function (idx,item) {
                    var xiaoji=0;
                    str+="<li>"+"<div class='img'>" + "<a href='#'>"+"<img src='" +item.goods.img_path + "' width='58' height='58' />"+"</a></div>" +
                        "<div class='name'>"+"<a href='#'/>"+ item.goods.goods_name +
                        "</a></div> <div class='price'><font color='#ff4e00'>" + item.goods.price +"</font>X" + item.gnum + "</div></li>";
                    gongji=gongji-(0-item.goods.price*item.gnum);

                });
                jQuery("#gouwuche").html(str);
                jQuery("#count").text(data.length);
                jQuery("#gongji").text(gongji);

            }
        })
    })
    function gouwuche(gid) {
        jQuery.ajax({
            url: "gouwuche",
            type: "post",
            data: {
                gid: gid
            },
            dataType: "json",
            success: function (data) {
                var str = "";
                var gongji=0;
                jQuery.each(data, function (idx,item) {
                    var xiaoji=0;
                    str+="<li>"+"<div class='img'>" + "<a href='#'>"+"<img src='" +item.goods.img_path + "' width='58' height='58' />"+"</a></div>" +
                        "<div class='name'>"+"<a href='#'/>"+ item.goods.goods_name +
                        "</a></div> <div class='price'><font color='#ff4e00'>" + item.goods.price +"</font>X" + item.gnum + "</div></li>"+"<br/>";
                    gongji=gongji-(0-item.goods.price*item.gnum);
                });
                jQuery("#gouwuche").html(str);
                jQuery("#count").text(data.length);
                jQuery("#gongji").text(gongji);
            }
        })
    }

</script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="soubg">
    <div class="sou">
        <!--Begin 所在收货地区 Begin-->
        <span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
        <!--End 所在收货地区 End-->
        <span class="fr">
        	<span class="fl">你好，<a href="login.jsp">
                <c:if test="${sessionScope.lgoinName !=null}">
                        ${sessionScope.lgoinName}</a>&nbsp; <a href="regist.jsp" style="color:#ff4e00;">
                </c:if>
                <c:if test="${sessionScope.lgoinName ==null}">
                      请登录<a/>&nbsp; <a href="regist.jsp" style="color:#ff4e00;">
                </c:if>
                    免费注册</a>&nbsp;|&nbsp;<a href="#">我的订单</a>&nbsp;|</span>

        	<span class="ss">
            	<div class="ss_list">
                	<a href="#">收藏夹</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">我的收藏夹</a></li>
                                <li><a href="#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">客户服务</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">网站导航</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">网站导航</a></li>
                                <li><a href="#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="images/s_tel.png" align="absmiddle" /></a></span>
        </span>
    </div>
</div>
<div class="top">
    <div class="logo"><a href="index.jsp"><img src="images/logo.png" /></a></div>
    <div class="search">
        <form action="queryData" method="get">
            <input type="text"  class="s_ipt" name="key" />
            <input type="submit" value="搜索" class="s_btn" />
        </form>
        <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
    </div>
    <div class="i_car">
        <div class="car_t">购物车 [ <span id="count"></span> ]</div>
        <div class="car_bg">
            <!--Begin 购物车未登录 Begin-->
            <c:if test="${sessionScope.lgoinName ==null}">
            <div class="un_login">还未登录！<a href="login.jsp" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
            </c:if>
         <c:if test="${sessionScope.lgoinName !=null}">
                <div class="un_login">欢迎 &nbsp;&nbsp; ${sessionScope.lgoinName}&nbsp;&nbsp;&nbsp;<a href="login.jsp" style="color:#ff4e00;">退出登录</a> 查看购物车！</div>
            </c:if>
            <hr/>
            <!--End 购物车未登录 End-->
            <!--Begin 购物车已登录 Begin-->
            <ul class="cars" id="gouwuche">
            </ul>
            <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span id="gongji"></span></div>
            <div class="price_a"><a href="#">去购物车结算</a></div>
            <!--End 购物车已登录 End-->
        </div>
    </div>
</div>

</body>
</html>
