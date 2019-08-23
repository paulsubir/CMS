<?php
function showdetails($appid,$name){
    include('dbcon.php');
    $qry="SELECT `appoint_id`,`pfname`,`pmname`,`plname`,`dfname`,`dmname`,`dlname`,`chk_date`,`fees`from patient,doctor,check_up where pfname like '$name%' and p_id=pid and doc_id=did and appoint_id='$appid';";
    $run=mysqli_query($con,$qry);
    if(mysqli_num_rows($run)>0){
        $data=mysqli_fetch_assoc($run);
        ?>
        <table align="center" width="80%" border="1" style="margin-top:20px;">
        <tr style="background-color:#000; color:#fff;">
        <th>Appointment Number</th>
        <th>Patient Name</th>
        <th>Referred Doctor</th>
        <th>Appointment Date</th>
        <th>Doctor Fee</th>
        </tr>
        <tr align="center">
                <td><?php  echo $data['appoint_id']; ?></td>
                <td><?php  echo $data['pfname']," ",$data['pmname']," ",$data['plname']; ?></td>
                <td><?php  echo $data['dfname']," ",$data['dmname']," ",$data['dlname']; ?></td>
                <td><?php  echo $data['chk_date']; ?></td>
                <td><?php  echo $data['fees']; ?></td>
                </tr>
                <?php
    }
    else{
        ?>
        <script>alert('No Records Found')</script>
        <?php
   }
}
?>