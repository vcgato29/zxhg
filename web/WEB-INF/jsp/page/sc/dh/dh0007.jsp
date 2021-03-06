
<%@page import="com.soa.util.SystemUtil"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html><!-- InstanceBegin template="/Templates/work.dwt.jsp" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/css/frame_pc.css" />" type="text/css" rel="stylesheet"/>
        <link href="<c:url value="/css/redmond/jquery-ui-1.8.21.css" />" type="text/css" rel="stylesheet"/>
        <link href="<c:url value="/css/demo_table_jui.css" />" type="text/css" rel="stylesheet"/>
        <script type="text/javascript" src="<c:url value='/script/jquery-1.7.1.js' />"></script>
        <script type="text/javascript" src="<c:url value='/script/frame-pc.js' />"></script>
        <script type="text/javascript" src="<c:url value='/script/jquery-ui-1.8.21.min.js' />"></script>
        <script type="text/javascript" src="<c:url value='/script/jquery.dataTables.js' />"></script>
        <!-- InstanceBeginEditable name="doctitle" -->
        <title><%=SystemUtil.serverDesc%> -- 月单耗曲线图</title>
        <!-- InstanceEndEditable -->
        <!-- InstanceBeginEditable name="head" -->
        <script type="text/javascript" src="<c:url value='/script/jscharts.js' />"></script>
        <!-- InstanceEndEditable -->
    </head>
    <body>
        <!-- InstanceBeginEditable name="content" -->
        <div style="margin: 10px auto 10px auto; text-align: center"><h2>月单耗曲线图</h2></div>
        <hr />
        <form id="search_form" name="search_form" class="sub_form" style="width: 80%;">
            <input type="hidden" id="do" name="do" value="1" />
            <table width="100%" border="0">
                <tr>
                    <td width="55%" align="right">
                        日期：
                        <select id="year" name="year">
                            <option value="2012">2012</option>
                            <option value="2013">2013</option>
                            <option value="2014">2014</option>
                            <option value="2015">2015</option>
                            <option value="2016">2016</option>
                            <option value="2017">2017</option>
                            <option value="2018">2018</option>
                        </select>年
                        <select id="month" name="month">
                            <option value="01">1</option>
                            <option value="02">2</option>
                            <option value="03">3</option>
                            <option value="04">4</option>
                            <option value="05">5</option>
                            <option value="06">6</option>
                            <option value="07">7</option>
                            <option value="08">8</option>
                            <option value="09">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select>月
                    <td>
                        <input type="button" id="search" value="查询" />
                    </td>
                </tr>
            </table>
        </form>
        <div align="center">

            <div align="center" style="width: 750px;height: 450px;margin: 20px auto;background-color: #F7F7F7">
                <div id="graph">正在加载月单耗图表...</div>
            </div>
            <div id="tblb" align="center">
                <input type="radio" id="hym" name="tblb" /><label for="hym">耗原煤</label>
                <input type="radio" id="hrm" name="tblb" /><label for="hrm">耗燃煤</label>
                <input type="radio" id="hs" name="tblb" /><label for="hs">耗水</label>
                <input type="radio" id="hwd" name="tblb" /><label for="hwd">耗外电</label>
                <input type="radio" id="hq" name="tblb" /><label for="hq">耗气</label>
                <input type="radio" id="qhym" name="tblb" /><label for="qhym">千方有效气耗原煤</label>
                <input type="radio" id="zqhm" name="tblb" /><label for="zqhm">吨蒸汽耗燃料煤</label>
            </div>
        </div>
        <!-- InstanceEndEditable -->
    </body>
    <!-- InstanceEnd --></html>
