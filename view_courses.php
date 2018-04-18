<!DOCTYPE html>
<html>
<head>
	<title>Course Scheduler</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <link rel="stylesheet" href="jquery-ui.css">
    <style type="text/css" media="screen">

    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        text-align:left;
        padding: 0;
    }
    .modal-body{
        max-height: 550px;
        overflow-y: auto;
        min-width:  800px;
    }
    .btn-edit,.btn-del,.btn-res{
        margin-left: 3px;
        max-width: 100px;
        min-width: 60px;
        height: 25px;
        padding: 0;
    }
    .h1{
        font: cursive;
        margin: 0 auto;
    }
    #sum_table{
        width: 400px;
        margin-left:20px;
    }
    #sum_table td{
        width: 100px;
    }
    #latlng{
        font-style: italic;
        text-decoration: underline blue;
    }
/*    #picModal{
        width: 600px;

        height: 600px;
        }*/
    #pic_zoom{
        max-height: 600px;
        max-width: 800px;
    }
/*    .form-control{
        max-width: 200px;
    }*/
    #clashes tr{
        background-color: #ffcccc;
    }
    #clashes_1 tr{
        background-color: #ffcccc;
    }
    th{
        padding-top: 12px;
        padding-bottom: 12px;
        text-align: center;
        background-color: #302f2f;
        color: white;
    }
    #succ_not{
        display: none;
    }
    #dan_not{
        display: none;
    }
    .alert{
        min-width: 400px;
        max-width: 800px;
        margin: 0 auto;
        position: fixed;
        top: 0;
        right: 0;
        text-align: center; 
    }
    </style>
</head>
<body>
        <!-- <button id="reset_1" class="btn btn-info">Reset</button> -->
    <center>

        <h1>Courses (Jul-Nov 2018)</h1>
        <div>
             <span>
<!--             <button id="add_course" class="btn btn-primary">Add Course</button> -->
            <button id="time_table" class="btn btn-info">Time Table(Btech)</button>
            <button id="time_table1" class="btn btn-info">Time Table(Mtech / PhD)</button>
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Click to view Curriculum</b>
            <select class='selectpicker' id='curr_sel'>
                <option></option>
                <optgroup label='BTech'>
                    <option value="b1">2015</option>
                    <option value="b2">2016</option>
                    <option value="b3">2017</option>
                    <option value="b3">2018*</option>
                </optgroup>
                <optgroup label='MTech'>
                    <option value="m1">2017</option>
                    <option value="m1">2018*</option>
                </optgroup>
                <optgroup label='Dual Degree'>
                    <option value="d1">2014</option>
                    <option value="d2">2015</option>
                    <option value="d3">2016</option>
                    <option value="d4">2017</option>
                    <option value="d4">2018*</option>
                </optgroup>
            </select></span>
        </div>
        <br>
        <br>
        <br>
<!--         My Courses
        <div class="container-fluid table-responsive">
            <table id='my_courses' class="table table-bordered table-hover">
            </table>
        </div> -->
<!--         <h4>Clashes Type 1 and 2</h4>
        <div class="container-fluid table-responsive">
            <table id='clashes' class="table table-bordered table-hover">
            </table>
        </div>
        <h4>Clashes Type 3 </h4>
        <div class="container-fluid table-responsive">
            <table id='clashes_1' class="table table-bordered table-hover">
            </table>
        </div>
        <h4>Slots fixed by the Institute / Core courses</h4>
        <div class="container-fluid table-responsive">
            <table id='fixed_slots' class="table table-bordered table-hover">
            </table>
        </div> -->
        <h3>All Courses</h3>
        <h5> (Click heading to sort columns. Use 'Shift' key and select to sort by multiple columns )<h5>
        <div class="container-fluid table-responsive">
            <table id='main' class="table table-bordered table-hover tablesorter">
            </table>
        </div>

