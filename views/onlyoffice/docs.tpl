<!-- 文档列表 -->
<!DOCTYPE html>
<head>
  <title>fei-ONLYOFFICE</title>
  <meta name="renderer" content="webkit">
  <!-- 加上这句，360等浏览器就会默认使用google内核，而不是IE内核 。 -->
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <!-- 加上这一句，如果被用户强行使用IE浏览器，就会使用IE的最高版本渲染内核 -->
  <!-- <link type='text/css' href='/static/oo/files-3TmaoIbj3PAed78NYLoa7w2.css' rel='stylesheet' />
    <link type='text/css' href='/static/oo/common-HLDWebQ4QDcrVRYNq4-rWA2.css' rel='stylesheet' />
    <link type='text/css' href='/static/oo/files-CUBYqoHsKUGuN7k-PidXtQ2.css' rel='stylesheet' /> -->

  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap.min.css"/>
  <script type="text/javascript" src="/static/js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/css/bootstrap-table.min.css"/>
  <script type="text/javascript" src="/static/js/jquery.tablesorter.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table-zh-CN.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table-editable.min.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-editable.js"></script>
  <script type="text/javascript" src="/static/js/bootstrap-table-export.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/font-awesome-4.7.0/css/font-awesome.min.css"/>
  <script src="/static/js/tableExport.js"></script>
  <script type="text/javascript" charset="utf-8" src="/static/ueditor/ueditor.config.js"></script>
  <script type="text/javascript" charset="utf-8" src="/static/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加在语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
  <script type="text/javascript" charset="utf-8" src="/static/ueditor/lang/zh-cn/zh-cn.js"></script>
  <script type="text/javascript" src="/static/js/moment.min.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/css/webuploader.css">
  <script type="text/javascript" src="/static/js/webuploader.min.js"></script>
  
  <script type="text/javascript" src="/static/js/jquery-ui.min.js"></script>
  <script type="text/javascript" src="/static/bootstrap-datepicker/bootstrap-datepicker.js"></script>
  <script type="text/javascript" src="/static/bootstrap-datepicker/bootstrap-datepicker.zh-CN.js"></script>
  <link rel="stylesheet" type="text/css" href="/static/bootstrap-datepicker/bootstrap-datepicker3.css"/>
  <link rel="stylesheet" type="text/css" href="/static/css/select2.css"/>
  <script type="text/javascript" src="/static/js/select2.js"></script>


<!-- <script language="javascript" src="/static/oo/ga-teamlab.js" type="text/javascript"></script> -->


  <style type="text/css">
    #modalDialog .modal-header {cursor: move;}
    #modalDialog1 .modal-header {cursor: move;}
    #modalDialog2 .modal-header {cursor: move;}
    #modalDialog3 .modal-header {cursor: move;}
    #modalDialog4 .modal-header {cursor: move;}
    #modalDialog5 .modal-header {cursor: move;}
    #modalDialog6 .modal-header {cursor: move;}
    #modalDialog7 .modal-header {cursor: move;}
    #modalDialog8 .modal-header {cursor: move;}
    #modalDialog9 .modal-header {cursor: move;}
    #modalDialog10 .modal-header {cursor: move;}
      /*.form-group .datepicker{
        z-index: 9999;
      }*/
    /*模态框效果*/
    /*.modal-header {*/
      /*background: #00FF00;*/
      /*min-height: 16.42857143px;
      padding: 15px;
      border-bottom: 1px solid #e5e5e5;*/
    /*}*/
    /*.col-sm-1 input[type=checkbox]{
　　display: inline-block;
　　vertical-align: middle;
　　margin-bottom: 2px; 
    }*/
  </style>
</head>

<div class="container-fill">{{template "navbar" .}}</div>

<body>

<div class="col-lg-12">
  <h3>文档列表</h3>

  <div id="toolbar1" class="btn-group">
        <button type="button" data-name="createButton" id="createButton" class="btn btn-default" title="新建"> <i class="fa fa-plus">新建</i>
        </button>
        <!-- 多文件批量上传 -->
        <button type="button" data-name="addButton" id="addButton" class="btn btn-default" title="批量上传模式"> <i class="fa fa-plus">添加</i>
        </button>
        <button type="button" data-name="editorProdButton" id="editorProdButton" class="btn btn-default"> <i class="fa fa-edit" title="修改成果信息">编辑</i>
        </button>
        <button type="button" data-name="editorAttachButton" id="editorAttachButton" class="btn btn-default"> <i class="fa fa-edit" title="修改成果附件">编辑</i>
        </button>
        <button type="button" data-name="deleteButton" id="deleteButton" class="btn btn-default">
        <i class="fa fa-trash">删除</i>
        </button>
        <button type="button" data-name="sharesetting" id="sharesetting" class="btn btn-default">
        <i class="fa fa-share-alt">权限</i>
        </button>
        <button type="button" data-name="download" id="download" class="btn btn-default">
        <i class="fa fa-download">下载</i>
        </button>
        <button type="button" data-name="downloadas" id="downloadas" class="btn btn-default">
        <i class="fa fa-download">下载为</i>
        </button>
  </div>
<!--data-click-to-select="true" -->
  <table id="table0" 
        data-toggle="table" 
        data-url="/onlyoffice/data"
        data-search="true"
        data-show-refresh="true"
        data-show-toggle="true"
        data-show-columns="true"
        data-toolbar="#toolbar1"
        data-query-params="queryParams"
        data-sort-name="Code"
        data-sort-order="desc"
        data-page-size="15"
        data-page-list="[10,15, 50, 100, All]"
        data-unique-id="id"
        data-pagination="true"
        data-side-pagination="client"
        data-single-select="true"
        data-click-to-select="true"
        data-show-export="true"
        >
    <thead>        
      <tr>
        <!-- radiobox data-checkbox="true" data-formatter="setCode" data-formatter="setTitle"-->
        <th data-width="10" data-radio="true"></th>
        <th data-formatter="index1" data-align="center">#</th>
        <th data-field="Code" data-halign="center">编号</th>
        <th data-field="Title" data-halign="center">名称</th>
        <th data-field="Title"  data-formatter="setDocTitle" data-halign="center">名称</th>
        <th data-field="Label" data-formatter="setLable" data-halign="center" data-align="center">关键字</th>
        <th data-field="Principal" data-halign="center" data-align="center">负责人</th>
        <th data-field="Uname" data-halign="center" data-align="center">上传者</th>
        <th data-field="Docxlink" data-formatter="setDocx" data-events="actionEvents" data-halign="center" data-align="center">协作</th>
        <th data-field="Docxlink" data-formatter="setPermission" data-events="actionEvents" data-halign="center" data-align="center">权限</th>
        <!-- <th data-field="Xlsxlink" data-formatter="setXlsx" data-events="actionEvents" data-halign="center" data-align="center">XLSX</th> -->
        <!-- <th data-field="Pptxlink" data-formatter="setPptx" data-events="actionEvents" data-halign="center" data-align="center">PPTX</th> -->
        <th data-field="End" data-formatter="localDateFormatter" data-halign="center" data-align="center">结束时间</th>
        <th data-field="Created" data-formatter="localDateFormatter" data-halign="center" data-visible="false" data-align="center">建立时间</th>
        <th data-field="Updated" data-formatter="localDateFormatter" data-halign="center" data-align="center">更新时间</th>
      </tr>
    </thead>
  </table>

