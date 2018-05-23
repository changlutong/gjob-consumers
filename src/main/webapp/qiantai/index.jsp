<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<html lang="zh" class="translated-ltr">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="招聘,人才,网络招聘,简历,工作,找工作,求职,面试,应聘,跳槽,高薪,兼职,猎头,薪酬,薪资,培训,测评,人事,实习">
    <meta name="description" content="智联招聘为求职者提供职位搜索,简历管理,职位定制,人才评测,培训信息等.为企业提供一站式专业人力资源服务,包括网络招聘,报纸招聘,校园招聘,猎头服务,招聘外包,企业培训以及人才测评等.">
    <title>好工作上龙盾招聘</title>
    <link href="css/reset.min.css" type="text/css" rel="stylesheet">
    <link type="text/css" href="css/style.css" rel="stylesheet">

    <link rel="shortcut icon" type="image/ico" href="//img00.zhaopin.cn/new2011/images/ie9.ico" />



    <script type="text/javascript" async="" src="js/zi11.js"></script>
    <script type="text/javascript" async="" src="js/mv.js"></script>
    <script type="text/javascript" async="" src="js/mba.js"></script>
    <script type="text/javascript" async="" src="js/mvl.js"></script>
    <script type="text/javascript" src="http://cms.gtags.net/g?z=__zpCMSDCB&amp;a=30" charset="utf-8"></script>
    <script type="text/javascript" src="js/socket.io.js" async=""></script>
    <script type="text/javascript" src="//resource.zhaopin.com/modulejs/common/connect.js?f=0.4895374788313258"></script>
    <link type="text/css" rel="stylesheet" charset="UTF-8" href="css/translateelement.css"></head>
