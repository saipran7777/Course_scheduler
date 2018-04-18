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
    <div id='succ_not' class="alert alert-success alert-dismissible fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Success!</strong> No Clashes Found
    </div>
    <div id='dan_not' class="alert alert-danger alert-dismissible fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
        <strong>Alert!</strong> Please resolve the clashes.
    </div>
    <?php   
    include "session.php";
    ?>
    <span><a href ='logout.php'><button id="logout" class="btn btn-info">Logout</button></a></span>
        <!-- <button id="reset_1" class="btn btn-info">Reset</button> -->
    <center>

        <h1>Admin - Course Scheduler</h1>
        <h3>Summary Statistics</h3>
        <table id="sum_table" class="table table-bordered table-hover">
            <tbody>
                <tr>
                    <td colspan="1">Total Clashes</td>
                    <td colspan="1" id='comp_total'></td>
                </tr>
            </tbody>
        </table>
        <div>
             <span>
            <button id="add_course" class="btn btn-success">Add Course</button>
            <button id="time_table" class="btn btn-info">Time Table(Btech)</button>
            <button id="time_table1" class="btn btn-info">Time Table(Mtech / PhD)</button>
            <b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Curriculum</b>
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
        <h4>Slot Clashes</h4>
        <div class="container-fluid table-responsive">
            <table id='clashes' class="table table-bordered table-hover tablesorter">
            </table>
        </div>
        <h4>Room Clashes</h4>
        <div class="container-fluid table-responsive">
            <table id='clashes_1' class="table table-bordered table-hover tablesorter">
            </table>
        </div>
        <h4>Slots fixed by the Institute / Core courses</h4>
        <div class="container-fluid table-responsive">
            <table id='fixed_slots' class="table table-bordered table-hover tablesorter">
            </table>
        </div>
        <h4>All Courses</h4>
        <div class="container-fluid table-responsive">
            <table id='main' class="table table-bordered table-hover tablesorter">
            </table>
        </div>
        <div class="modal fade" id="reset_modal" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header" style="padding:10px 50px;">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h3>General Elective Slots</h3>
                    </div>
                    <div class="modal-body table-responsive" style="padding:0px 50px;">
                        <table class="table table-responsive table-bordered">
                            <tbody class="add_acc_body">
                                <tr>
                                    <td colspan="1">Choose Semester</td>
                                    <td colspan="1"><select class="semester"><option value="1">Odd</option><option value="0">Even</option></select></td>
                                </tr>
                            </tbody>
                        </table>
                        <br><br><br>
                    </div>
                    <div class="modal-footer">
                      <a href="#" class="btn btn-default" data-dismiss="modal" class="btn">Close</a>
                      <a id="reset_1" class="btn btn-primary">Submit</a>
                  </div>
              </div>
          </div>
      </div>
      <div class="modal fade" id="reset_modal_1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="modal-content">
                <div class="modal-header" style="padding:10px 50px;">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h3>Fill Slot Details</h3>
                </div>
                <div class="modal-body table-responsive" style="padding:0px 50px;">
                    <table id='elec_slot_list' class="table table-responsive table-bordered">
                    </table>
                    <br><br><br>
                </div>
                <div class="modal-footer">
                  <a href="#" class="btn btn-default" data-dismiss="modal" class="btn">Close</a>
                  <a id="reset_2" class="btn btn-primary">Submit</a>
              </div>
          </div>
      </div>
  </div>

  <!-- ADD MODAL -->
  <!--  -->
  <div class="modal fade" id="add_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="padding:10px 50px;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3>Add Course</h3>
            </div>
            <div class="modal-body table-responsive" style="padding:0px 50px;">
                <table class="table table-responsive table-bordered">
                    <tbody class="add_acc_body">
                       <tr>
                        <td colspan="1">Course Id</td>
                        <td colspan="1"><input type="text" class="course_id" placeholder="Official Id"></td>
                    </tr>
                    <tr>
                        <td colspan="1">Course Name</td>
                        <td colspan="1"><input type="text" class="course_name" placeholder="Full Name"></td>
                    </tr>
                    <tr>
                        <td colspan="1">Course Slot</td>
                        <td colspan="1"><select class="course_slot">
                            <option value=''></option>
                            <option value='A'>A</option>
                            <option value='B'>B</option>
                            <option value='C'>C</option>
                            <option value='D'>D</option>
                            <option value='E'>E</option>
                            <option value='F'>F</option>
                            <option value='G'>G</option>
                            <option value='H'>H</option>
                            <option value='J'>J</option>
                            <option value='K'>K</option>
                            <option value='L'>L</option>
                            <option value='M'>M</option>
                            <option value='P'>P</option>
                            <option value='Q'>Q</option>
                            <option value='R'>R</option>
                            <option value='S'>S</option>
                            <option value='T'>T</option>
                            <option value='XX'>XX</option>
                            <option value='YY'>YY</option>
                            <option value='YY'>ZZ</option>
                            <option value='WW'>WW</option></select></td>
                        </tr>
                        <tr>
                            <td colspan="1">Course Type</td>
                            <td colspan="1"><select class="course_type" placeholder="Core/DPE"><option value="Core">Core</option><option value="Elective">Elective</option></select></td>
                        </tr>
                        <tr class="batch_row">
                            <td colspan="1">Batch</td>
                            <td>
                            <select class='batch_type'>
                                <option></option>
                                <optgroup label='B Tech'>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                </optgroup>
                                <optgroup label='M Tech'>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                </optgroup>
                                <optgroup label='Dual Degree'>
                                    <option value="2014">2014</option>
                                    <option value="2015">2015</option>
                                    <option value="2016">2016</option>
                                    <option value="2017">2017</option>
                                    <option value="2018">2018</option>
                                </optgroup>
                            </select>
                            </td>
                        </tr>
                        <tr class="dept_row">
                            <td colspan="1">Division</td>
                            <td colspan="1">
                                <select class="dept_type" placeholder="Dept">
                                    <option value="None">None (For BTech)</option>
                                    <option value="BTCM">BTCM</option>
                                    <option value="Infrastructure">Infrastructure</option>
                                    <option value="Environmental Engineering">Environmental Engineering</option>
                                    <option value="Geotechnical Engineering">Geotechnical Engineering</option>
                                    <option value="Hydraulics & Water Resources Engineering">Hydraulics &amp; Water Resources Engineering</option>
                                    <option value="Structural Engineering">Structural Engineering</option>
                                    <option value="Transportation Engineering">Transportation Engineering</option>
                                    <option value="UOP">UOP</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="1">Room No</td>
                            <td colspan="1"><select class='sel_room'></select></td>
                        </tr>
                        <tr>
                            <td colspan="1">Instructor</td>
                            <td colspan="1"><select class='sel_ins'></select></td>
                        </tr>
                        <tr>
                            <td colspan="1">Guest Instructor *</td>
                            <td colspan="1"><input type="text" class="inp_ins" placeholder="Optional"></td>
                        </tr>
                    </tbody>
                </table>
                <br><br><br>
            </div>
            <div class="modal-footer">
              <a href="#" class="btn btn-default" data-dismiss="modal" class="btn">Close</a>
              <a class="btn btn-add-submit btn-primary">Submit</a>
          </div>
      </div>
  </div>
