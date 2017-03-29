
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>Title</title>
    <link rel="stylesheet" href="../bootstrap.min.css">
</head>
<body>
    <div class="table-responsive">
        <table class="table table-condensed table-striped"><caption style="text-align: center"><h3>亲友团信息</h3>.</caption>
            <thead>
            <tr>
                <th>序号</th>
                <th>名字</th>
                <th>手机</th>
                <th>人数</th>
                <th>亲友方</th>
                <th>寄语</th>
                <th>记录时间</th>
            </tr>
            </thead>
            <tbody>
            <?php
            require_once 'check.php';
            require_once 'connect.php';


            $mysqli = initConnect();
            $i=0;
            $results = $mysqli->query("SELECT * FROM guest");
            while($row = $results->fetch_assoc()) {
                print '<tr>';
                print '<td>'.$i++.'</td>';
                print '<td>'.$row["f_name"].'</td>';
                print '<td>'.$row["f_phone"].'</td>';
                print '<td>'.$row["f_num"].'</td>';
                print '<td>'.$row["f_position"].'</td>';
                print '<td>'.$row["f_text"].'</td>';
                print '<td>'.$row["f_time"].'</td>';
                print '</tr>';
            }

            // Frees the memory associated with a result
            $results->free();

            // close connection
            $mysqli->close();
            ?>
            </tbody>
        </table>
    </div>
</body>
</html>