<!-- 这是jquery的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<!-- 这是easyui的核心包  -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/util-js.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyui/locale/easyui-lang-zh_CN.js"></script>
<body rlt="1" >
<svg aria-hidden="true" style="position: absolute; width: 0px; height: 0px; overflow: hidden;">
    <symbol id="icon-redo" viewBox="0 0 1024 1024">
        <path d="M0 576c0 152.928 67.04 290.176 173.344 384l84.672-96c-79.712-70.368-130.016-173.312-130.016-288 0-212.064 171.936-384 384-384 106.048 0 202.048 42.976 271.52 112.48l-143.52 143.52 384 0 0-384-149.984 149.984c-92.64-92.672-220.64-149.984-362.016-149.984-282.784 0-512 229.216-512 512z"></path>
    </symbol>
    <symbol id="icon-wxbsousuotuiguang" viewBox="0 0 1024 1024">
        <path d="M937.798221 769.855766 714.895525 546.869159c23.821545-45.681412 37.589107-97.495498 37.589107-152.564721 0-182.559872-148.560524-331.078441-331.079464-331.078441-182.623317 0-331.098907 148.517545-331.098907 331.078441 0 182.559872 148.47559 331.078441 331.098907 331.078441 60.575634 0 117.27089-16.647145 166.206416-45.221948L807.552831 900.100132c17.938558 17.939581 41.551348 26.867928 65.12423 26.867928s47.182602-8.928347 65.123206-26.867928c17.396205-17.396205 27.033703-40.550555 27.033703-65.164139C964.831924 810.321386 955.194426 787.16806 937.798221 769.855766M133.027248 394.304438c0-158.989037 129.34795-288.358477 288.378943-288.358477 158.948105 0 288.3595 129.36944 288.3595 288.358477 0 99.206466-50.437739 186.899714-126.950344 238.795665-1.044796 0.416486-1.876744 1.252527-2.877537 1.835811-45.515636 30.03813-99.999528 47.727001-158.530596 47.727001C262.375198 682.662915 133.027248 553.336454 133.027248 394.304438M907.594315 869.896226c-19.273972 19.191084-50.562583 19.191084-69.836555 0L623.6995 655.797034c26.157753-20.274766 49.186236-44.305065 68.292386-71.421656l215.601406 215.683271c9.344832 9.262968 14.518668 21.694091 14.518668 34.877345S916.939147 860.551394 907.594315 869.896226"></path>
        <path d="M215.169059 387.79007c0 0 42.156122-211.011878 234.186693-224.946238C449.355753 162.843832 185.944458 131.555222 215.169059 387.79007"></path>
    </symbol>
    <symbol id="icon-xiangshangjiantou" viewBox="0 0 1024 1024">
        <path d="M966.4 668.8l-435.2-432c-9.6-9.6-25.6-9.6-35.2 0l-441.6 432c-9.6 9.6-9.6 25.6 0 35.2 9.6 9.6 25.6 9.6 35.2 0l425.6-416 416 416c9.6 9.6 25.6 9.6 35.2 0S976 678.4 966.4 668.8z"></path>
    </symbol>
    <symbol id="icon-xiangxiajiantou" viewBox="0 0 1024 1024">
        <path d="M966.4 323.2c-9.6-9.6-25.6-9.6-35.2 0l-416 416-425.6-416c-9.6-9.6-25.6-9.6-35.2 0-9.6 9.6-9.6 25.6 0 35.2l441.6 432c9.6 9.6 25.6 9.6 35.2 0l435.2-432C976 345.6 976 332.8 966.4 323.2z"></path>
    </symbol>
    <symbol id="icon-change" viewBox="0 0 1024 1024">
        <path d="M892.419 339.964c4.16-10.040 1.86-21.595-5.824-29.281l-126.469-126.469-37.997 37.997 80.603 80.603h-606.828v53.735h671.691c10.867 0 20.665-6.545 24.822-16.586z"></path>
        <path d="M894.464 625.229h-671.691c-10.867 0-20.664 6.546-24.822 16.586-4.16 10.040-1.86 21.595 5.824 29.281l126.469 126.469 37.997-37.996-80.603-80.603h606.828v-53.735z"></path>
    </symbol>
    <symbol id="icon-close" viewBox="0 0 1024 1024">
        <path d="M546.942134 511.818772l327.456957-326.128977c9.617355-9.577423 9.648071-25.135361 0.070648-34.751692-9.577423-9.617355-25.137409-9.647048-34.750668-0.070648L512.119795 477.137729 184.520518 150.868479c-9.616331-9.577423-25.176316-9.545683-34.751692 0.070648-9.577423 9.616331-9.545683 25.174268 0.070648 34.751692l327.457981 326.127953-327.457981 326.128978c-9.616331 9.577423-9.647048 25.135361-0.070648 34.751692a24.496456 24.496456 0 0 0 17.41117 7.231702 24.500552 24.500552 0 0 0 17.340522-7.162078L512.119795 546.499816l327.599276 326.26925a24.492361 24.492361 0 0 0 17.340522 7.162078 24.5026 24.5026 0 0 0 17.41117-7.231702c9.577423-9.617355 9.545683-25.175292-0.070648-34.751692L546.942134 511.818772z" fill="#353535"></path>
    </symbol>
    <symbol id="icon-refresh" viewBox="0 0 1025 1024">
        <path d="M1000.803878 388.49588c-10.161038-8.99688-25.690307-8.051834-34.688211 2.109204l-61.519126 69.484954c-4.493833-44.37519-15.419713-87.479738-32.656822-128.641976-22.511143-53.755003-54.789128-101.965668-95.933959-143.294799C691.231126 103.00184 577.673029 56.107892 456.249444 56.107892c-60.834147 0-119.860112 11.920073-175.440703 35.42848-53.672069 22.700562-101.869423 55.194586-143.25282 96.579007-41.383397 41.383397-73.877422 89.580751-96.579007 143.25282-23.508407 55.580591-35.42848 114.60758-35.42848 175.440703 0 60.834147 11.920073 119.860112 35.42848 175.440703 22.700562 53.672069 55.194586 101.869423 96.579007 143.25282s89.580751 73.877422 143.25282 96.579007c55.580591 23.508407 114.60758 35.42848 175.440703 35.42848 54.671381 0 108.114099-9.688003 158.841474-28.794727 49.002128-18.457581 94.109396-45.155391 134.065497-79.351113 10.310525-8.824868 11.515638-24.337754 2.691795-34.648279-8.824868-10.310525-24.337754-11.515638-34.648279-2.691795-35.605612 30.473899-75.789016 54.259779-119.433151 70.699282-45.169725 17.012879-92.78244 25.640136-141.517334 25.640136-54.220871 0-106.805574-10.613595-156.296095-31.546931-47.813397-20.222759-90.760267-49.180284-127.645736-86.066777-36.885469-36.885469-65.842994-79.832339-86.066777-127.645736-20.932312-49.490521-31.545907-102.075224-31.545907-156.296095s10.613595-106.805574 31.545907-156.295071c20.223783-47.813397 49.180284-90.760267 86.066777-127.645736 36.886493-36.885469 79.832339-65.842994 127.645736-86.066777 49.489497-20.932312 102.075224-31.545907 156.296095-31.545907 108.254372 0 209.444958 41.755067 284.926808 117.573776 67.949126 68.251172 108.312733 157.16435 115.471739 253.034828l-101.959525-72.125554c-11.078439-7.836818-26.414194-5.209529-34.252036 5.869935-7.837842 11.079463-5.210552 26.415217 5.868911 34.25306l140.842594 99.631209c4.291103 3.03582 9.251828 4.512263 14.179788 4.512263 6.824196 0 13.58491-2.834115 18.410482-8.284256l103.1759-116.535556C1011.909962 413.02203 1010.964916 397.491737 1000.803878 388.49588z"></path>
    </symbol>
    <symbol id="icon-error" viewBox="0 0 1025 1024">
        <path d="M982.668821 313.74918c-25.810101-60.752236-62.714-115.373446-109.685763-162.346233-46.972787-46.971763-101.593997-83.875662-162.346233-109.685763C647.666853 14.966132 580.925912 1.401699 512.268258 1.401699S376.868639 14.966132 313.898667 41.717184c-60.752236 25.810101-115.373446 62.714-162.346233 109.685763-46.971763 46.972787-83.875662 101.593997-109.685763 162.346233C15.115619 376.719151 1.551186 443.460092 1.551186 512.118771S15.115619 647.517366 41.866671 710.487337c25.810101 60.75326 62.714 115.37447 109.685763 162.346233 46.971763 46.972787 101.592974 83.876686 162.346233 109.685763 62.969971 26.752076 129.710912 40.316509 198.369591 40.316509s135.398595-13.564433 198.368567-40.316509c60.75326-25.809077 115.37447-62.712976 162.346233-109.685763 46.972787-46.971763 83.876686-101.592974 109.685763-162.346233 26.752076-62.969971 40.316509-129.710912 40.316509-198.368567S1009.419873 376.719151 982.668821 313.74918zM937.435615 691.271058c-23.333323 54.923257-56.71096 104.317532-99.204249 146.811845-42.494313 42.493289-91.888588 75.870926-146.811845 99.204249-56.8584 24.155503-117.133505 36.403219-179.152287 36.403219-62.018782 0-122.293887-12.247716-179.152287-36.403219-54.923257-23.333323-104.317532-56.71096-146.810821-99.204249-42.493289-42.494313-75.870926-91.888588-99.204249-146.811845C62.944374 634.412658 50.697682 574.136529 50.697682 512.118771c0-62.018782 12.247716-122.293887 36.403219-179.152287 23.333323-54.923257 56.709936-104.317532 99.204249-146.810821s91.888588-75.870926 146.810821-99.204249c56.8584-24.155503 117.133505-36.403219 179.152287-36.403219 62.017758 0 122.292863 12.247716 179.152287 36.403219 54.923257 23.333323 104.317532 56.709936 146.810821 99.204249 42.494313 42.493289 75.870926 91.888588 99.205273 146.810821 24.155503 56.8584 36.403219 117.134529 36.403219 179.152287S961.591118 634.412658 937.435615 691.271058z"></path>
        <path d="M704.62457 319.769626c-9.997216-9.996192-26.203273-9.996192-36.199466 0L512.382933 475.810773 356.341786 319.769626c-9.996192-9.996192-26.204297-9.996192-36.199466 0-9.996192 9.996192-9.996192 26.203273 0 36.199466l156.041147 156.041147L320.14232 668.05241c-9.996192 9.997216-9.996192 26.204297 0 36.199466 4.997584 4.998608 11.549426 7.496888 18.100245 7.496888s13.101637-2.49828 18.100245-7.496888l156.041147-156.041147L668.424081 704.251876c4.998608 4.998608 11.548403 7.496888 18.100245 7.496888s13.101637-2.49828 18.100245-7.496888c9.996192-9.996192 9.996192-26.203273 0-36.199466L548.583423 512.011263l156.041147-156.041147C714.620762 345.973923 714.620762 329.765818 704.62457 319.769626z"></path>
    </symbol>
    <symbol id="icon-prompt" viewBox="0 0 1025 1024">
        <path d="M637.349161 308.770026"></path>
        <path d="M512.53242 1022.476459c-68.658678 0-135.399619-13.564433-198.369591-40.316509-60.752236-25.809077-115.373446-62.712976-162.346233-109.685763-46.971763-46.971763-83.875662-101.592974-109.685763-162.346233-26.751052-62.969971-40.315485-129.710912-40.315485-198.368567s13.564433-135.399619 40.315485-198.369591c25.810101-60.752236 62.714-115.373446 109.685763-162.346233 46.972787-46.971763 101.593997-83.875662 162.346233-109.685763 62.969971-26.751052 129.710912-40.315485 198.369591-40.315485s135.398595 13.564433 198.368567 40.315485c60.752236 25.810101 115.37447 62.714 162.346233 109.685763 46.972787 46.972787 83.876686 101.593997 109.686787 162.346233 26.752076 62.969971 40.316509 129.710912 40.316509 198.369591s-13.564433 135.398595-40.316509 198.368567c-25.810101 60.75326-62.712976 115.37447-109.685763 162.346233-46.971763 46.972787-101.593997 83.876686-162.346233 109.685763C647.93204 1008.912026 581.190075 1022.476459 512.53242 1022.476459zM512.53242 50.188811c-62.018782 0-122.293887 12.247716-179.152287 36.403219-54.923257 23.333323-104.317532 56.709936-146.810821 99.204249s-75.870926 91.888588-99.204249 146.810821c-24.155503 56.8584-36.403219 117.133505-36.403219 179.152287 0 62.017758 12.247716 122.292863 36.403219 179.152287 23.333323 54.923257 56.709936 104.317532 99.204249 146.811845 42.493289 42.493289 91.888588 75.870926 146.810821 99.204249 56.8584 24.155503 117.133505 36.403219 179.152287 36.403219 62.017758 0 122.293887-12.247716 179.153311-36.403219 54.923257-23.333323 104.317532-56.71096 146.810821-99.204249 42.494313-42.494313 75.87195-91.888588 99.205273-146.811845 24.155503-56.8584 36.403219-117.133505 36.403219-179.152287s-12.247716-122.293887-36.404243-179.152287c-23.333323-54.923257-56.71096-104.317532-99.204249-146.810821-42.494313-42.493289-91.888588-75.870926-146.811845-99.204249C634.825284 62.436527 574.550178 50.188811 512.53242 50.188811z"></path>
        <path d="M512.442318 767.198298c-14.136785 0-25.597133-11.460348-25.597133-25.597133l0-332.127922c0-14.136785 11.460348-25.597133 25.597133-25.597133s25.597133 11.460348 25.597133 25.597133l0 332.127922C538.039452 755.737949 526.578079 767.198298 512.442318 767.198298z"></path>
        <path d="M511.381573 319.924232c-17.522773 0-31.778329-14.255555-31.778329-31.778329 0-17.52175 14.255555-31.777305 31.778329-31.777305 17.52175 0 31.777305 14.255555 31.777305 31.777305C543.158878 305.668677 528.903323 319.924232 511.381573 319.924232z"></path>
    </symbol>
    <symbol id="icon-success" viewBox="0 0 1025 1024">
        <path d="M511.679524 1023.15939c-68.658678 0-135.399619-13.564433-198.369591-40.316509-60.752236-25.809077-115.373446-62.712976-162.346233-109.685763-46.971763-46.971763-83.875662-101.592974-109.685763-162.346233-26.751052-62.969971-40.315485-129.710912-40.315485-198.368567s13.564433-135.399619 40.315485-198.369591c25.810101-60.752236 62.714-115.373446 109.685763-162.346233 46.972787-46.971763 101.593997-83.875662 162.346233-109.685763C376.279905 15.28968 443.020846 1.725247 511.679524 1.725247S647.078119 15.28968 710.048091 42.040731c60.752236 25.810101 115.37447 62.714 162.346233 109.685763 46.972787 46.972787 83.876686 101.593997 109.686787 162.346233 26.752076 62.969971 40.316509 129.710912 40.316509 198.369591s-13.564433 135.398595-40.316509 198.368567c-25.810101 60.75326-62.712976 115.37447-109.685763 162.346233-46.971763 46.972787-101.593997 83.876686-162.346233 109.685763C647.079143 1009.594957 580.337178 1023.15939 511.679524 1023.15939zM511.679524 50.871742c-62.018782 0-122.293887 12.247716-179.152287 36.403219-54.923257 23.333323-104.317532 56.709936-146.810821 99.204249s-75.870926 91.888588-99.204249 146.810821c-24.155503 56.8584-36.403219 117.133505-36.403219 179.152287 0 62.017758 12.247716 122.292863 36.403219 179.152287 23.333323 54.923257 56.709936 104.317532 99.204249 146.811845 42.493289 42.493289 91.888588 75.870926 146.810821 99.204249 56.8584 24.155503 117.133505 36.403219 179.152287 36.403219 62.017758 0 122.293887-12.247716 179.153311-36.403219 54.923257-23.333323 104.317532-56.71096 146.810821-99.204249 42.494313-42.494313 75.87195-91.888588 99.205273-146.811845 24.155503-56.8584 36.403219-117.133505 36.403219-179.152287s-12.247716-122.293887-36.404243-179.152287c-23.333323-54.923257-56.71096-104.317532-99.204249-146.810821-42.494313-42.493289-91.888588-75.870926-146.811845-99.204249C633.972387 63.119459 573.697282 50.871742 511.679524 50.871742z"></path>
        <path d="M451.780185 689.848881c-6.223175 0-12.452493-2.255619-17.365095-6.794503L253.195578 515.658342c-10.384245-9.592782-11.027245-25.787576-1.434463-36.171821 9.592782-10.386293 25.786552-11.026221 36.171821-1.434463l163.146912 150.703633 289.753404-289.754428c9.997216-9.996192 26.203273-9.996192 36.199466 0 9.996192 9.996192 9.996192 26.203273 0 36.199466L469.883501 682.351993C464.896156 687.339338 458.342266 689.848881 451.780185 689.848881z"></path>
    </symbol>