</div>

<!-- EDIT MODAL -->
<!--  -->
<!--  -->
<div class="modal fade" id="edit_modal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header" style="padding:10px 50px;">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h3>Edit Course</h3>
            </div>
            <div class="modal-body table-responsive" style="padding:0px 50px;">
                <table class="table table-responsive table-bobmitrdered">
                    <input type="hidden" class="edit_id">
                    <tbody class="add_acc_body">
                       <tr>
                        <td colspan="1">Course Id</td>
                        <td colspan="1"><p class='edit_course_id'></p></td>
                    </tr>
                    <tr>
                        <td colspan="1">Course Name</td>
                        <td colspan="1"><input type="text" class="form-control edit_course_name" placeholder="Full Name"></td>
                    </tr>
                    <tr>
                        <td colspan="1">Course Slot</td>
                        <td colspan="1"><select class="edit_course_slot">
                            <option value=""> </option>
                            <option value='A'>A</option>
                            <option value='B'>B</option>
                            <option value='C'>C</option>
                            <option value='D'>D</option>
                            <option value='E'>E</option>
                            <option value='F'>F</option>
                            <option value='G'>G</option>
                            <option value='H'>H</option>
                            <option value='J'>J</option>
                            <option value='K'>K</option>
                            <option value='L'>L</option>
                            <option value='M'>M</option>
                            <option value='P'>P</option>
                            <option value='Q'>Q</option>
                            <option value='R'>R</option>
                            <option value='S'>S</option>
                            <option value='T'>T</option>
                            <option value='XX'>XX</option>
                            <option value='YY'>YY</option>
                            <option value='YY'>ZZ</option>
                            <option value='WW'>WW</option>
                        </select></td>
                    </tr>
                    <tr>
                        <td colspan="1">Course Type</td>
                        <td colspan="1"><select class="edit_course_type" placeholder="Core/DPE"><option value='Core'>Core</option><option value='Elective'>Elective</option></select></td>
                    </tr>
                    <tr>
                        <td colspan="1">Instructor</td>
                        <td colspan="1"><select class='edit_ins'></select></td>
                    </tr>
                    <tr>
                        <td colspan="1">Room no</td>
                        <td colspan="1"><select class='edit_room'></select></td>
                    </tr>
                    <tr>
                        <td colspan="1">Tot Cap</td>
                        <td colspan="1"><input type="text" class='form-control edit_tot_cap'></td>
                    </tr>
                    <tr>
                        <td colspan="1">Out Cap</td>
                        <td colspan="1"><input type="text" class='form-control edit_out_cap'></td>
                    </tr>
                    <tr>
                        <td colspan="1">Allocation type</td>
                        <td colspan="1">
                            <select class='edit_alloc_type'>
                            <option value="Random">Random</option>
                            <option value="CGPA">CGPA</option>
                            </select>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br><br><br>
        </div>
        <div class="modal-footer">
          <a href="#" class="btn btn-default" data-dismiss="modal" class="btn">Close</a>
          <a class="btn btn-edit-submit btn-primary">Submit</a>
      </div>
  </div>
