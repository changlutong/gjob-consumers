<%--
  Created by IntelliJ IDEA.
  User: ASUS
  Date: 2018/5/22
  Time: 10:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>金科教育测评系统</title>
    <link rel="stylesheet" href="./css/index.css">
    <script src="./jquery/jquery-1.12.2.js"></script>
</head>
<script>


    function getPoint(ps){
        var pointsList = ps;
        var res = [];
        for (var i = pointsList.length; i >= 0; i--) {
            var index = Math.floor(Math.random()*pointsList.length);
            var value = pointsList[index];
            res.push(value);
            pointsList.splice(index,1);
        }
        return res;
    }

    $(function(){
        $("#className").focus(function(){
            $(this).css("background-color","#fff");
        });
        $("#teacherName").focus(function(){
            $(this).css("background-color","#fff");
        });
        $(".questItem").each(function(indexOfQue){
            var p1 = [5,4,2,0];
            var p2 = [10,8,6,0];
            var queId = "q"+indexOfQue;
            var nowPoints = getPoint(indexOfQue<4?p1:p2);
            for(var i = 0; i < 4; i++){
                var td = $("<td>");
                var inputRadio = $("<input type='radio'>");
                inputRadio.attr("name",queId);
                td.css("cursor","pointer");
                var point = nowPoints[i];
                inputRadio.val(point);
                td.append(inputRadio);
                td.append(inputRadio.val()+"分");
                td.click(function(){
                    $(this).find("input[type='radio']").prop("checked",true);
                    $(this).parent().css("background-color","#fff");
                });
                $(this).after(td);

            }
        });

        $("#submit_btn").click(function(){
            var className = $("#className").val();
            var teacherName = $("#teacherName").val();
            if(className == "" || className.length == 0){
                $("#className").css("background-color","red");
                alert("请填写班级!");
                $("#className").focus();
                return;
            }
            if(teacherName == "" || teacherName.length == 0){
                $("#teacherName").css("background-color","red");
                alert("请填写讲师姓名!");
                $("#teacherName").focus();
                return;
            }
            var flag1 = true;
            var totalPoint = 0;
            $(".questItem").each(function(indexOfQue){
                var queId = "q"+indexOfQue;
                var point = $("input[name='"+queId+"']:checked").val();
                if(!point){
                    $(this).parent().css("background-color","red");
                    flag1 = false;
                }else{
                    totalPoint+=Number(point);
                }
            });
            if(!flag1){
                alert("你还有没有选择的选项！");
                totalPoint = 0;
                return;
            }
            var youdian = $("#youdian").val();
            var quedian = $("#quedian").val();
            var wenti = $("#wenti").val();
            var jianyi = $("#jianyi").val();
            if(youdian == "" || youdian.length < 10){
                alert("请正确填写内容!");
                $("#youdian").focus();
                return;
            }
            if(quedian == "" || quedian.length < 10){
                alert("请正确填写内容!");
                $("#quedian").focus();
                return;
            }
            if(wenti == "" || wenti.length < 10){
                alert("请正确填写内容!");
                $("#wenti").focus();
                return;
            }
            if(jianyi == "" || jianyi.length < 10){
                alert("请正确填写内容!");
                $("#jianyi").focus();
                return;
            }
            var param = {
                "className":className,
                "teacherName":teacherName,
                "totalScore":totalPoint,
                "youdian":youdian,
                "quedian":quedian,
                "wenti":wenti,
                "jianyi":jianyi
            };
            $.ajax({
                type:"post",
                url:"./save.action",
                data:param,
                dataType:"json",
                success:function(res){
                    if(res.success){
                        alert("测评提交成功！");
                        window.close();

                    }else{
                        alert(res.msg);
                    }
                }
            })
        });
    });