</svg>
<!-- 最上头部分-->
<div id="header">
    <table width="1020" height="100% " align="center" cellpadding="0" cellspacing="0" style="position:relative;right:10px;">
        <tbody><tr>

            <td width="60">
                &nbsp;&nbsp;<a href="http://192.168.31.222:8888/qiantai/shouye.jsp" target="_blank">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;" size="2">首页</font>
                </font>
            </a>
            </td>
            <td width="10"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                &nbsp;|&nbsp;
            </font></font></td>
            <td width="60">
                <a href="#" target="_blank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" size="2">简历中心</font></font></a>
            </td>
            <td width="10"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                &nbsp;|&nbsp;
            </font></font></td>
            <td width="60">
                <a href="http://192.168.31.222:8888/qiantai/chaxun.jsp" target="_blank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;"size="2">职位搜索</font></font></a>
            </td>
            <td width="10"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                &nbsp;|&nbsp;
            </font></font></td>
            <td width="60">
                <a href="#" target="_blank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" size="2">求职指导</font></font></a>
            </td>
            <td width="10"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
                &nbsp;|&nbsp;
            </font></font></td>
            <td width="60">
                <a href="#" target="_blank"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;" size="2">校园招聘</font></font></a>
            </td>
            <td>&nbsp;

            </td>
            <td width="70">
                <a href="http://192.168.31.222:8888/company/zhuce.jsp" target="_blank">
                    <img src="img/regin.jpg" width="70" height="28">
                </a>
            </td>
            <td width="10">
                <img src="img/regin_login.jpg" width="10" height="28">
            </td>
            <td width="70">
                <a href="http://192.168.31.222:8888/company/companyLogin.jsp" target="_blank">
                    <img src="img/login.jpg" width="70" height="28">
                </a>
            </td>
        </tr>
        </tbody></table>