<!-- modal -->
<!--Pic Modal -->
<div class="modal fade" id="time_modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Time Table</h4>
    </div>
    <div class="modal-body">
        <img id='pic_zoom' src="time.png">
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
</div>
</div>
</div>
<!--modal-->
<!--Pic Modal -->
<div class="modal fade" id="time_modal1" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Time Table</h4>
    </div>
    <div class="modal-body">
        <img id='pic_zoom' src="time2.png">
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
</div>
</div>
</div>
<!--modal-->
<!--PDF Modal -->
<div class="modal fade" id="pdf_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Curriculum</h4> 
      </div>
      <div class="modal-body">
        <div style="text-align: center;">
        <iframe id="pdf_embed" src="" style="width:800px; height:600px;" frameborder="0"></iframe>
      </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
<!--modal-->
</div>
</center>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.min.js"></script>
<script src="jquery-ui.js" type="text/javascript"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
    $('#comp_total').html(0);
    $(".tablesorter").tablesorter({  widgets: [ "zebra"] });  
    $(document).ready(function(){
        $.ajax({
            url: "get_view_courses.php",
            success: function(result){
            //$("#main").html(result);
            data = JSON.parse(result);
            data = data.reverse();
            //console.log(data);
            var a = "<thead class='thead-inverse'><tr><th>S No</th><th>Course Id</th><th>Course Name</th><th>Slot</th><th>Room</th><th>Instructor</th><th>Type</th><th>Year</th><th>Batch</th><th>Divison</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th></tr></thead>";
            a += "<tbody>";
            cid = "";
            ins = "";
            for (var i = data.length - 1; i >= 0; i--) {
                if(cid == data[i]["course_id"] && ins == data[i]['instructor']){
                    a += "<tr class='expand-child'><td>"+data[i]['type']+"</td><td>"+data[i]['year']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept']+"</td><td>"+data[i]['totcap']+"</td><td>"+data[i]['outcap']+"</td><td>"+data[i]['alloc_type'];
                }else{
                    a += "<tr><td rowspan='"+data[i]['totalCount']+"'>"+data[i]['id']+"</td><td rowspan='"+data[i]['totalCount']+"'>"+data[i]["course_id"]+"</td>"+"<td rowspan='"+data[i]['totalCount']+"'>"+data[i]["course_name"]+"</td><td rowspan='"+data[i]['totalCount']+"'>"+data[i]['slot']+"</td><td rowspan='"+data[i]['totalCount']+"'>"+data[i]['roomno']+"</td><td rowspan='"+data[i]['totalCount']+"'>"+data[i]['instructor']+"</td><td>"+data[i]['type']+"</td><td>"+data[i]['year']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept']+"</td><td>"+data[i]['totcap']+"</td><td>"+data[i]['outcap']+"</td><td>"+data[i]['alloc_type'];
                }
                cid = data[i]["course_id"];
                ins = data[i]['instructor'];
            };
            $('#main').append(a);
            $("#main").tablesorter();
            $("#main").trigger('update');
            }
        })

        val = 0
        idv = 0
        $(document.body).on('change', '#curr_sel' ,function(){
            curr = $('#curr_sel option:selected').val();
            //console.log(curr);
            src = 'pdf/'+curr+'.pdf?zoom=100';
            //console.log(src);
            $('#pdf_embed').attr('src',src);
            $('#pdf_modal').modal();
        });
        $(document.body).on('change', '.course_type' ,function(){
            curr = $('.course_type option:selected').val();
            if(curr == "Core"){
                $('.dept_row').css('display','block');
                $('.batch_row').css('display','block');
            }else{
                $('.dept_row').css('display','none');
                $('.batch_row').css('display','none');                
            }
        })
        $(document.body).on('click', '#time_table' ,function(){
            // val = $(this).attr('val');
            // idv = $(this).attr('idv');
            $("#time_modal").modal();

        })
        $(document.body).on('click', '#time_table1' ,function(){
            // val = $(this).attr('val');
            // idv = $(this).attr('idv');
            $("#time_modal1").modal();

        })
    })
</script>
</html>