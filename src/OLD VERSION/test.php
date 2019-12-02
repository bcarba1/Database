<!DOCTYPE html>
<html>
    <head>
        <title>Testing - PHP</title>
    </head>
    <body>
        <table>
            <tr>
                <th>DNAME</th>
                <th>Dnumber</th>
                <th>MGRSSN</th>
                <th>MGRSTARTDATE</th>
            </tr>
            <?php
            $conn = mysqli_connect('triton.towson.edu','dgargu1','Cosc*ad35','dgargu1db','3360');
            //Check Connection
            if($conn-> connect_error)
            {
                die('Connection Failed: '.$conn-> connect_error)
                //echo "Failed to Connect to MYSQL: "  .$conn -> connect_error;
//                exit();
            }
            $sql = "SELECT DNAME,DNUMBER,MGRSSN,MGRSTARTDATE from Department";
            $result = $conn->query($sql);

            if($result-> num_rows >0)
            {
                while($row = $result-> fetch_assoc())
                {
                    echo "<tr><td>". $row['DNAME' ."</td><td>".$row['DNUMBER']."</td><td>".$row['MGRSSN']."</td><td>".$row['MGRSTARTDATE']."</td></tr>";
                }
                echo "</table";
            }
            else {
                echo '0 result';
            }
            
            $conn->close(); 
            
            ?>
        </table>
    </body>
</html>