</div>
<!-- 第二白色部分-->
<div class="top_0517">
    <div class="wrap_0517 clearfix">
        <div class="logo_0517">
            <img src="img/ld1.jpg" height="65px">
        </div>

        <div class="step_0517">
            <img src="img/lc.jpg">
        </div>
    </div>
</div>
<!--中间部分 -->
<div class="wrap_bg1" style="background:url('img/timg.jpg') no-repeat ;background-size:1525px;">
    <div class="wrap_0518 clearfix pt36">
        <!-- 中间 左边-->
        <div class="cont_left">


            <div class="s2">
                <!-- 每一个l代表一个分区 -->
                <div class="l1" style="display: block;">
                    <div class="c1" id="guanggaowei">
                        <div class="a1">
                            <div class="p1 comm"><img src="img/zhaopin1.jpg" width="140px" height="60px" onclick=""></div>
                            <div class="p2 comm"><img src="img/zhaopin2.jpg" width="145px" height="60px" onclick=""></div>
                            <div class="p3 comm"><img src="img/zhaopin3.jpg" width="150px" height="60px" onclick=""></div>
                            <div class="p4 comm"><img src="img/zhaopin4.jpg" width="140px" height="60px" onclick=""></div>
                        </div>
                        <div class="a1">
                            <div class="p1 comm"><img src="img/zhaopin5.jpg" width="140px" height="60px" onclick=""></div>
                            <div class="p2 comm"><img src="img/zhaopin6.jpg" width="145px" height="60px" onclick=""></div>
                            <div class="p3 comm"><img src="img/zhaopin7.jpg" width="150px" height="60px" onclick=""></div>
                            <div class="p4 comm"><img src="img/zhaopin8.jpg" width="140px" height="60px" onclick=""></div>
                        </div>
                        <div class="a1">
                            <div class="p1 comm"><img src="img/zhaopin9.jpg" width="140px" height="60px" onclick=""></div>
                            <div class="p2 comm"><img src="img/zhaopin10.jpg" width="145px" height="60px" onclick=""></div>
                            <div class="p3 comm"><img src="img/zhaopin11.jpg" width="150px" height="60px" onclick=""></div>
                            <div class="p4 comm"><img src="img/zhaopin12.gif" width="140px" height="60px" onclick=""></div>
                        </div>

                        <div class="a1">
                            <div class="p1 comm"><img src="img/zhaopin13.jpg" width="140px" height="60px" onclick=""></div>
                            <div class="p2 comm"><img src="img/zhaopin14.jpg" width="145px" height="60px" onclick=""></div>
                            <div class="p3 comm"><img src="img/zhaopin15.jpg" width="150px" height="60px" onclick=""></div>
                            <div class="p4 comm"><img src="img/zhaopin16.jpg" width="140px" height="60px" onclick=""></div>
                        </div>
                        <div class="a1">
                            <div class="p1 comm"><img src="img/zhaopin17.jpg" width="140px" height="60px" onclick=""></div>
                            <div class="p2 comm"><img src="img/zhaopin18.jpg" width="145px" height="60px" onclick=""></div>
                            <div class="p3 comm"><img src="img/zhaopin19.jpg" width="150px" height="60px" onclick=""></div>
                            <div class="p4 comm"><img src="img/zhaopin20.jpg" width="140px" height="60px" onclick=""></div>
                        </div>
                        <div class="a1">
                            <div class="p1 comm"><img src="img/zhaopin21.jpg" width="140px" height="60px" onclick=""></div>
                            <div class="p2 comm"><img src="img/zhaopin22.jpg" width="145px" height="60px" onclick=""></div>
                            <div class="p3 comm"><img src="img/zhaopin23.jpg" width="150px" height="60px" onclick=""></div>
                            <div class="p4 comm"><img src="img/zhaopin24.jpg" width="140px" height="60px" onclick=""></div>
                         </div>



                    </div>

                </div>

            </div>
        </div>
        <!-- 中间 右边-->
        <div class="cont_right">
            <ul class="tab_0517 " style="background:#ba9d37">
                <li class="li1"><input type="button"  id="zhuceanniu"  value="新用户注册"  style="background:#ba9d37"  onclick="quzhuce()"><span>&nbsp;</span></li>
                <span>|</span>
                <li class="li2 current"><input type="button" id="dengluanniu"  value="老用户登录"  style="background:yellow" onclick="qudenglu()"><span>&nbsp;</span></li>
            </ul>

            <div class="cont_iput"  id="zhuce"  style="display: none;" >
                <h4><img src="img/a.jpg" height="35" width="204" alt=""></h4>
                <form action="#" id="regform"  method="post" onsubmit="zhuceyanzheng()">


                    <table border="0" cellpadding="0" cellspacing="0" width="222">
                        <tbody>
                        <tr>
                            <td>
                                <label>
                                    <input type="text" class="inputtxt_1"id="phone" name="phone" placeholder="请输入手机号" style="background:yellow">

                                </label>
                                <span id="email_info" class="yzi_td"></span>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <input id="password1" class="inputtxt_1" value="" type="password" placeholder="密码" style="background:yellow">
                                </label>
                                <span id="password1_info" class="yzi_td"></span>
                            </td>
                        </tr>
                        <tr >
                            <td>
                                <div >
                                    <label >
                                        <input type="text" class="inputtxt_1"  name="yzm" id="yzm"  placeholder="请输入收到的验证码" style="background:yellow">
                                        <span id="spantt5"></span>
                                    </label>

                                                <button  type="button" class="sendBtn fr" style="width:112px;height:34px" onclick="fasongyz()">发送验证码</button>
                                                <button  type="button"class="sendBtn fr" id="anniu" style="width:110px;height:34px">(<strong class="a">60</strong>秒 )</button>

                                </div>
                                <span id="verifyCode_info" class="yzi_td"></span>
                            </td>
                        </tr>
                        <tr><td class="reword">


                            <p>
                                <label><input name="accept" id="yueduxiexi" type="checkbox" class="chk"></label> <span class="vm">我接受龙盾的<a href="#" target="_blank" style="text-decoration:underline">用户协议</a>和<a href="#" target="_blank" style="text-decoration:underline">隐私政策</a></span>

                                <label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;<img src="img/zhuce.jpg" height="40px" onclick="zhuche()">
                                </label>
                            </p>
                            <div id="accept_info" class="yzi_td"></div>

                        </td></tr>
                        <tr>
                            <td class="reword">


                            </td>
                        </tr>
                        </tbody>
                    </table>

                </form>

            </div>

            <div class="cont_iput ishide"  id="denglu" style="display: block;">
                <h4><img src="img/2.jpg" height="35" width="204" alt=""></h4>
                <form  id="loginform" id="loginform" method="post"  onsubmit="yanzheng()">

                    <table border="0" cellpadding="0" cellspacing="0" width="222">
                        <tbody>
                        <tr>
                            <td>
                                <label>
                                    <input id="loginname" name="loginname" class="inputtxt_1" style="background: yellow"  type="text" placeholder="手机号即为登陆账号"></label>
                                <span id="loginname_info" class="yzi_td"></span>

                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    <input id="password" name="password" class="inputtxt_1" style="background: yellow"  type="password" placeholder="密码"></label>
                                <span id="password_info" class="yzi_td"></span>
                            </td>
                        </tr>
                        <tr class="verifyArea2 ishide">
                            <td>
                                <div class="clearfix">
                                    <label class="fl label_v">
                                        <input id="_mailverifyCode" name="_mailverifyCode" class="inputtxt_1 inputw_1 fl" value="" type="text" maxlength="4" placeholder="验证码">
                                    </label>
                                    <div class="imgarea">
                                        <img class="vimg" src="//passport.zhaopin.com/checkcode/img" alt="验证码" title="刷新验证码" width="80" height="35">
                                    </div>
                                </div>
                                <span id="_mailverifyCode_info" class="yzi_td"></span>
                            </td>
                        </tr>
                        <tr class="tr_2">
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="reword" valign="middle">
                                <a href="#" target="_blank" class="vm fr"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">忘记密码？</font></font></a>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label>
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="img/denglu.jpg" height="60px" onclick="denglu()">
                                </label>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </form>
            </div>

            </div>
        </div>
    </div>