</script>
<body>
<div class="main">
    <h1>金科教育讲师测评管理</h1>
    <hr>
    <div class="info">
        <span>班级：</span>
        <input type="text" id="className">
        <span>讲师：</span>
        <input type="text" id="teacherName">
    </div>
    <!-- <div id="questions">
        <ul id="queList">
            <li class="item">
                <h3>问题</h3>
                <ul class="answers clearfix">
                    <li><input type="radio">A</input><span class="content">答案A</span></li>
                    <li><input type="radio">A</input><span class="content">答案A</span></li>
                    <li><input type="radio">A</input><span class="content">答案A</span></li>
                    <li><input type="radio">A</input><span class="content">答案A</span></li>
                </ul>
            </li>
        </ul>
        <ul></ul>

    </div> -->
    <table id="questions" border="1px" cellspacing="0">
        <tr>
            <td style="width: 65%" colspan="2">
                <h2>项目</h2>
            </td>
            <td style="width: 35%" colspan="4">
                <h2>评分标准</h2>
            </td>
        </tr>
        <tr>
            <td rowspan="2">以身作则教书育人</td>
            <td class="questItem">带校牌、发型整洁、工装整洁，能及时强调学生着装及发型</td>

        </tr>
        <tr>
            <td class="questItem">早读任务明确，早8:30及时进班,下午1:30及时进班,对迟到学生能及时沟通教育</td>

        </tr>
        <tr>
            <td rowspan="2">尊重学生关爱学生</td>
            <td class="questItem">教育学生过程中不带刺激性、侮辱性语言，能以企业标准要求学生</td>

        </tr>
        <tr>
            <td class="questItem">工作认真负责，对学生一视同仁,关注差生，对班风严格管控，灵活调整座位</td>

        </tr>
        <tr>
            <td rowspan="8">尊重学生关爱学生</td>
            <td class="questItem">备课、教学环节齐全，课堂思路清晰，和平行班老师相比教学内容深入到位，有宣读并严格按课程大纲教学</td>

        </tr>
        <tr>
            <td class="questItem">重难点把握准确，教学方法灵活,重点部分能多次反复强调，并提醒学生此处为重难点</td>

        </tr>
        <tr>
            <td class="questItem">责任心强，能及时帮学生解答问题，值班期间能认真帮学生解决问题，极少玩手机</td>

        </tr>
        <tr>
            <td class="questItem">课程内容丰富充实，能举一反三，帮助学生拓宽知识面，强调企业用人标准</td>

        </tr>
        <tr>
            <td class="questItem">对学生课堂违纪进行及时制止并处理，给认真学习的学生营造良好学习气氛。周六安全会议及时召开，能对班纪、班风、卫生等定期及时整治</td>
        </tr>
        <tr>
            <td class="questItem">课堂气氛活跃，能够调动课堂气氛,讲课声音洪亮，善于提问，举例贴近生活</td>

        </tr>
        <tr>
            <td class="questItem">课上内容以讲明白为目的，责任心强,不以两节正课为应付的时间段，自习课办公室和教室均不见讲师踪影</td>

        </tr>
        <tr>
            <td class="questItem">每天都留有作业，定期亲自检查作业，对于未完成学生，予以及时教育和处理，定期传递毕业生就业利好、强调企业技术标准</td>

        </tr>
        <!-- <tr>
            <td colspan="2">合计总分</td>
            <td colspan="4"><input type="text" id="totalPoints"></td>
        </tr> -->
        <tr>
            <td colspan="6">
                <h2>学生评价及意见</h2>
            </td>
        </tr>
        <tr>
            <table border="1px" cellspacing="0">
                <tr>
                    <td colspan="2" style="width: 20%">讲师的优点：</td>
                    <td colspan="4" >
                        <textarea name="youdian" id="youdian" cols="30" rows="5"></textarea>
                        <div style="font-size: 14px;text-align: right;color: #333">最少写入10个字</div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">讲师的缺点：</td>
                    <td colspan="4">
                        <textarea name="quedian" id="quedian" cols="30" rows="5"></textarea>
                        <div style="font-size: 14px;text-align: right;color: #333">最少写入10个字</div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">遇到的问题：</td>
                    <td colspan="4">
                        <textarea name="wenti" id="wenti" cols="30" rows="5"></textarea>
                        <div style="font-size: 14px;text-align: right;color: #333">最少写入10个字</div>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">对讲师的意见和建议：</td>
                    <td colspan="4">
                        <textarea name="jianyi" id="jianyi" cols="30" rows="5"></textarea>
                        <div style="font-size: 14px;text-align: right;color: #333">最少写入10个字</div>
                    </td>
                </tr>
            </table>
        </tr>
    </table>
    <div id="btns">
        <button id="submit_btn">提交</button>
    </div>
</div>

</body>
</html>