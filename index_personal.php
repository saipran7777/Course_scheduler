<!DOCTYPE html>
<html>
<head>
	<title>Course Scheduler</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="jquery-ui.css">
    <style type="text/css" media="screen">

    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
        text-align:center;
    }
    .modal-body{
        max-height: 600px;
        overflow-y: auto;
        min-width:  600px;
    }
    .btn{
        margin: 2px;
    }
    .h1{
        font: cursive;
        margin: 0 auto;
    }
    #complaint_pic{
        max-height: 100px;
        max-width: 150px;
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
            max-width: 550px;
        }
    </style>
</head>
<body>
    <?php   
    include "session.php";
    ?>
    <a href ='logout.php'><button id="logout" class="btn btn-info">Logout</button></a>
    <center>
        <h1>Course Scheduler</h1>
        <h3>Summary Statistics</h3>
        <table id="sum_table" class="table table-bordered table-hover">
            <tbody>
                <tr>
                    <td colspan="1">Total Clashes</td>
                    <td colspan="1" id='comp_total'></td>
                </tr>
            </tbody>
        </table>
        <button id="add_course" class="btn btn-primary">Add Course</button>
        <button id="time_table" class="btn btn-info">Time Table(Btech)</button>
        <button id="time_table1" class="btn btn-info">Time Table(Mtech / PhD)</button>
        <br>
        <br>
        <br>
        My Courses
        <div class="container-fluid table-responsive">
            <table id='my_courses' class="table table-bordered table-hover">
            </table>
        </div>
        Clashes Type 1 and 2 
        <div class="container-fluid table-responsive">
            <table id='clashes' class="table table-bordered table-hover">
            </table>
        </div>
        Clashes Type 3 
        <div class="container-fluid table-responsive">
            <table id='clashes_1' class="table table-bordered table-hover">
            </table>
        </div>
        General Elective Slots
        <div class="container-fluid table-responsive">
            <table id='electives' class="table table-bordered table-hover">
            </table>
        </div>
        All Courses
        <div class="container-fluid table-responsive">
            <table id='main' class="table table-bordered table-hover">
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
        <div class="modal-dialog" role="document">
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
    <div class="modal-dialog" role="document">
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
                            <option value='T'>T</option></select></td>
                        </tr>
                        <tr>
                            <td colspan="1">Course Type</td>
                            <td colspan="1"><select class="course_type" placeholder="Core/DPE"><option>Core</option><option>Elective</option>></select></td>
                        </tr>
                        <tr>
                            <td colspan="1">Instructor</td>
                            <td colspan="1"><p class='curr_ins'></p></td>
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
                <table class="table table-responsive table-bordered">
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
                        </select></td>
                    </tr>
                    <tr>
                        <td colspan="1">Course Type</td>
                        <td colspan="1"><select class="edit_course_type" placeholder="Core/DPE"><option value='Core'>Core</option><option value='Elective'>Elective</option>></select></td>
                    </tr>
                    <tr>
                        <td colspan="1">Instructor</td>
                        <td colspan="1"><p class='curr_ins'></p></td>
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
  <div class="modal-dialog" role="document">
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
<!--Pic Modal -->
<div class="modal fade" id="time_modal" tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
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
  <div class="modal-dialog" role="document">
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
</div>
</center>
</body>
<script type="text/javascript" src="jquery.min.js"></script>
<script src="jquery-ui.js" type="text/javascript"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
        var user_name='<?php echo $user_name;?>';
        $('.curr_ins').html(user_name);
        $.ajax({
            url: "get_courses.php",
            success: function(result){
            //$("#main").html(result);
            data = JSON.parse(result);
            data = data.reverse();
            //console.log(data);
            var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Type</th><th>Instructor</th><th>Action</th></tr></thead>";

            for (var i = data.length - 1; i >= 0; i--) {
                    a += "<tr><td>"+data[i]['id']+"<td>"+data[i]["course_id"]+"</td>"+"<td>"+data[i]["course_name"]+"</td><td>"+data[i]['slot']+"</td><td>"+data[i]['type']+"</td><td>"+data[i]['instructor'];
                if(data[i]['instructor'] == user_name){
                    a+= "</td><td><button val='0' idv='"+data[i]['id']+"' cid='"+data[i]['course_id']+"' nme='"+data[i]['course_name']+"' type='"+data[i]['type']+"' ins='"+data[i]['instructor']+"' class='btn-opt btn-edit btn btn-success'>Edit</button><button val='1' idv='"+data[i]['id']+"' class='btn btn-opt btn-del btn-info'>Delete</button></td>";
                }
            };
            $('#main').append(a);
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
                    c = 0
                    var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Type</th><th>Instructor</th><th>Action</th></tr></thead>";

                    for (var i = data.length - 1; i >= 0; i--){
                        for (var j = data[i].length - 1; j >= 0; j--) {
                            c = c+1;
                            if(data[i][j]['instructor'] == user_name){
                                a += "<tr><td>"+data[i][j]["id"]+"</td><td>"+data[i][j]["course_id"]+"</td><td>"+data[i][j]["course_name"]+"</td><td>"+data[i][j]['slot']+"</td><td>"+data[i][j]['type']+"</td><td>"+data[i][j]['instructor'];
                                a+= "</td><td><button val='0' idv='"+data[i][j]['id']+"' class='btn-edit btn btn-success'>Edit</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-del btn btn-info'>Delete</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-opt btn btn-warning'>Resolve</button></td>";
                            }
                        }
                    };
                  // a+= "</tr><tr><td></td></tr>"
                  $('#comp_total').html(data.length)

                  console.log(c);
                  $('#clashes').append(a);
                }else{
                    $('#clashes').append("<thead class='thead-inverse'><th>No Clashes</th></thead>");
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
                var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Semester</th><th>Batch</th><th>Dept</th><th>Slot</th><th>Instructor</th><th>Action</th></tr></thead>";
                c=0
                for (var i = data.length - 1; i >= 0; i--){
                    for (var j = data[i].length - 1; j >= 0; j--) {
                        c = c+1;
                        if(data[i][j]['instructor'] == user_name){
                            a += "<tr><td>"+data[i][j]["id"]+"</td><td>"+data[i][j]["course_id"]+"</td><td>"+data[i][j]["course_name"]+"</td><td>"+data[i][j]['sem']+"</td><td>"+data[i][j]['batch']+"</td><td>"+data[i][j]['dept']+"</td><td>"+data[i][j]['slot']+"</td><td>"+data[i][j]['instructor'];
                            a+= "</td><td><button val='0' idv='"+data[i][j]['id']+"' class='btn-edit btn btn-success'>Edit</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-del btn btn-info'>Delete</button><button val='1' idv='"+data[i][j]['id']+"' class='btn-opt btn btn-warning'>Resolve</button></td>";
                        }
                    }
                };
                $('#comp_total').html(parseInt($('#comp_total').html())+data.length);
                $('#clashes_1').append(a);
            }else{
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
            var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Type</th><th>Instructor</th><th>Action</th></tr></thead>";

            for (var i = data.length - 1; i >= 0; i--) {
                if(data[i]['instructor'] == user_name){
                    a += "<tr><td>"+data[i]['id']+"<td>"+data[i]["course_id"]+"</td>"+"<td>"+data[i]["course_name"]+"</td><td>"+data[i]['slot']+"</td><td>"+data[i]['type']+"</td><td>"+data[i]['instructor'];
                    a+= "</td><td><button val='0' idv='"+data[i]['id']+"' cid='"+data[i]['course_id']+"' nme='"+data[i]['course_name']+"' type='"+data[i]['type']+"' ins='"+data[i]['instructor']+"' class='btn-opt btn-edit btn btn-success'>Edit</button><button val='1' idv='"+data[i]['id']+"' class='btn btn-opt btn-del btn-info'>Delete</button></td>";
                }
            };
            $('#my_courses').append(a);
        }
    })
        $.ajax({
            url: "get_electives.php",
            success: function(result){
            //console.log(result);
            data = JSON.parse(result);
            data = data.reverse();
            //console.log(data);
            var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Sem</th><th>Batch</th><th>Dept</th><th>Action</th></tr></thead>";

            for (var i = data.length - 1; i >= 0; i--) {
                a +="<tr><td>"+data[i]['id']+"<td>"+data[i]["course_id"]+"</td><td>"+data[i]['course_name']+"</td><td>"+data[i]['slot']+"</td><td>"+data[i]['sem']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept'];
                if(data[i]['instructor'] == user_name){
                    a+= "</td><td><button val='0' idv='"+data[i]['id']+"' class='btn-edit btn btn-success'>Edit</button><button val='1' idv='"+data[i]['id']+"' class='btn-del btn btn-info'>Delete</button></td>";
                }
            };
            a+= "</tr><tr><td></td></tr>"
            $('#electives').append(a);
        }
    })
        val = 0
        idv = 0
        $(document.body).on('click', '#reset' ,function(){
            $("#reset_modal").modal();
        })
        $(document.body).on('click', '#reset_1' ,function(){
            $('#reset_modal').modal('toggle');
            sem = $('.semester option:selected').val();
            console.log(sem);
            $("#reset_modal_1").modal();
            $.ajax({
                url: "get_elective_list.php",
                data: {sem:sem},
                type : 'POST',
                success: function(result){
                    // console.log(result);
                    data = JSON.parse(result);
                    data = data.reverse();
                    var a = "<thead class='thead-inverse'><tr><th>Course Id</th><th>Name</th><th>Semester</th><th>Batch</th><th>Dept</th><th>Slot</th></tr></thead>";
                    for (var i = data.length - 1; i >= 0; i--) {
                        a += "<tr><td>"+data[i]["course_id"]+"</td><td>"+data[i]['course_name']+"</td><td>"+data[i]['sem']+"</td><td>"+data[i]['batch']+"</td><td>"+data[i]['dept'];
                        a += "</td><td><select><option></option><option>A</option><option>B</option><option>C</option><option>D</option><option>E</option><option>F</option><option>G</option><option>H</option><option>J</option><option>K</option><option>L</option><option>M</option><option>P</option><option>Q</option><option>R</option><option>S</option><option>T</option></select></td></tr>";
                    }
                    $('#elec_slot_list').empty();
                    $('#elec_slot_list').append(a);
                }
            });
        })
        $(document.body).on('click', '#reset_2' ,function(){
            var list = new Array();
            $("#elec_slot_list tr").each(function(row,tr){
                if(row > 0){
                    list[row-1] = {
                        "course_id":$(tr).find('td:eq(0)').text(),
                        "course_name":$(tr).find('td:eq(1)').text(),
                        "sem":$(tr).find('td:eq(2)').text(),
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
            ins = $('.curr_ins').html();
            slot = $('.course_slot').val();
            id = $('.course_id').val();
            type = $('.course_type').val();
            $.ajax({
                url: "add_course.php",
                data: {name:name,course_id:id,ins:ins,slot:slot,type:type},
                type : 'POST',
                success: function(result){
                    console.log(result);
                    alert("Added Sucessfully");
                    location.reload();
                }
            });
        })
        $(document.body).on('click', '.btn-edit-submit' ,function(){
            name = $('.edit_course_name').val();
            slot = $('.edit_course_slot').val();
            cid = $('.edit_course_id').html();
            type = $('.edit_course_type').val();
            $.ajax({
                url: "edit_course.php",
                data: {name:name,course_id:cid,slot:slot,type:type},
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
                    console.log(name);
                    $('.edit_course_name').val(name);
                    $('.edit_course_id').html(cid);
                    $('.edit_course_slot').val(slot).change();
                    $('.edit_course_type').val(type).change();

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
                    var a = "<thead class='thead-inverse'><tr><th>Serial</th><th>Course Id</th><th>Name</th><th>Slot</th><th>Type</th><th>Instructor</th></tr></thead>";
                    a += "<tr><td>"+data[0]['id']+"<td>"+data[0]["course_id"]+"</td>"+"<td>"+data[0]["course_name"]+"</td><td>"+data[0]['slot']+"</td><td>"+data[0]['type']
                    +"</td><td>"+data[0]['instructor'];
                    $('.del_id').val(idv);
                    $('#del_table').empty();   
                    $('#del_table').append(a);

                }
            });
            $('#del_modal').modal()
        })
    });
</script>
</html>