</div>
<!--四张图-->
<div id="footer_con">
    <div class="con_in1 clearfix">
        <p class="fr">
            <img src="images/1.jpg"><img src="images/3.jpg"><img src="images/0.jpg"><img src="images/2.jpg" style="margin:0;">
        </p>
    </div>
</div>
<!--最下底部-->
<div id="footer">
    <script type="text/javascript" async="" src="js/s.js"></script>
    <script type="text/javascript" async="" src="js/dc.js"></script>
    <script type="text/javascript" async="" src="js/dywe.js"></script>
    <script src="js/foot.js"></script><script src="js/foots.js"></script>
    <script language="javascript" type="text/javascript">
    <!--
    function openFeedback(strTarget){
        window.open(strTarget, "_blank","width=1,height=1,left=100,top=60,scrollbars=0,overflow=auto,status=0");
    }
    //-->
    </script>

    <div style="clear:both;"></div>
    <!--尾部，最下头-->
    <div class="link">
        <div class="link_1">
            <a href="//special.zhaopin.com/sh/2009/aboutus/about.html" target="_blank" onmousedown="return AdsClick(121115223,'zhilianjieshao')">
                 <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">龙盾介绍</font>
                 </font>
            </a>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"> | </font>
            </font>
            <a href="//www.zhaopin.com/sitemap.html" target="_blank">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">网站地图</font>
                </font>
            </a>
                 <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"> | </font>
                 </font>
            <a href="//special.zhaopin.com/sh/2009/aboutus/join.html" target="_blank" onmousedown="return AdsClick(121115223,'jiaruzhilian')">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">加入龙盾</font>
                </font>
            </a>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"> | </font>
            </font>
            <a href="//special.zhaopin.com/sh/2009/aboutus/law.html" target="_blank" onmousedown="return AdsClick(121115223,'falvshengming')">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">法律声明</font>
                </font>
            </a>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"> | </font>
            </font>
            <a href="//special.zhaopin.com/sh/2009/aboutus/secrecy.html" target="_blank" onmousedown="return AdsClick(121115223,'baomichengnuo')">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">隐私政策</font>
                </font>
            </a>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">   | </font>
            </font>
            <a href="//special.zhaopin.com/sh/2009/aboutus/contact.html" target="_blank" onmousedown="return AdsClick(121115223,'lianxifangshi')">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">联系方式</font>
                </font>
            </a>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"> | </font>
            </font>
            <a href="//jobseeker.zhaopin.com/zhaopin/faq/question.html" target="_blank" onmousedown="return AdsClick(121115223,'changjianwenti')">
                <font style="vertical-align: inherit;">
                    <font style="vertical-align: inherit;">常见问题</font>
                </font>
            </a>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;"> | </font>
            </font>
            <font style="vertical-align: inherit;">
                <font style="vertical-align: inherit;">您对龙盾科技有任何建议或意见请</font></font><a href="#" onmousedown="return AdsClick(121115223,' contactus')" onclick="window.open('//img00.zhaopin.cn/2014/common/html/rdimpop.html', '_blank', 'width=702,height=702,left=100,top=60,scrollbars=0,overflow=auto,status=0');"><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">联系我们</font></font></a><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
            未经龙盾科技同意，不得转载本网站之所有招聘信息及作品l龙盾招聘网版权所有© 1951-2051 </font></font><br><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">
            京ICP备888888号电信业务审批[8888]字第888号函京公网安备8888888888</font></font>
        </div>

    </div>