<script type="text/javascript">
  function index1(value,row,index){
    return index+1
  }

  function localDateFormatter(value) {
    return moment(value, 'YYYY-MM-DD').format('YYYY-MM-DD');
  }

  function setCode(value,row,index){
    return "<a href='/attachment/onlyoffice/"+value+"'>" + value + "</a>";
  }

  // 连接文档编号和文档名称
  function setDocTitle(value,row,index){
    if (value){
      if (row.Code==row.Title) {
        return row.Title;
      }else{
        return row.Code+row.Title;
      }
    }
  } 
  function setLable(value,row,index){
    // alert(value);
    if (value){//注意这里如果value未定义则出错，一定要加这个判断。
      var array=value.split(",")
      var labelarray = new Array() 
      for (i=0;i<array.length;i++)
      {
        labelarray[i]="<a href='/project/product/keysearch?keyword="+array[i]+"'>" + array[i] + "</a>";
      }
        return labelarray.join(",");
      }
  } 

  function setCodetest(value,row,index){
    //保留，数组和字符串以及循环的处理
    // array=value.split(",")
    // var labelarray = new Array() 
    // for (i=0;i<value.length;i++)//value是数组"Code":[数组"SL0001-510-08","SL0001-510-08"],
    // {
    //   labelarray[i]="<a href='/project/product/attachment/"+value[i]+"'>" + value[i] + "</a>";
    // }
    // if (value.match(",")!=null){
    if (value){
      array=value.split(",")
      var labelarray = new Array() 
      for (i=0;i<array.length;i++)
      {
        labelarray[i]="<a href='/project/product/attachment/"+array[i]+"'>" + array[i] + "</a>";
      }
      return labelarray.join(",");
    }
  }

  function setTitle(value,row,index){
    return "<a href='/attachment/onlyoffice/"+value+"'>" + value + "</a>";
  }

  //协作图标
  function setDocx(value,row,index){
    if (value){
      if (value.length==1){
        if (value[0].Suffix=="docx"){
          if (value[0].Permission=="4"){
            docUrl= '<a href=# title="拒绝访问"><i class="fa fa-file-word-o fa-lg"></i></a>';
          }else{
            docUrl= '<a href=/onlyoffice/'+value[0].Id+' title="协作" target="_blank"><i class="fa fa-file-word-o fa-lg"></i></a>';
          }
          return docUrl;
        }else if(value[0].Suffix=="xlsx"){
          if (value[0].Permission=="4"){
            xlsUrl= '<a href=# title="拒绝访问"><i class="fa fa-file-excel-o fa-lg" style="color:LimeGreen;"></i></a>';
          }else{
            xlsUrl= '<a href=/onlyoffice/'+value[0].Id+' title="协作" target="_blank"><i class="fa fa-file-excel-o fa-lg" style="color:LimeGreen;"></i></a>';
          }
          return xlsUrl;
        }else if(value[0].Suffix=="pptx"){
          if (value[0].Permission=="4"){
            pptUrl= '<a href=# title="拒绝访问"><i class="fa fa-file-powerpoint-o fa-lg" style="color:Red;"></i></a>';
          }else{
            pptUrl= '<a href=/onlyoffice/'+value[0].Id+' title="协作" target="_blank"><i class="fa fa-file-powerpoint-o fa-lg" style="color:Red;"></i></a>';
          }
          return pptUrl;
        }else if(value[0].Suffix=="pdf"){
          if (value[0].Permission=="4"){
            pdfUrl= '<a href=# title="拒绝访问"><i class="fa fa-file-pdf-o fa-lg" style="color:Brown;"></i></a>';
          }else{
            pdfUrl= '<a href=/onlyoffice/'+value[0].Id+' title="协作" target="_blank"><i class="fa fa-file-pdf-o fa-lg" style="color:Brown;"></i></a>';
          }
          return pdfUrl;
        }else if(value[0].Suffix=="txt"){
          if (value[0].Permission=="4"){
            txtUrl= '<a href=# title="拒绝访问"><i class="fa fa-file-word-o fa-lg"></i></a>';
          }else{
            txtUrl= '<a href=/onlyoffice/'+value[0].Id+' title="协作" target="_blank"><i class="fa fa-file-text-o fa-lg" style="color:black;"></i></a>';
          }
          return txtUrl;
        }
        
      }else if(value.length==0){
                    
      }else if(value.length>1){
        fileUrl= "<a class='Docx' href='javascript:void(0)' title='查看文档列表'><i class='fa fa-list-ol'></i></a>";
        return fileUrl;
      }
    }
  }

  //设置permission显示
  function setPermission(value,row,index){
        if (value[0].Permission=="1"){
          permission= '<i class="fa fa-pencil fa-lg" title="可查看、修改" style="color:#9e9e9e;"></i>';
          return permission;
        }else if (value[0].Permission=="2"){
          permission= '<i class="fa fa-commenting-o fa-lg" title="审阅" style="color:#9e9e9e;"></i>';
          return permission;
        }else if (value[0].Permission=="3"){
          permission= '<i class="fa fa-eye fa-lg" title="只读" style="color:#9e9e9e;"></i>';
          return permission;
        }else if (value[0].Permission=="4"){
          permission= '<i class="fa fa-eye-slash fa-lg" title="拒绝访问" style="color:#9e9e9e;"></i>';
          return permission;
        }
  }

  //设置permission选择
  // function setPermission(value,row,index){
  //   return "<select id='Status1' class='form-control'><option value='0'>正常</option><option value='1'>失效</option></select>";
  // }
  // function StatusFormatter(value, row, index) {
      //   // alert(row.Status);
      //   if (row.Status == "0") {
      //       return '正常';
      //   }else{
      //     return '失效';
      //   }
      // }
  //设置删除

  // function setXlsx(value,row,index){
  //   if (value){
  //     if (value.length==1){
  //       attachUrl= '<a href=/onlyoffice/'+value[0].Id+' title="下载" target="_blank"><i class="fa fa-file-excel-o"></i></a>';
  //       return attachUrl;
  //     }else if(value.length==0){
                    
  //     }else if(value.length>1){
  //       attachUrl= "<a class='Xlsx' href='javascript:void(0)' title='查看Xlsx列表'><i class='fa fa-list-ol'></i></a>";
  //       return attachUrl;
  //     }
  //   }
  // }

  // function setPptx(value,row,index){
  //   if (value){
  //     if (value.length==1){
  //       pdfUrl= '<a href=/onlyoffice/'+value[0].Id+' title="打开pdf" target="_blank"><i class="fa fa-file-powerpoint-o"></i></a>';
  //       return pdfUrl;
  //     }else if(value.length==0){
                    
  //     }else if(value.length>1){
  //       pdfUrl= "<a class='Pptx' href='javascript:void(0)' title='查看Pptx列表'><i class='fa fa-list-ol'></i></a>";
  //       return pdfUrl;
  //     }
  //   }
  // }

  window.actionEvents = {
    'click .Docx': function (e, value, row, index) {
        $('#docx').bootstrapTable('refresh', {url:'/onlyoffice/docx/'+row.Id});
      $('#modaldocx').modal({
        show:true,
        backdrop:'static'
      }); 
    },

    'click .Xlsx': function (e, value, row, index) {
        $('#xlsx').bootstrapTable('refresh', {url:'/onlyoffice/xlsx/'+row.Id});
      $('#modalxlsx').modal({
        show:true,
        backdrop:'static'
      }); 
    },

    'click .Pptx': function (e, value, row, index) {
        $('#pptx').bootstrapTable('refresh', {url:'/onlyoffice/pptx/'+row.Id});
      $('#modalpptx').modal({
        show:true,
        backdrop:'static'
      }); 
    },
  };

  //最后面弹出doc列表中用的_根据上面的click，弹出模态框，给模态框中的链接赋值
  function setDocxlink(value,row,index){
    docxUrl= '<a href="'+value+'" title="下载" target="_blank"><i class="fa fa-file-text-o"></i></a>';
      return docxUrl;
  }
  //最后面弹出附件列表中用的<a href="'+value+
  function setXlsxlink(value,row,index){
    xlsxUrl= '<a href="/onlyoffice?id='+row.Id+'" title="下载" target="_blank"><i class="fa fa-paperclip"></i></a>';
      return xlsxUrl;
  }
  //最后面弹出pdf列表中用的'&file='+value+
  function setPptxlink(value,row,index){
    pptxUrl= '<a href="/onlyoffice?id='+row.Id+'" title="下载" target="_blank"><i class="fa fa-file-pdf-o"></i></a>';
      return pptxUrl;
  }

  // 批量上传
  $("#addButton").click(function() {
      if ({{.IsLogin}}!="true"){
        alert("请登录！");
        return;
      }
      $("input#pid").remove();
      var th1="<input id='pid' type='hidden' name='pid' value='" +{{.Id}}+"'/>"
        $(".modal-body").append(th1);
        $('#modalTable').modal({
        show:true,
        backdrop:'static'
        });
  })

  $(document).ready(function() {
    $list1 = $('#thelist');
    $btn = $('#ctlBtn');
    state = 'pending';
    // $('#modalTable').on('shown.bs.modal',function(e){
      var allMaxSize = 100;
      var uploader=WebUploader.create({
        // 不压缩image
        resize: false,
        fileSingleSizeLimit: 60*1024*1024,//限制大小10M，单文件
        fileSizeLimit: allMaxSize*1024*1024,//限制大小10M，所有被选文件，超出选择不上
        // swf文件路径
        swf: '/static/js/Uploader.swf',
        // 文件接收服务端。
        server: '/onlyoffice/addattachment',
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#picker',
        // 只允许选择规定文件类型。
        accept: {
            title: 'Images',
            extensions: 'doc,docx,wps,xls,xlsx,et,csv,ppt,pptx,dps,txt,pdf',
            mimeTypes: '*/*'
        }
      });
      /**
     * 验证文件格式以及文件大小
     */
      uploader.on("error",function (type){
        if (type == "F_DUPLICATE") {
              alert("请不要重复选择文件！");
         } else if (type == "Q_EXCEED_SIZE_LIMIT"){
              alert("所选附件总大小不可超过" + allMaxSize + "M！多分几次传吧！");
         }else if (type=="Q_TYPE_DENIED"){
          alert("请上传文档格式文件");
        }else if(type=="F_EXCEED_SIZE"){
          alert("单个文件大小不能超过10M");
        }
      });

      // 当有文件添加进来的时候
      uploader.on( 'fileQueued', function( file ) {
       $list1.append( '<div id="' + file.id + '" class="item">' +
            '<h4 class="info">' + file.name + '</h4>' +
            '<p class="state">等待上传...</p>' +
        '</div>');
      }); 

      //传递参数——成果id
      uploader.on( 'startUpload', function() {//uploadBeforeSend——这个居然不行？
      // if (prodlabel){
        var pid = $('#pid').val();
        var prodlabel = $('#prodlabel').val();
        var prodprincipal = $('#prodprincipal').val();
        var newDate = $("#Date").val();
        uploader.option('formData', {
          "pid":pid,
          "prodlabel":prodlabel,
          "prodprincipal":prodprincipal,
          "proddate":newDate
        }); 
      });

      // 文件上传过程中创建进度条实时显示。
      uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
            $percent = $li.find('.progress .progress-bar');
        // 避免重复创建
        if ( !$percent.length ) {
            $percent = $('<div class="progress progress-striped active">' +
              '<div class="progress-bar" role="progressbar" style="width: 0%">' +
              '</div>' +
            '</div>').appendTo( $li ).find('.progress-bar');
        }
        $li.find('p.state').text('上传中');
        $percent.css( 'width', percentage * 100 + '%' );
      });

      uploader.on( 'uploadSuccess', function( file ) {
        $( '#'+file.id ).find('p.state').text('已上传');
      });

      uploader.on( 'uploadError', function( file ) {
        $( '#'+file.id ).find('p.state').text('上传出错');
      });

      uploader.on( 'uploadComplete', function( file ) {
        $( '#'+file.id ).find('.progress').fadeOut();
        $('#table0').bootstrapTable('refresh', {url:'/onlyoffice/data'});
      });

      uploader.on( 'all', function( type ) {
        if ( type === 'startUpload' ) {
            state = 'uploading';
        } else if ( type === 'stopUpload' ) {
            state = 'paused';
        } else if ( type === 'uploadFinished' ) {
            state = 'done';
        }
        if ( state === 'uploading' ) {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
      });
    
      $btn.on( 'click', function() {
        if ( state === 'uploading' ) {
            uploader.stop();
        } else {
            uploader.upload();
        }
      });

      $('#picker').mouseenter(function(){
        uploader.refresh();
      })

      $('#modalTable').on('hide.bs.modal',function(){
        $list1.text("");
        // uploader.destroy();//销毁uploader
      })
  })

  // 编辑成果信息
  $("#editorProdButton").click(function() {
      var selectRow=$('#table0').bootstrapTable('getSelections');
      if (selectRow.length<1){
        alert("请先勾选成果！");
        return;
      }
      if (selectRow.length>1){
        alert("请不要勾选一个以上成果！");
        return;
      }

      $("input#cid").remove();
      var th1="<input id='cid' type='hidden' name='cid' value='" +selectRow[0].Id+"'/>"
      $(".modal-body").append(th1);//这里是否要换名字$("p").remove();
      $("#prodcode3").val(selectRow[0].Code);
      $("#prodname3").val(selectRow[0].Title);
      $("#prodlabel3").val(selectRow[0].Label);
      $("#prodprincipal3").val(selectRow[0].Principal);
      //selectRow[0].End
      $("#proddate3").val(moment(selectRow[0].End, 'YYYY-MM-DD').format('YYYY-MM-DD'));

      $('#modalProdEditor').modal({
        show:true,
        backdrop:'static'
      });
  })

  // 编辑成果附件——删除附件、文章或追加附件
  var selectrowid;
  $("#editorAttachButton").click(function() {
      var selectRow=$('#table0').bootstrapTable('getSelections');
      if (selectRow.length<1){
        alert("请先勾选成果！");
        return;
      }
      if (selectRow.length>1){
      alert("请不要勾选一个以上成果！");
      return;
      }

      selectrowid=selectRow[0].Id;
      $("input#pid").remove();
      var th1="<input id='pid' type='hidden' name='pid' value='" +selectRow[0].Id+"'/>"
      $(".modal-body").append(th1);//这里是否要换名字$("p").remove();
      $('#attachments').bootstrapTable('refresh', {url:'/onlyoffice/'+selectRow[0].Id});//取得所有附件列表和文章列表
      $('#modalAttachEditor').modal({
        show:true,
        backdrop:'static'
      });
      // }else{
      //   alert("权限不够！"+selectRow[0].Uid);
      //   return;
      // }
  })

    // 分享设置
  $("#sharesetting").click(function() {
    var selectRow=$('#table0').bootstrapTable('getSelections');
      if (selectRow.length<1){
        alert("请先勾选成果！");
        return;
      }
      if (selectRow.length>1){
        alert("请不要勾选一个以上成果！");
        return;
      }
    // alert(selectRow[0].Uid);
    //必须登录用户上传的文档，具有uid，才能设置权限。
    if ({{.Uid}}===0){
        alert("请登录！");
        return;
    }else if (selectRow[0].Uid==={{.Uid}}||{{.IsAdmin}}){
      $("input#pid").remove();
      var th1="<input id='pid' type='hidden' name='pid' value='" +selectRow[0].Id+"'/>"
      $(".modal-body").append(th1);//这里是否要换名字$("p").remove();
      $('#tableusers1').bootstrapTable('refresh', {url:'/onlyoffice/getpermission?docid='+selectRow[0].Id});//取得这个文档的用户和角色列表
      $('#modalsharesetting').modal({
        show:true,
        backdrop:'static'
      });
    }else{
      alert("权限不够！因为上传文档用户id为："+selectRow[0].Uid+"，你的id为："+{{.Uid}}+"!");
      return;
    }
  })

  //下载
  $("#download").click(function() {
      var selectRow=$('#table0').bootstrapTable('getSelections');
      // alert(selectRow[0].Docxlink[0].Permission);
      // alert(JSON.stringify(selectRow));
      if (selectRow.length<1){
        alert("请先勾选成果！");
        return;
      }
      if (selectRow.length>1){
        alert("请不要勾选一个以上成果！");
        return;
      }
      if (selectRow[0].Docxlink[0].Permission=="1"){
        // window.location.href="/attachment/onlyoffice/"+selectRow[0].Id;
        // window.open("https://codeload.github.com/douban/douban-client/legacy.zip/master");
        var $eleForm = $("<form method='get'></form>");
        $eleForm.attr("action","/onlyoffice/download/"+selectRow[0].Id);
        $(document.body).append($eleForm);
        //提交表单，实现下载
        $eleForm.submit();
      }else{
        alert("权限不够！"+selectRow[0].Docxlink[0].Permission);
        return;
      }
  })

  // 构造表单下载
    // $('.download').click(function () {
    //   var tt = new Date().getTime();
    //   var url = 'http://192.168.1.231:8080/91survey/ws/excel/download';
      /**
       * 使用form表单来发送请求
      * 1.method属性用来设置请求的类型——post还是get
      * 2.action属性用来设置请求路径。
      * */
      // var form=$("<form>");//定义一个form表单
      // form.attr("style","display:none");
      // form.attr("target","");
      // form.attr("method","get");  //请求类型
      // form.attr("action",url);   //请求地址
      // $("body").append(form);//将表单放置在web中
    　　/**
         * input标签主要用来传递请求所需的参数：
         *
         * 1.name属性是传递请求所需的参数名.
         * 2.value属性是传递请求所需的参数值.
         *
         * 3.当为get类型时，请求所需的参数用input标签来传递，直接写在URL后面是无效的。
         * 4.当为post类型时，queryString参数直接写在URL后面，formData参数则用input标签传递
         *       有多少数据则使用多少input标签
         **/
    //   var input1=$("<input>");
    //   input1.attr("type","hidden");
    //   input1.attr("name","tt");
    //   input1.attr("value",tt);
    //   form.append(input1);
  
    //   var input2=$("<input>");
    //   input2.attr("type","hidden");
    //   input2.attr("name","companyId");
    //   input2.attr("value",companyId);
    //   form.append(input2);

    //   form.submit();//表单提交
    // })

  $(document).ready(function() {
    var uploader;
    $('#modalAttachEditor').on('shown.bs.modal',function(){
      // var $ = jQuery,
      $list2 = $('#thelist2'),
      $btn = $('#ctlBtn2'),
      state = 'pending',
      // uploader;
      uploader = WebUploader.create({
        // 不压缩image
        resize: false,
        // swf文件路径
        swf: '/static/js/Uploader.swf',
        // 文件接收服务端。
        server: '/onlyoffice/updateattachment',
        // 选择文件的按钮。可选。
        // 内部根据当前运行是创建，可能是input元素，也可能是flash.
        pick: '#picker2'
      });
      // 当有文件添加进来的时候
      uploader.on( 'fileQueued', function( file ) {
        $list2.append( '<div id="' + file.id + '" class="item">' +
              '<h4 class="info">' + file.name + '</h4>' +
              '<p class="state">等待上传...</p>' +
          '</div>' );
      }); 

      //传递参数——成果id
      uploader.on( 'startUpload', function() {//uploadBeforeSend——这个居然不行？
        var pid = $('#pid').val();
        uploader.option('formData', {
          "pid":pid,
        });        
      });

      // 文件上传过程中创建进度条实时显示。
      uploader.on( 'uploadProgress', function( file, percentage ) {
        var $li = $( '#'+file.id ),
        $percent = $li.find('.progress .progress-bar');
        // 避免重复创建
        if ( !$percent.length ) {
          $percent = $('<div class="progress progress-striped active">' +
                '<div class="progress-bar" role="progressbar" style="width: 0%">' +
              '</div>' +
              '</div>').appendTo( $li ).find('.progress-bar');
        }
        $li.find('p.state').text('上传中');
        $percent.css( 'width', percentage * 100 + '%' );
      });

      uploader.on( 'uploadSuccess', function( file ) {
          $( '#'+file.id ).find('p.state').text('已上传');
      });

      uploader.on( 'uploadError', function( file ) {
          $( '#'+file.id ).find('p.state').text('上传出错');
      });

      uploader.on( 'uploadComplete', function( file ) {
          $( '#'+file.id ).find('.progress').fadeOut();
          $('#attachments').bootstrapTable('refresh', {url:'/onlyoffice/'+selectrowid});
          $('#table0').bootstrapTable('refresh', {url:'/onlyoffice/data'});
      });

      uploader.on( 'all', function( type ) {
        if ( type === 'startUpload' ) {
            state = 'uploading';
        } else if ( type === 'stopUpload' ) {
            state = 'paused';
        } else if ( type === 'uploadFinished' ) {
            state = 'done';
        }
        if ( state === 'uploading' ) {
            $btn.text('暂停上传');
        } else {
            $btn.text('开始上传');
        }
      });
    
      $btn.on( 'click', function() {
          if ( state === 'uploading' ) {
              uploader.stop();
          } else {
              uploader.upload();
          }
      });
    })

    $('#modalAttachEditor').on('hide.bs.modal',function(){
      $list2.text("");
      uploader.destroy();//销毁uploader
    })
  })
    
  // 删除成果
  $("#deleteButton").click(function() {
    if ({{.IsAdmin}}){
      var selectRow=$('#table0').bootstrapTable('getSelections');
      if (selectRow.length<=0) {
        alert("请先勾选成果！");
        return false;
      }
     //问题：如果多选，而其中有自己的，也有自己不具备权限的********
      // if (selectRow[0].Uid==={{.Uid}}||{{.RoleDelete}}=="true"){
      if(confirm("确定删除成果吗？一旦删除将无法恢复！")){
        var title=$.map(selectRow,function(row){
          return row.Title;
        })
        var ids="";
        for(var i=0;i<selectRow.length;i++){
          if(i==0){
            ids=selectRow[i].Id;
          }else{
            ids=ids+","+selectRow[i].Id;
          }  
        }
        $.ajax({
          type:"post",
          url:"/onlyoffice/deletedoc",
          data: {ids:ids},
          success:function(data,status){
            alert("删除“"+data+"”成功！(status:"+status+".)");
            //删除已选数据
            $('#table0').bootstrapTable('remove',{
              field:'Title',
              values:title
            });
          }
        });
      }
    }else{
      alert("权限不够！");
      return;
    }
  })

