<html>
<body>
<script  src="<%=request.getContextPath()%>/js/jquery.min.js">


</script>
<h2>Hello World!</h2>
<script type="text/javascript">
    $(function () {
        $.ajax({
            url:"<%=request.getContextPath()%>/userControlller/getUserList.do",
            type:"post",
            dataType:"json",
            success:function(result){
                alert(result)
                alert(123)
            },
            error:function(){}
        })
    })
</script>
</body>
</html>