</div>
<script >
    function qudenglu(){
        $("#zhuce").attr("style","display:none;");
        $("#denglu").attr("style","display:block;");
        document.getElementById("dengluanniu").setAttribute("style", "background:yellow;");
        document.getElementById("zhuceanniu").setAttribute("style", "background:#ba9d37;");
    }
    function quzhuce(){
        $("#zhuce").attr("style","display:block");
        $("#denglu").attr("style","display:none");
        document.getElementById("zhuceanniu").setAttribute("style","background:yellow;");
        document.getElementById("dengluanniu").setAttribute("style","background:#ba9d37;");
    }

</script>
<script>
    <!--页面加载事件之加载广告-->
    $(function(){
        $.ajax({
            url:"<%=request.getContextPath()%>/guanggaoController/selectallguanggao.do",
            type:"post",
            dataType:"json",
            success:function (guanggao) {

             var str="<div class='a1'>" +
                 " <div class='p1 comm'><img src='"+guanggao[0].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[0].companyid+","+guanggao[0].id+")'></div>" +
                 "<div class='p2 comm'><img src='"+guanggao[1].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[1].companyid+","+guanggao[1].id+")'></div>" +
                 "<div class='p3 comm'><img src='"+guanggao[2].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[2].companyid+","+guanggao[2].id+")'></div>" +
                 "<div class='p4 comm'><img src='"+guanggao[3].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[3].companyid+","+guanggao[3].id+")'></div>" +
                 "</div>"+
                 "<div class='a1'>" +
                 " <div class='p1 comm'><img src='"+guanggao[4].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[4].companyid+","+guanggao[4].id+")'></div>" +
                 "<div class='p2 comm'><img src='"+guanggao[5].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[5].companyid+","+guanggao[5].id+")'></div>" +
                 "<div class='p3 comm'><img src='"+guanggao[6].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[6].companyid+","+guanggao[6].id+")'></div>" +
                 "<div class='p4 comm'><img src='"+guanggao[7].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[7].companyid+","+guanggao[7].id+")'></div>" +
                 "</div>"+
                 "<div class='a1'>" +
                 " <div class='p1 comm'><img src='"+guanggao[8].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[8].companyid+","+guanggao[8].id+")'></div>" +
                 "<div class='p2 comm'><img src='"+guanggao[9].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[9].companyid+","+guanggao[9].id+")'></div>" +
                 "<div class='p3 comm'><img src='"+guanggao[10].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[10].companyid+","+guanggao[10].id+")'></div>" +
                 "<div class='p4 comm'><img src='"+guanggao[11].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[11].companyid+","+guanggao[11].id+")'></div>" +
                 "</div>"+
                 "<div class='a1'>" +
                 " <div class='p1 comm'><img src='"+guanggao[12].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[12].companyid+","+guanggao[12].id+")'></div>" +
                 "<div class='p2 comm'><img src='"+guanggao[13].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[13].companyid+","+guanggao[13].id+")'></div>" +
                 "<div class='p3 comm'><img src='"+guanggao[14].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[14].companyid+","+guanggao[14].id+")'></div>" +
                 "<div class='p4 comm'><img src='"+guanggao[15].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[15].companyid+","+guanggao[15].id+")'></div>" +
                 "</div>"+
                 "<div class='a1'>" +
                 " <div class='p1 comm'><img src='"+guanggao[16].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[16].companyid+","+guanggao[16].id+")'></div>" +
                 "<div class='p2 comm'><img src='"+guanggao[17].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[17].companyid+","+guanggao[17].id+")'></div>" +
                 "<div class='p3 comm'><img src='"+guanggao[18].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[18].companyid+","+guanggao[18].id+")'></div>" +
                 "<div class='p4 comm'><img src='"+guanggao[19].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[19].companyid+","+guanggao[19].id+")'></div>" +
                 "</div>"+
                 "<div class='a1'>";
                var a=1;
                for(i=20;i<guanggao.length;i++){

                    str+= " <div class='p"+a+" comm'><img src='"+guanggao[i].imageurl+"' width='145px' height='60px' onclick='selectxq("+guanggao[i].companyid+","+guanggao[i].id+")'></div>" ;
                    a++;
                }
                str += "</div>";

             $("#guanggaowei").html(str);
            },
            erro:function () {
                alert("呦呵呵，广告查询失败！！！");
            }
        })
    })
    