</script>
  <!-- 批量上传 -->
  <div class="form-horizontal">
    <div class="modal fade" id="modalTable">
      <div class="modal-dialog" id="modalDialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">批量添加成果</h3>
            
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <label>**请选择标准命名的电子文件上传：编号+名称**</label>
              <div class="form-group must">
                <label class="col-sm-3 control-label">关键字</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="prodlabel" placeholder="以英文,号分割"></div>
              </div>
              <div class="form-group">
                  <label class="col-sm-3 control-label">结束时间</label>
                  <div class="col-sm-3">
                    <span style="position: relative;z-index: 9999;">
                      <input type="text" class='datepicker' id='Date'/>
                    </span>
                  </div>    
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">负责人</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="prodprincipal" placeholder="输入姓名"></div>
              </div>
              <!--SWF在初始化的时候指定，在后面将展示-->
              <div id="uploader" style="position:relative;text-align: center;">
              <!--用来存放文件信息-->
                <div id="thelist"></div>
                <div class="btns">
                  <div id="picker">选择文件</div>
                  <button id="ctlBtn" class="btn btn-default">开始上传</button>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 编辑成果名称等信息 -->
  <div class="form-horizontal">
    <div class="modal fade" id="modalProdEditor">
      <div class="modal-dialog" id="modalDialog6">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">编辑文档信息</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <div class="form-group must">
                <label class="col-sm-3 control-label">编号</label>
                <div class="col-sm-7">
                  <input type="text" class="form-control" id="prodcode3"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">标题</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="prodname3"></div>
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">关键字</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="prodlabel3" placeholder="以英文,号分割"></div>
              </div>
              <div class="form-group">
                  <label class="col-sm-3 control-label">结束时间</label>
                  <div class="col-sm-3">
                    <span style="position: relative;z-index: 9999;">
                      <input type="text" class='datepicker' id='proddate3'/>
                    </span>
                  </div>    
              </div>
              <div class="form-group must">
                <label class="col-sm-3 control-label">负责人</label>
                <div class="col-sm-7">
                  <input type="tel" class="form-control" id="prodprincipal3"></div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
            <button type="button" class="btn btn-primary" onclick="updateprod()">保存</button>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- 编辑成果附件 删除附件或追加附件-->
  <div class="form-horizontal">
    <div class="modal fade" id="modalAttachEditor">
      <div class="modal-dialog" id="modalDialog7">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">编辑成果附件</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <div id="attachtoolbar" class="btn-group">
                <button type="button" data-name="deleteAttachButton" id="deleteAttachButton" class="btn btn-default">
                <i class="fa fa-trash">删除</i>
                </button>
              </div>
              <table id="attachments"
                    data-toggle="table"
                    data-toolbar="#attachtoolbar"
                    data-page-size="5"
                    data-page-list="[5, 25, 50, All]"
                    data-unique-id="id"
                    data-pagination="true"
                    data-side-pagination="client"
                    data-click-to-select="true">
                  <thead>     
                  <tr>
                    <th data-width="10" data-checkbox="true"></th>
                    <th data-formatter="index1">#</th>
                    <th data-field="Title">名称</th>
                    <th data-field="FileSize">大小</th>
                    <th data-field="Link" data-formatter="setAttachlink">下载</th>
                    <th data-field="Created" data-formatter="localDateFormatter">建立时间</th>
                    <th data-field="Updated" data-formatter="localDateFormatter">修改时间</th>
                  </tr>
                </thead>
              </table>
              <!--SWF在初始化的时候指定，在后面将展示-->
              <div id="uploader1" style="position:relative;text-align: center;">
              <!--用来存放文件信息-->
                <div id="thelist2"></div>
                <div class="btns">
                  <div id="picker2">选择文件</div>
                  <button id="ctlBtn2" class="btn btn-default">开始上传</button>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- 分享设置 -->
  <div class="form-horizontal">
    <div class="modal fade" id="modalsharesetting">
      <div class="modal-dialog" id="modalDialog8">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">
              <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title">分享设置Sharing Settings</h3>
          </div>
          <div class="modal-body">
            <div class="modal-body-content">
              <div id="" class="btn-group">
                <!-- <a data-toggle="modal" href="#users" class="btn btn-default"> -->
                <button type="button" id="addusers" class="btn btn-default"><i class="fa fa-plus">&nbsp;&nbsp;Add Users</i>
                </button>
                <!-- </a> -->
                <div class="btn-group">
                  <button class="btn btn-default dropdown-toggle" type="button" id="" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                    <i id="dropdownMenu1" class="fa fa-eye">&nbsp;&nbsp;</i>
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" aria-labelledby="">
                    <li>
                      <a href="#" onclick="shows($(this).text())"><i class="fa fa-pencil">&nbsp;&nbsp;Full Access</i></a>
                    </li>
                    <li>
                      <a href="#" onclick="shows($(this).text())"><i class="fa fa-commenting-o">&nbsp;&nbsp;Review</i></a>
                    </li>
                    <li>
                      <a href="#" onclick="shows($(this).text())"><i class="fa fa-eye">&nbsp;&nbsp;Read Only</i></a>
                    </li>
                    <li>
                      <a href="#" onclick="shows($(this).text())"><i class="fa fa-eye-slash">&nbsp;&nbsp;Deny Access</i></a>
                    </li>
                  </ul>
                </div>
              </div>

              <div id="" class="btn-group">
                <button type="button" data-name="" id="addroles" class="btn btn-default">
                <i class="fa fa-plus">&nbsp;&nbsp;Add Groups</i>
                </button>
                <div class="btn-group">
                  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" id="addgroups">
                    <span class="buttonText"><i id="dropdownMenu2" class="fa fa-eye">&nbsp;&nbsp;</i></span>
                    <span class="caret"></span>
                  </button>
                  <ul class="dropdown-menu" role="menu">
                    <li>
                      <a href="#" onclick="shows1($(this).text())"><i class="fa fa-pencil">&nbsp;&nbsp;Full Access</i></a>
                    </li>
                    <li>
                      <a href="#" onclick="shows1($(this).text())"><i class="fa fa-commenting-o">&nbsp;&nbsp;Review</i></a>
                    </li>
                    <li>
                      <a href="#" onclick="shows1($(this).text())"><i class="fa fa-eye">&nbsp;&nbsp;Read Only</i></a>
                    </li>
                    <li>
                      <a href="#" onclick="shows1($(this).text())"><i class="fa fa-eye-slash">&nbsp;&nbsp;Deny Access</i></a>
                    </li>
                  </ul>
                </div>
              </div>

              <table id="tableusers1"
                    data-search="true"
                    data-toolbar=""
                    data-page-size="5"
                    data-page-list="[5, 25, 50, All]"
                    data-unique-id="name"
                    data-pagination="true"
                    data-side-pagination="client"
                    data-click-to-select="false">
              </table>
            </div>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="saveusers" data-method="" onclick="return saveusers()">保存</button>
            <button type="button" href="#" class="btn btn-default" data-dismiss="modal">关闭</button>
          </div>
          <!-- <div class="modal-footer">
            <a data-toggle="modal"  class="btn btn-primary btn-large">弹出第二个模态框</a>
            <a  class="btn" data-dismiss="modal">关闭</a>
          </div> -->
        </div>
      </div>
    </div>
  </div>

  <!-- 用户列表模态框 -->
  <div class="form-horizontal">
    <div class="modal fade" id="users">
      <div class="modal-dialog" id="modalDialog9">
        <div class="modal-content">
          <div class="modal-header" style="background-color: #8bc34a">
            <a class="close" data-dismiss="modal">×</a>
            <h3>用户列表</h3>
          </div>
          <div class="modal-body">
            <table id="tableusers20"
              data-search="true"
              data-show-refresh="true"
              data-show-toggle="true"
              data-show-columns="true"
              data-striped="true"
              data-toolbar="#toolbar"
              data-query-params="queryParams"
              data-sort-name="Username"
              data-sort-order="desc"
              data-page-size="5"
              data-page-list="[5, 25, 50, All]"
              data-unique-id="id"
              data-pagination="true"
              data-side-pagination="client"
              data-click-to-select="true"
              data-show-export="true"
              >
            </table>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-primary" id="btn2Right" data-method="append">保存</button>
            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
          </div>
        </div>
      </div>
    </div>
  </div>