</div>
</div>
<!--Delete Modal -->
<div class="modal fade" id="del_modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Are you sure you want to delete the course?</h4>
    </div>
    <div class="modal-body">
        <input type="hidden" class="del_id">
        <table id="del_table" class="table table-bordered table-hover">
        </table>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <a class="btn btn-del-submit btn-danger">DELETE</a>
    </div>
</div>
</div>
</div>
<!-- modal -->
<!--Resolve Modal -->
<div class="modal fade" id="res_modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Are you sure you want to resolve the course?</h4>
    </div>
    <div class="modal-body">
        <input type="hidden" class="res_id">
        <table id="res_table" class="table table-bordered table-hover">
        </table>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <a class="btn btn-res-submit btn-danger">RESOLVE</a>
    </div>
</div>
</div>
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

<!-- <div class="modal fade" id="pdf_modal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Curriculum</h4>
    </div>
    <div class="modal-body">
        <embed id="pdf_embed" src="" width="400px" height="600px" />
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
    </div>
</div>
</div>
</div> -->
<!--modal-->
</div>
</center>
</body>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/jquery.tablesorter.min.js"></script>
<script src="js/jquery-ui.js" type="text/javascript"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
    $('#comp_total').html(0);
    $(".tablesorter").tablesorter({  widgets: [ "zebra"] });  
    $(document).ready(function(){
        var user_name='<?php echo $user_name;?>';
        $.ajax({
            url: "get_courses.php",
            success: function(result){
            //$("#main").html(result);
            data = JSON.parse(result);
            data = data.reverse();
            //console.log(data);
            var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Course Name</th><th>Slot</th><th>Room</th><th>Type</th><th>Year</th><th>Batch</th><th>Divison</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th><th>Action</th></tr></thead>";
            a += "<tbody>";
            for (var i = data.length - 1; i >= 0; i--) {
                a += "<tr><td>"+data[i]['id']+"<td>"+data[i]["course_id"]+"</td>"+"<td>"+data[i]["course_name"]+"</td><td>"+data[i]['slot']+"</td><td>"+data[i]['roomno']+"</td><td>"+data[i]['type']+"</td><td>"+data[i]['year']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept']+"</td><td>"+data[i]['instructor']+"</td><td>"+data[i]['totcap']+"</td><td>"+data[i]['outcap']+"</td><td>"+data[i]['alloc_type'];
                //if(data[i]['instructor'] == user_name){
                    a+= "</td><td><button val='0' idv='"+data[i]['id']+"' cid='"+data[i]['course_id']+"' nme='"+data[i]['course_name']+"' type='"+data[i]['type']+"' ins='"+data[i]['instructor']+"' class='btn-opt btn-edit btn btn-info'>Edit</button><button val='1' idv='"+data[i]['id']+"' class='btn btn-opt btn-del btn-danger'>Delete</button></td>";
                //}
            };
            $('#main').append(a);
            $("#main").tablesorter();
            $("#main").trigger('update');
            }
        })
        $.ajax({
            url: "get_fixed_slots.php",
            success: function(result){
            //console.log(result);
            data = JSON.parse(result);
            //data = data.reverse();
            //console.log(data);
            var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Course Name</th><th>Slot</th><th>Room</th><th>Year</th><th>Batch</th><th>Divison</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th><th>Action</th></tr></thead>";
            a += "<tbody>";
            for (var i = data.length - 1; i >= 0; i--) {
                a +="<tr><td>"+data[i]['id']+"<td>"+data[i]["course_id"]+"</td><td>"+data[i]['course_name']+"</td><td>"+data[i]['slot']+"</td><td>"+data[i]['roomno']+"</td><td>"+data[i]['year']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept']+"</td><td>"+data[i]['instructor']+"</td><td>"+data[i]['totcap']+"</td><td>"+data[i]['outcap']+"</td><td>"+data[i]['alloc_type'];
                a+= "</td><td><button val='0' idv='"+data[i]['id']+"' class='btn-edit btn btn-info'>Edit</button><button val='1' idv='"+data[i]['id']+"' class='btn-del btn btn-danger'>Delete</button></td>";
            };
            a+= "</tr></tbody>";
            $('#fixed_slots').append(a);
            $("#fixed_slots").tablesorter();
            $("#fixed_slots").trigger('update');
        }
    })    
        $.ajax({
            url: "get_clashes_mod.php",
            success: function(result){
                //console.log(result.length);
                if(result.length > 2){
                    data = JSON.parse(result);
                    data = data.reverse();
                    //console.log(data);
                    var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Course Name</th><th>Year</th><th>Batch</th><th>Divison</th><th>Slot</th><th>Room</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th><th>Action</th></tr></thead>";
                    a += "<tbody>";
                    c=0
                    for (var i = data.length - 1; i >= 0; i--){
                        for (var j = data[i].length - 1; j >= 0; j--) {
                            c = c+1;
                            a += "<tr><td>"+data[i][j]["id"]+"</td><td>"+data[i][j]["course_id"]+"</td><td>"+data[i][j]["course_name"]+"</td><td>"+data[i][j]['year']+"</td><td>"+data[i][j]['batch']+"</td><td>"+data[i][j]['dept']+"</td><td>"+data[i][j]['slot']+"</td><td>"+data[i][j]['roomno']+"</td><td>"+data[i][j]['instructor']+"</td><td>"+data[i][j]['totcap']+"</td><td>"+data[i][j]['outcap']+"</td><td>"+data[i][j]['alloc_type'];
                            // if(data[i][j]['instructor'] == user_name){
                                a+= "</td><td><button val='0' idv='"+data[i][j]['id']+"' class='btn-edit btn btn-success'>Edit</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-del btn btn-danger'>Delete</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-opt btn-res btn btn-warning'>Resolve</button></td>";
                            //}
                        }
                    };
                  // a+= "</tr><tr><td></td></tr>"
                  $('#comp_total').html(parseFloat($('#comp_total').html())+data.length);

                  console.log(c);
                  $('#clashes').append(a);
                }
            }
        })
        $.ajax({
            url: "get_clashes_1_mod1.php",
            success: function(result){
            if(result.length > 2){
                data = JSON.parse(result);
                data = data.reverse();
                //console.log(data);
                var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Course Name</th><th>Year</th><th>Batch</th><th>Divison</th><th>Slot</th><th>Room</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th><th>Action</th></tr></thead>";
                a += "<tbody>";
                c=0
                for (var i = data.length - 1; i >= 0; i--){
                    for (var j = data[i].length - 1; j >= 0; j--) {
                        c = c+1;
                        a += "<tr><td>"+data[i][j]["id"]+"</td><td>"+data[i][j]["course_id"]+"</td><td>"+data[i][j]["course_name"]+"</td><td>"+data[i][j]['year']+"</td><td>"+data[i][j]['batch']+"</td><td>"+data[i][j]['dept']+"</td><td>"+data[i][j]['slot']+"</td><td>"+data[i][j]['roomno']+"</td><td>"+data[i][j]['instructor']+"</td><td>"+data[i][j]['totcap']+"</td><td>"+data[i][j]['outcap']+"</td><td>"+data[i][j]['alloc_type'];
                        // if(data[i][j]['instructor'] == user_name){
                            a+= "</td><td><button val='0' idv='"+data[i][j]['id']+"' class='btn-edit btn btn-info'>Edit</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-del btn btn-danger'>Delete</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-opt btn-res btn btn-warning'>Resolve</button></td>";
                        //}
                    }
                };
                total = $('#comp_total').html()+data.length;
                $('#comp_total').html(parseFloat($('#comp_total').html())+data.length);
                $('#clashes').append(a);
            }else{
                total = $('#comp_total').html();
                $('#clashes').append("<thead class='thead-inverse'><th>No Clashes</th></thead>");
            }
            console.log($('#comp_total').html());
            if(total > 0){
                $('#dan_not').css('display','inline');
            }else{
                $('#succ_not').css('display','inline');
            } 
        }
    })
        $.ajax({
            url: "get_clashes_room.php",
            success: function(result){
                //console.log(result.length);
                if(result.length > 2){
                    data = JSON.parse(result);
                    data = data.reverse();
                    //console.log(data);
                    var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Course Name</th><th>Year</th><th>Batch</th><th>Divison</th><th>Slot</th><th>Room</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th><th>Action</th></tr></thead>";
                    a += "<tbody>";
                    c=0
                    for (var i = data.length - 1; i >= 0; i--){
                        for (var j = data[i].length - 1; j >= 0; j--) {
                            c = c+1;
                            a += "<tr><td>"+data[i][j]["id"]+"</td><td>"+data[i][j]["course_id"]+"</td><td>"+data[i][j]["course_name"]+"</td><td>"+data[i][j]['year']+"</td><td>"+data[i][j]['batch']+"</td><td>"+data[i][j]['dept']+"</td><td>"+data[i][j]['slot']+"</td><td>"+data[i][j]['roomno']+"</td><td>"+data[i][j]['instructor']+"</td><td>"+data[i][j]['totcap']+"</td><td>"+data[i][j]['outcap']+"</td><td>"+data[i][j]['alloc_type'];
                            // if(data[i][j]['instructor'] == user_name){
                                a+= "</td><td><button val='0' idv='"+data[i][j]['id']+"' class='btn-edit btn btn-info'>Edit</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-del btn btn-danger'>Delete</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-opt btn-res btn btn-warning'>Resolve</button></td>";
                            //}
                        }
                    };
                  // a+= "</tr><tr><td></td></tr>"
                  $('#comp_total').html(parseFloat($('#comp_total').html())+data.length);

                  console.log(c);
                  $('#clashes_1').append(a);
                }
                else{
                    total = $('#comp_total').html();
                    $('#clashes_1').append("<thead class='thead-inverse'><th>No Clashes</th></thead>");
                }
            }
        })

        $.ajax({
            type:"POST",
            url: "get_my_courses.php",
            data:{user:user_name},
            success: function(result){
            //$("#main").html(result);
            data = JSON.parse(result);
            data = data.reverse();
            //console.log(data);
            var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Course Name</th><th>Slot</th><th>Type</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th><th>Action</th></tr></thead>";
            a += "<tbody>";
            for (var i = data.length - 1; i >= 0; i--) {
                a += "<tr><td>"+data[i]['id']+"<td>"+data[i]["course_id"]+"</td>"+"<td>"+data[i]["course_name"]+"</td><td>"+data[i]['slot']+"</td><td>"+data[i]['type']
                +"</td><td>"+data[i]['instructor']+"</td><td>"+data[i]['totcap']+"</td><td>"+data[i]['outcap']+"</td><td>"+data[i]['alloc_type'];
                if(data[i]['instructor'] == user_name){
                    a+= "</td><td><button val='0' idv='"+data[i]['id']+"' cid='"+data[i]['course_id']+"' nme='"+data[i]['course_name']+"' type='"+data[i]['type']+"' ins='"+data[i]['instructor']+"' class='btn-opt btn-edit btn btn-info'>Edit</button><button val='1' idv='"+data[i]['id']+"' class='btn btn-opt btn-del btn-danger'>Delete</button></td>";
                }
            };
            $('#my_courses').append(a);
        }
    })

        val = 0
        idv = 0
        $(document.body).on('change', '#curr_sel' ,function(){
            curr = $('#curr_sel option:selected').val();
            console.log(curr);
            src = 'pdf/'+curr+'.pdf?zoom=100';
            console.log(src);
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
        $(document.body).on('click', '#reset' ,function(){
            $("#reset_modal").modal();
        })
        $(document.body).on('click', '#reset_1' ,function(){
            //$('#reset_modal').modal('toggle');
            //sem = $('.semester option:selected').val();
            //console.log(sem);
            $("#reset_modal_1").modal();
            $.ajax({
                url: "get_elective_list.php",
                //data: {sem:sem},
                type : 'POST',
                success: function(result){
                    // console.log(result);
                    data = JSON.parse(result);
                    data = data.reverse();
                    len = data.length;
                    console.log(len);
                    var a = "<thead class='thead-inverse'><tr><th>Course Id</th><th>Course Name</th><th>Semester</th><th>Batch</th><th>Divison</th><th>Slot</th><th>Room</th></tr></thead>";
                    for (var i = data.length - 1; i >= 0; i--) {
                        a += "<tr><td>"+data[i]["course_id"]+"</td><td>"+data[i]['course_name']+"</td><td>"+data[i]['year']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept'];
                        a += "</td><td><select><option value=''></option><option value='A'>A</option><option value='B'>B</option><option value='C'>C</option><option value='D'>D</option><option value='E'>E</option><option value='F'>F</option><option value='G'>G</option><option value='H'>H</option><option value='J'>J</option><option value='K'>K</option><option value='L'>L</option><option value='M'>M</option><option value='P'>P</option><option value='Q'>Q</option><option value='R'>R</option><option value='S'>S</option><option value='T'>T</option></select>";
                        a += "</td><select id='elec_room'></select></tr>"
                    }
                    $('#elec_slot_list').empty();
                    $('#elec_slot_list').append(a);
                    $("#elec_slot_list tr").each(function(row,tr){
                        if (row > 0) {
                            i = (parseFloat(len) -parseFloat(row));
                            //console.log(i);
                            if(i>-1){
                                $(tr).find('td:eq(5)').find('select').val(data[i]['slot']);
                                //console.log($(tr).find('td:eq(5)').find('select'));
                            };
                        }
                    })

                }
            });
        })
        fac_list = [];
        $.ajax({
            url: "get_faculty.php",
            type : 'POST',
            success: function(result){
                data = JSON.parse(result);
                for (var i = 0; i < data.length; i++) {
                    fac_list[i]=data[i]['name'];
                }
                for (var i = 0; i < fac_list.length; i++) {
                    $('.edit_ins').append('<option value="' + fac_list[i] + '">' + fac_list[i] + '</option>');
                    $('.sel_ins').append('<option value="' + fac_list[i] + '">' + fac_list[i] + '</option>');
                }
            }
        });
        room_list = [];
        $.ajax({
            url: "get_rooms.php",
            type : 'POST',
            success: function(result){
                data = JSON.parse(result);
                for (var i = 0; i < data.length; i++) {
                    room_list[i]=data[i]['name'];
                }
                for (var i = 0; i < room_list.length; i++) {
                    $('.edit_room').append('<option value="' + room_list[i] + '">' + room_list[i] + '</option>');
                    $('.sel_room').append('<option value="' + room_list[i] + '">' + room_list[i] + '</option>');
                    $('#elec_room').append('<option value="' + room_list[i] + '">' + room_list[i] + '</option>');
                }
            }
        });
        $(document.body).on('click', '#reset_2' ,function(){
            var list = new Array();
            $("#elec_slot_list tr").each(function(row,tr){
                if(row > 0){
                    list[row-1] = {
                        "course_id":$(tr).find('td:eq(0)').text(),
                        "course_name":$(tr).find('td:eq(1)').text(),
                        "year":$(tr).find('td:eq(2)').text(),
                        "batch":$(tr).find('td:eq(3)').text(),
                        "dept":$(tr).find('td:eq(4)').text(),
                        "slot":$(tr).find('td:eq(5)').find('select').val()
                    }
                }
            })
            list = JSON.stringify(list);
            $.ajax({
                url: "set_elective.php",
                data: {list:list},
                type : 'POST',
                success: function(result){
                    console.log(result);
                    alert("Added Sucessfully");
                    location.reload();
                }
            });
        })            
        $(document.body).on('click', '#add_course' ,function(){
            // val = $(this).attr('val');
            // idv = $(this).attr('idv');
            $("#add_modal").modal();

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
        $(document.body).on('click', '.btn-add-submit' ,function(){
            //console.log('add')
            name = $('.course_name').val();
            if($('.inp_ins').val() != ''){
                ins = $('.inp_ins').val();
            }else{
                ins = $('.sel_ins').val();
            }
            room = $('.sel_room').val();
            slot = $('.course_slot').val();
            id = $('.course_id').val();
            type = $('.course_type').val();
            year = $('.batch_type option:selected').val();
            batch = $('.batch_type option:selected').parent().attr('label');
            dept = $('.dept_type option:selected').val();
            console.log(type+year + batch + dept);
            if(type=="Core"){
                $.ajax({
                    url: "add_core_course.php",
                    data: {name:name,course_id:id,ins:ins,slot:slot,type:type,year:year,batch:batch,dept:dept,roomno:room},
                    type : 'POST',
                    success: function(result){
                        console.log(result);
                        alert("Added Sucessfully");
                        location.reload();
                    }
                });
            } else{
                $.ajax({
                    url: "add_elective_course.php",
                    data: {name:name,course_id:id,ins:ins,slot:slot,type:type,roomno:room},
                    type : 'POST',
                    success: function(result){
                        console.log(result);
                        alert("Added Sucessfully");
                        location.reload();
                    }
                });
            }           

        })
        $(document.body).on('click', '.btn-edit-submit' ,function(){
            name = $('.edit_course_name').val();
            slot = $('.edit_course_slot').val();
            cid = $('.edit_course_id').html();
            type = $('.edit_course_type').val();
            ins = $('.edit_ins').val();
            room = $('.edit_room').val();
            id = $('.edit_id').val();
            alloc_type = $('.edit_alloc_type').val();
            totcap = $('.edit_tot_cap').val();
            outcap = $('.edit_out_cap').val();
            $.ajax({
                url: "edit_course.php",
                data: {id:id,name:name,course_id:cid,slot:slot,type:type,ins:ins,roomno:room,totcap:totcap,outcap:outcap,alloc_type:alloc_type},
                type : 'POST',
                success: function(result){
                    console.log(result);
                    alert("Edited Sucessfully");
                    location.reload();
                }
            });
        })
        $(document.body).on('click','.btn-del-submit' ,function(){
            idv = $('.del_id').val();
            //console.log(idv);
            $.ajax({
                url: "del_course.php",
                data: {id:idv},
                type : 'POST',
                success: function(result){
                    console.log(result);
                    alert("Deleted Sucessfully");
                    location.reload();
                }
            });
        })
        $(document.body).on('click','.btn-res-submit' ,function(){
            idv = $('.res_id').val();
            //console.log(idv);
            $.ajax({
                url: "res_course.php",
                data: {id:idv},
                type : 'POST',
                success: function(result){
                    console.log(result);
                    alert("Resolved Sucessfully");
                    location.reload();
                }
            });
        })
        $(document.body).on('click','.btn-edit' ,function(){
        	//console.log('enter');
            idv = $(this).attr('idv');
            $.ajax({
                url: "get_a_course.php",
                data: {idv:idv},
                type : 'POST',
                success: function(result){
                    //console.log(result);
                    data=JSON.parse(result);
                    //console.log(data);
                    name = data[0]['course_name'];
                    cid = data[0]['course_id'];
                    slot = data[0]['slot'];
                    type = data[0]['type'];
                    ins = data[0]['instructor'];
                    room = data[0]['roomno'];
                    outcap = data[0]['outcap'];
                    totcap = data[0]['totcap'];
                    alloc_type = data[0]['alloc_type'];
                    console.log(ins);
                    $('.edit_course_name').val(name);
                    $('.edit_course_id').html(cid);
                    $('.edit_course_slot').val(slot).change();
                    $('.edit_course_type').val(type).change();
                    $('.edit_ins').val(ins).change();
                    $('.edit_room').val(room).change();
                    $('.edit_id').val(idv);
                    $('.edit_tot_cap').val(totcap);
                    $('.edit_out_cap').val(outcap);
                    $('.edit_alloc_type').val(alloc_type);
                }
            });
            $('#edit_modal').modal()
        })
        $(document.body).on('click', '.btn-del' ,function(){
            //console.log('enter del');
            idv = $(this).attr('idv');
            $.ajax({
                url: "get_a_course.php",
                data: {idv:idv},
                type : 'POST',
                success: function(result){
                    //console.log(result);
                    data=JSON.parse(result);
                    //console.log(data);
                    var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Type</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th></tr></thead>";
                    a += "<tr><td>"+data[0]['id']+"<td>"+data[0]["course_id"]+"</td>"+"<td>"+data[0]["course_name"]+"</td><td>"+data[0]['slot']+"</td><td>"+data[0]['type']+"</td><td>"+data[0]['instructor']+"</td><td>"+data[0]['totcap']+"</td><td>"+data[0]['outcap']+"</td><td>"+data[0]['alloc_type'];
                    $('.del_id').val(idv);
                    $('#del_table').empty();   
                    $('#del_table').append(a);

                }
            });
            $('#del_modal').modal()
        })
        $(document.body).on('click', '.btn-res' ,function(){
            //console.log('enter del');
            idv = $(this).attr('idv');
            $.ajax({
                url: "get_a_course.php",
                data: {idv:idv},
                type : 'POST',
                success: function(result){
                    //console.log(result);
                    data=JSON.parse(result);
                    //console.log(data);
                    var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Type</th><th>Instructor</th><th>Tot Cap</th><th>Out Cap</th><th>Alloc Type</th></tr></thead>";
                    a += "<tr><td>"+data[0]['id']+"<td>"+data[0]["course_id"]+"</td>"+"<td>"+data[0]["course_name"]+"</td><td>"+data[0]['slot']+"</td><td>"+data[0]['type']+"</td><td>"+data[0]['instructor']+"</td><td>"+data[0]['totcap']+"</td><td>"+data[0]['outcap']+"</td><td>"+data[0]['alloc_type'];
                    $('.res_id').val(idv);
                    $('#res_table').empty();   
                    $('#res_table').append(a);

                }
            });
            $('#res_modal').modal()
        })
    });
</script>
</html>