</script>
<script type="text/javascript">


    /***
     * 登录
     */

    function denglu(){
        //  alert("自我评价")//zwpjzt,
        var loginname =  $("#loginname").val()
        var password =  $("#password").val()

        $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/selectUserlogin.do",
            type:"post",
            data:{"loginname":loginname,"password":password},
          // dataType:'text',
            success:function (succen){
                var succen =eval("("+succen+")")
               // alert(succen)
                if(succen == "0"){
                    alert("账号或密码错误!!")
                }if(succen == "1"){
                    alert("欢迎登录招聘_求职_找工作_龙盾招聘平台!!")
                    location.href="<%=request.getContextPath()%>/qiantai/shouye.jsp";
                }
            },
            error:function(){
                alert("出错！！！")
            }
        })
    }


    function fasongyz(){
        //短信
        var phone=$("#phone").val();
        if(phone==null||phone==""||phone.length != 11){
            alert("请输入合法号码")
        }else{
            $("#anniu").prop("disabled",true);
            $("#anniu").html("再次发送")
            $(document).ready(function() {
                var times = 60 * 100; // 60秒
                countTime = setInterval(function() {
                    times = --times < 0 ? 0 : times;
                    var ms = Math.floor(times / 100).toString();

                    if(ms.length <= 1) {
                        ms = "0" + ms;
                    }
                    var hm = Math.floor(times % 100).toString();
                    if(hm.length <= 1) {
                        hm = "0" + hm;
                    }
                    if(times == 0) {
                        $("#anniu").removeAttr("disabled");
                        clearInterval(countTime);
                    }
                    // 获取分钟、毫秒数
                    $(".a").html(ms);
                    $(".b").html(hm);
                }, 10);
            });
            $.ajax({
                url:"<%=request.getContextPath()%>/userdatumController/queryphone.do",
                type:"post",
                data:{"phone":phone},
                dataType:"json",
                async:false,
                success:function(returns){
                },
                error:function(){
                    alert("请联系管理员！！！")
                }
            })
        }
    }


    function zhuche(){
        var phone = $("#phone").val()
        var password1 = $("#password1").val()
        var yzm = $("#yzm").val()
        //注册页
        $.ajax({
            url:"<%=request.getContextPath()%>/userdatumController/saveuserinfo.do",
            type:"post",
            data:{"phone":phone,"password1":password1,"yzm":yzm},
            dataType:"json",
            async:false,
            success:function (result){
                alert(result)
                var result = eval("("+result+")")
                if(result == "1"){
                    alert("验证码超时!")
                }
                if(result == "7"){
                    alert("用户已存在!")
                }
                if(result == "4"){
                    alert("对不起错误!")
                }
                if(result == "8"){
                    alert("注册成功!请您登录!!")
                    location.reload();
                }
            },
            error:function(){
                alert("注册出错误代码 4 ！！！")
            }
        })
    }



</script>
</body>
</html>