<!-- 角色列表模态框 -->
<div class="form-horizontal">
  <div class="modal fade" id="roles">
    <div class="modal-dialog" id="modalDialog10">
      <div class="modal-content">
        <div class="modal-header" style="background-color: #FF5722;">
          <a class="close" data-dismiss="modal">×</a>
          <h3>角色列表</h3>
        </div>
        <div class="modal-body">
          <table id="tableusers21"
            data-search="true"
            data-show-refresh="true"
            data-show-toggle="true"
            data-show-columns="true"
            data-striped="true"
            data-toolbar="#toolbar"
            data-query-params="queryParams"
            data-sort-name="Rolename"
            data-sort-order="desc"
            data-page-size="5"
            data-page-list="[5, 25, 50, All]"
            data-unique-id="id"
            data-pagination="true"
            data-side-pagination="client"
            data-click-to-select="true"
            data-show-export="true"
            >
          </table>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" id="btn2Right1" data-method="append">保存</button>
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        </div>
      </div>
    </div>
  </div>
</div>

</div>

<script type="text/javascript">
    //选择用户的角色
    function shows(a) {
      // alert(a);
      if (a=="  Full Access"){
        $("#dropdownMenu1").removeClass();
        $("#dropdownMenu1").addClass("fa fa-pencil");
      }else if(a=="  Review"){
        $("#dropdownMenu1").removeClass();
        $("#dropdownMenu1").addClass("fa fa-commenting-o");
      }else if(a=="  Read Only"){
        $("#dropdownMenu1").removeClass();
        $("#dropdownMenu1").addClass("fa fa-eye");
      }else if(a=="  Deny Access"){
        $("#dropdownMenu1").removeClass();
        $("#dropdownMenu1").addClass("fa fa-eye-slash");
      }
      // $('.buttonText').text(a)
    }

    //选择角色的权限
    function shows1(a) {
      if (a=="  Full Access"){
        $("#dropdownMenu2").removeClass();
        $("#dropdownMenu2").addClass("fa fa-pencil");
      }else if(a=="  Review"){
        $("#dropdownMenu2").removeClass();
        $("#dropdownMenu2").addClass("fa fa-commenting-o");
      }else if(a=="  Read Only"){
        $("#dropdownMenu2").removeClass();
        $("#dropdownMenu2").addClass("fa fa-eye");
      }else if(a=="  Deny Access"){
        $("#dropdownMenu2").removeClass();
        $("#dropdownMenu2").addClass("fa fa-eye-slash");
      }
      // $('.buttonText').text(a)
    }

    $("#Date").datepicker({
        weekStart: 1,
        language: "zh-CN",
        autoclose: true,//选中之后自动隐藏日期选择框
        clearBtn: true,//清除按钮
        todayBtn: 'linked',//今日按钮
        setDate:moment(),
        todayHighlight:true,
        format: "yyyy-mm-dd"//日期格式，详见 http://bootstrap-datepicker.readthedocs.org/en/release/options.html#format
    });

    $(document).ready(function() {
      var now = new Date(); 
      myDate=new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate(); 
      $("#Date").val(myDate);
    })

    $("#proddate3").datepicker({
        weekStart: 1,
        language: "zh-CN",
        autoclose: true,//选中之后自动隐藏日期选择框
        clearBtn: true,//清除按钮
        todayBtn: 'linked',//今日按钮
        setDate:moment(),
        todayHighlight:true,
        format: "yyyy-mm-dd"//日期格式，详见 http://bootstrap-datepicker.readthedocs.org/en/release/options.html#format
    });

  // 编辑成果信息
  function updateprod(){
    // var radio =$("input[type='radio']:checked").val();
    var projectid = $('#cid').val();
    var prodcode = $('#prodcode3').val();
    var prodname = $('#prodname3').val();
    var prodlabel = $('#prodlabel3').val();
    var prodprincipal = $('#prodprincipal3').val();
    var proddate = $('#proddate3').val();
 	  //alert(proddate);
    if (prodname&&prodcode){  
      $.ajax({
        type:"post",
        url:"onlyoffice/updatedoc",
        data: {pid:projectid,code:prodcode,title:prodname,label:prodlabel,principal:prodprincipal,proddate:proddate},//父级id
        success:function(data,status){
          alert("添加“"+data+"”成功！(status:"+status+".)");
          $('#modalProdEditor').modal('hide');
          $('#table0').bootstrapTable('refresh', {url:'/onlyoffice/data'});
        },
        
      });
    }else{
      alert("请填写编号和名称！");
      return;
    }
  }

  // 删除附件
  $("#deleteAttachButton").click(function() {
      // if ({{.role}}!=1){
      //   alert("权限不够！");
      //   return;
      // }
      if ({{.RoleDelete}}!="true"){
        alert("权限不够！");
        return;
      }
      var selectRow=$('#attachments').bootstrapTable('getSelections');
      if (selectRow.length<=0) {
        alert("请先勾选！");
        return false;
      }

      if ({{.RoleDelete}}!="true"){
        alert("权限不够！"+selectRow[0].Uid);
        return;
      }

      if(confirm("确定删除吗？一旦删除将无法恢复！")){
        var title=$.map(selectRow,function(row){
          return row.Title;
        })
        var ids="";
        for(var i=0;i<selectRow.length;i++){
          if(i==0){
            ids=selectRow[i].Id;
          }else{
            ids=ids+","+selectRow[i].Id;
          }  
        }
        $.ajax({
          type:"post",
          url:"/onlyoffice/deleteonlyattachment",
          data: {ids:ids},
          success:function(data,status){
            alert("删除“"+data+"”成功！(status:"+status+".)");
            //删除已选数据
            $('#attachments').bootstrapTable('remove',{
              field:'Title',
              values:title
            });
          }
        });
      }  
  })

    //******表格追加项目同步ip中的数据*******
    $(function () {
        $('#synchIP').click(function () {
          // alert("ha ");
          $.ajax({
            type:"get",
            url:"/project/synchproducts/"+{{.Id}},
            // data: {ids:ids},
            success:function(data,status){
              alert("同步成功！(status:"+status+".)");
              //追加数据
              $('#table0').bootstrapTable('append', data);
              $('#table0').bootstrapTable('scrollTo', 'bottom');
            }
          });
        });
    });

    function randomData() {
        var startId = ~~(Math.random() * 100),
                rows = [];
        for (var i = 0; i < 10; i++) {
            rows.push({
              Id: startId + i,
              Code:startId + i,
              Title: 'test' + (startId + i),
                // id: startId + i,
                // name: 'test' + (startId + i),
                // price: '$' + (startId + i)
            });
        }
        return rows;
    }

    //勾选后输入框可用
    function station_select(){ 
      if(box.checked){ 
        document.getElementById("relevancy").disabled=false; 
      } else{ 
        document.getElementById("relevancy").disabled=true; 
      } 
    }

    //模态框可移动
    $(document).ready(function(){
        $("#modalDialog").draggable({ handle: ".modal-header" });//为模态对话框添加拖拽,仅头部能拖动
        $("#modalDialog1").draggable({ handle: ".modal-header" });
        $("#modalDialog2").draggable({ handle: ".modal-header" });
        $("#modalDialog3").draggable({ handle: ".modal-header" });
        $("#modalDialog4").draggable({ handle: ".modal-header" });
        $("#modalDialog5").draggable({ handle: ".modal-header" });
        $("#modalDialog6").draggable({ handle: ".modal-header" });
        $("#modalDialog7").draggable({ handle: ".modal-header" });
        $("#modalDialog8").draggable({ handle: ".modal-header" });
        $("#modalDialog9").draggable({ handle: ".modal-header" });
        $("#modalDialog10").draggable({ handle: ".modal-header" });
        $("#myModal").css("overflow", "hidden");//禁止模态对话框的半透明背景滚动
    })

    //选择用户表
    $(function () {
      $tableLeft = $('#tableusers20').bootstrapTable({
        idField: 'Id',
        // url: '/admin/user',
        // striped: "true",
        columns: [
          {
            checkbox: 'true',
            width: '10'
          },
          {
            // field: 'Number',
            title: '序号',
            halign: 'center',
            align: 'center',
            formatter:function(value,row,index){
            return index+1
            }
          },{
            field: 'name',
            title: '用户名',
            halign: 'center',
            align: 'center',
            // sortable:'true',
            // editable: {
                // type: 'text',
                // pk: 1,
                // url: '/admin/user/updateuser',
                // title: 'Enter ProjectNumber' 
            // }
          },{
            field: 'Nickname',
            title: '昵称',
            halign: 'center',
            align: 'center',
            // editable: {
                // type: 'text',
                // pk: 1,
                // url: '/admin/user/updateuser',
                // title: 'Enter ProjectName'  
            // }
          },{
            field: 'Department',
            title: '部门',
            halign: 'center',
            align: 'center',
            // editable: {
                // type: 'text',
                // pk: 1,
                // url: '/admin/user/updateuser',
                // title: 'Enter Department'  
            // }
          },{
            field: 'Secoffice',
            title: '科室',
            sortable:'true',
            halign: 'center',
            align: 'center',
            // editable: {
                // type: 'text',
                // source: {{.Select2}},//["$1", "$2", "$3"],
                // pk: 1,
                // url: '/admin/user/updateuser',
                // title: 'Enter Category' 
            // }
          },{
            field: 'role',
            // visible: false,
            title: '权限',
            halign: 'center',
            align: 'center',
            editable: {
                type: 'select2', 
                source: [
                      {id: '1', text: '  Full Access',value:1},
                      {id: '2', text: '  Review',value:2},
                      {id: '3', text: '  Read Only',value:3},
                      {id: '4', text: '  Deny Access',value:4}
                   ],
              //'[{"id": "1", "text": "One"}, {"id": "2", "text": "Two"}]'
              //Because the value attribute on a <select> tag must be a string, and Select2 generates the value attribute from the id property of the data objects, the id property on each data object must also be a string.

              // Select2 will attempt to convert anything that is not a string to a string, which will work for most situations, but it is recommended to explicitly convert your ids to strings ahead of time.

              // Blank ids or an id with a value of 0 are not permitted.
                select2: {
                  allowClear: true,
                  width: '150px',
                  placeholder: '请选择权限',
                  // multiple: true
                },
                pk: 1,
                // url: '/admin/user/updateuser',
                title: 'Enter Status'  
            }
          // },{
          //   field:'action',
          //   title: '操作',
          //   formatter:'actionFormatter',
          //   events:'actionEvents',
          }
        ]
      });
    });

    //选择角色表
    $(function () {
      $tableLeft1 = $('#tableusers21').bootstrapTable({
        idField: 'Id',
        columns: [
          {
            checkbox: 'true',
            width: '10'
          },
          {
            title: '序号',
            halign: 'center',
            align: 'center',
            formatter:function(value,row,index){
            return index+1
            }
          },{
            field: 'Rolenumber',
            title: '角色编码',
            halign: 'center',
            align: 'center',
          },{
            field: 'name',
            title: '角色名称',
            halign: 'center',
            align: 'center',
          },{
            field: 'role',
            title: '权限',
            halign: 'center',
            align: 'center',
            editable: {
                type: 'select2', 
                source: [
                      {id: '1', text: '  Full Access',value:1},
                      {id: '2', text: '  Review',value:2},
                      {id: '3', text: '  Read Only',value:3},
                      {id: '4', text: '  Deny Access',value:4}
                   ],
                select2: {
                  allowClear: true,
                  width: '150px',
                  placeholder: '请选择权限',
                },
                pk: 1,
                title: 'Enter Status'  
            }
          }
        ]
      });
    });

    //设置用户权限表
    $(function () {
      $tableRight = $('#tableusers1').bootstrapTable({
        idField: 'Id',
        url: '',
        // striped: "true",
        columns: [
          // {
          //   checkbox: 'true',
          //   width: '10'
          // },
          {
            // field: 'Number',
            title: '序号',
            halign: 'center',
            align: 'center',
            formatter:function(value,row,index){
            return index+1
            }
          },{
            field: 'name',
            title: '用户名/角色名',
            halign: 'center',
            align: 'center',
            sortable:'true',
            // editable: {
                // type: 'text',
                // pk: 1,
                // url: '/admin/user/updateuser',
                // title: 'Enter ProjectNumber' 
            // }
          },{
            field: 'role',
            // visible: false,
            title: '权限',
            halign: 'center',
            align: 'center',
            editable: {
                type: 'select2', 
                source: [
                      {id: '1', text: '  Full Access',value:1},
                      {id: '2', text: '  Review',value:2},
                      {id: '3', text: '  Read Only',value:3},
                      {id: '4', text: '  Deny Access',value:4}
                   ],
        //'[{"id": "1", "text": "One"}, {"id": "2", "text": "Two"}]'
                select2: {
                  allowClear: true,
                  width: '150px',
                  placeholder: '请选择权限',
                  // multiple: true
                },
                pk: 1,
                // url: '/admin/user/updateuser',
                title: 'Enter Status'  
            }
          },{
            field:'action',
            title: '操作',
            halign: 'center',
            align: 'center',
            formatter:'actionFormatter',
            events:'actionEvents',
          }
        ]
      });
    });
  </script>

  <!-- 解决多弹出模态框问题 -->
  <script type="text/javascript">
    jQuery(function($){
            //解决模态框背景色越来越深的问题
            $(document).on('show.bs.modal', '.modal', function(event) {
                // $(this).appendTo($('body'));
            }).on('shown.bs.modal', '.modal.in', function(event) {
                setModalsAndBackdropsOrder();
            }).on('hidden.bs.modal', '.modal', function(event) {
                setModalsAndBackdropsOrder();
            });

            function setModalsAndBackdropsOrder() {
                var modalZIndex = 1040;
                $('.modal.in').each(function(index) {
                    var $modal = $(this);
                    modalZIndex++;
                    $modal.css('zIndex', modalZIndex);
                    $modal.next('.modal-backdrop.in').addClass('hidden').css('zIndex', modalZIndex - 1);
                });
                $('.modal.in:visible:last').focus().next('.modal-backdrop.in').removeClass('hidden');
            }

            //覆盖Modal.prototype的hideModal方法
            $.fn.modal.Constructor.prototype.hideModal = function () {
                var that = this
                this.$element.hide()
                this.backdrop(function () {
                    //判断当前页面所有的模态框都已经隐藏了之后body移除.modal-open，即body出现滚动条。
                    $('.modal.fade.in').length === 0 && that.$body.removeClass('modal-open')
                    that.resetAdjustments()
                    that.resetScrollbar()
                    that.$element.trigger('hidden.bs.modal')
                })
            }
    });
  </script>

  <!-- table中数据传递 -->
  <script type="text/javascript">
    //取得权限表中所有数据——判断是否有重复的
    // var selectRow=$tableRight.bootstrapTable('getData');
    //用户选择到权限表中
    $('#btn2Right').click(function () {  
      var selectContent = $tableLeft.bootstrapTable('getSelections');
      // for(var i=0;i<selectContent.length;i++){
      //   for(var j=0;j<selectRow.length;j++){
      //     if (selectContent[i].name==selectRow[j].name){
      //       删除
      //     }
      //   }
      // }
      $tableRight.bootstrapTable("append", selectContent);   
      username = $.map(selectContent, function (row) {  
        return row.name;
      });  
      $tableLeft.bootstrapTable('remove', {  
        field: 'name',  
        values: username  
      });  
    }); 

    //角色选择到权限表中
    $('#btn2Right1').click(function () {  
      var selectContent = $tableLeft1.bootstrapTable('getSelections');  
      $tableRight.bootstrapTable("append", selectContent);  
      rolename = $.map(selectContent, function (row) {  
        return row.name;  
      });  
      $tableLeft1.bootstrapTable('remove', {  
        field: 'name',  
        values: rolename  
      });  
    });  
    // $('#btn2Left').click(function () {  
    //     var selectContent = $tableRight.bootstrapTable('getSelections'); 
    //     $tableLeft.bootstrapTable("append", selectContent);  
    //     var selects = $tableRight.bootstrapTable('getSelections');  
    //     SKUNo = $.map(selects, function (row) {  
    //         return row.SKUNo;  
    //     });  
    //     $tableRight.bootstrapTable('remove', {  
    //         field: 'SKUNo',  
    //         values: SKUNo  
    //     });  
    // });  
    // }

    $(document).ready(function() {
      var now = new Date(); 
      myDate=new Date().getFullYear() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getDate(); 
      $("#Date").val(myDate);

      //弹出添加用户模态框
      $("#addusers").click(function() {
        if ($("#dropdownMenu1").hasClass("fa fa-pencil")){
          $tableLeft.bootstrapTable('refresh', {url:'/admin/user?role=1'});
        }else if($("#dropdownMenu1").hasClass("fa fa-commenting-o")){
          $tableLeft.bootstrapTable('refresh', {url:'/admin/user?role=2'});
        }else if($("#dropdownMenu1").hasClass("fa fa-eye")){
          $tableLeft.bootstrapTable('refresh', {url:'/admin/user?role=3'});
        }else if($("#dropdownMenu1").hasClass("fa fa-eye-slash")){
          $tableLeft.bootstrapTable('refresh', {url:'/admin/user?role=4'});
        }

        $('#users').modal({
          show:true,
          backdrop:'static'
        });
      })

      //弹出添加角色模态框
      $("#addroles").click(function() {
        if ($("#dropdownMenu2").hasClass("fa fa-pencil")){
          $tableLeft1.bootstrapTable('refresh', {url:'/admin/role/get?role=1'});
        }else if($("#dropdownMenu2").hasClass("fa fa-commenting-o")){
          $tableLeft1.bootstrapTable('refresh', {url:'/admin/role/get?role=2'});
        }else if($("#dropdownMenu2").hasClass("fa fa-eye")){
          $tableLeft1.bootstrapTable('refresh', {url:'/admin/role/get?role=3'});
        }else if($("#dropdownMenu2").hasClass("fa fa-eye-slash")){
          $tableLeft1.bootstrapTable('refresh', {url:'/admin/role/get?role=4'});
        }

        $('#roles').modal({
          show:true,
          backdrop:'static'
        });
      })

    })


    function actionFormatter(value, row, index) {
      return '<a class="remove" href="javascript:void(0)" title="删除"><i class="glyphicon glyphicon-remove"></i></a>';
    }

    window.actionEvents = {
      'click .remove': function (e, value, row, index) {
        var username=[]
        username[0]=row.name
        $tableRight.bootstrapTable('remove', {field: 'name', values: username});
      }        
      // 'click .remove': function (e, value, row, index) {
      //   var map = {};
      // map['username'] = row.Username;
      // alert(map.username);

      // var selects = $tableRight.bootstrapTable('getSelections');  
      // username = $.map(selects, function (row) {  
      //   return row.Username;  
      // });
      // alert(username);

      // alert(row.Username);
      // $tableRight.bootstrapTable('remove', {  
      //   field: 'Username',  
      //   values: username//username
      // }); 
      // }
    };

    //添加用户/角色权限
    function saveusers(){
      // if ({{.RoleDelete}}!="true"){
      //   alert("权限不够！");
      //   return;
      // }
      // var selectRow=$('#tableusers1').bootstrapTable('getSelections');
      var selectRow=$('#tableusers1').bootstrapTable('getData');
      // if (selectRow.length<=0) {
      //   alert("没有数据！");
      //   return false;
      // }//else{
        // alert(JSON.stringify(selectRow));
      //}
      var docid = $('#pid').val();
      // if ({{.RoleDelete}}!="true"){
      //   alert("权限不够！"+selectRow[0].Uid);
      //   return;
      // }

      //if(confirm("确定删除吗？一旦删除将无法恢复！")){
        // var title=$.map(selectRow,function(row){
        //   return row.Title;
        // })

        // var userids="";
        // var roleids="";
        // for(var i=0;i<selectRow.length;i++){
        //   if (selectRow[i].Rolenumber){
        //     if(roleids==""){
        //       roleids=selectRow[i].Id;
        //     }else{
        //       roleids=roleids+","+selectRow[i].Id;
        //     }
        //   }else{
        //     if(userids==""){
        //       userids=selectRow[i].Id;
        //     }else{
        //       userids=userids+","+selectRow[i].Id;
        //     }
        //   }
        // }
        // alert(idsrole);
        // alert(idsuser);
        $.ajax({
          type:"post",
          url:"/onlyoffice/addpermission",
          data: {ids:JSON.stringify(selectRow),docid:docid},
          // data: {userids:userids,roleids:roleids,docid:docid},
          success:function(data,status){
            alert("保存“"+data+"”成功！(status:"+status+".)");
            //删除已选数据
            // $('#attachments').bootstrapTable('remove',{
            //   field:'Title',
            //   values:title
            // });
          }
        });
      // }
    }
  </script>

</body>
</html>