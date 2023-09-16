<? $this->load->view('includes/header') ?>
<!-- End Header -->

  <style>
   .scrolling-images {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 300px;
    }
    
    .availability-heading {
      text-align: center;
      padding: 20px;
      background-color: #f5f5f5;
    }
    
    .listings-heading {
      text-align: center;
      margin-top: 20px;
    }
    
    .listings {
      display: block;
      text-align: center;
    }
    
    .listing {
      display: inline-block;
      width: 300px;
      border: 1px solid #ccc;
      padding: 10px;
      margin: 10px;
      box-sizing: border-box;
    }
    
    .listing h3 {
      margin: 0;
      font-size: 18px;
    }
    
    .listing p {
      margin: 5px 0;
    }
  </style>
</head>
<body>
  <style>
    .scrolling-images{
      margin-top: 50px; /* Adjust the value as needed */
    }
  </style>
  <div class="content">
    <!-- Content goes here -->
  </div>
  <!-- <div class="scrolling-images"> -->
    <!-- <a href = "https://www.opgforestcove.com/"><img src="https://cdngeneralcf.rentcafe.com/dmslivecafe/3/1182987/Logo%20Good.JPG?crop=(0,0,300,169)&cropxunits=300&cropyunits=169&quality=85" alt="Image 1" width = "250" height = "200"><div class="image-text">Orion Property Group</div></a>
    <a href = "https://shirleysrealty.com/"><img src="https://media.merchantcircle.com/9883251/1606764023.37-3365f30b2144c810d6abe11f313454fd_medium.png" alt="Image 2" width = "200" height = "200"><div class="image-text">Shirley's Reality,LTD.</div></a>
    <a href = "https://propertymanage.biz/u42275/rentals/listings"><img src="https://rtd4.com/thumb_primary.php?p=525845&v=1554229836&cf_cache=true" alt="Image 3" width = "200" height = "200"><div class="image-text">Sri Four LLC</div></a>
   -->
  <!-- </div> -->
  <div class="container">
 
  <h2 align="center"><centre>Request Listings</centre></h2>
  <table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
                <th>Requested by</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Requested Date & Time</th>
                <th>Post Title</th>
                <th>Post Description</th>
                <th>Post Location</th>
                <th>Contact Number</th>
            </tr>
        </thead>
        <tbody>
            <?php 
                if(!empty($list)){
                foreach($list as $li){
                    $rd = explode(" ", $li['rdate']);
                    $rd1 = explode("-", $rd[0]);
                    echo '<tr>'.
                    '<td>'. $li['name'] .'</td>' .
                    '<td>'. $li['phone'] .'</td>' .
                    '<td>'. $li['email'] .'</td>' .
                    '<td>'. $rd1[2]."/".$rd1[1]."/".$rd1[0]." ".$rd[1] .'</td>' .
                    '<td>'. $li['title'] .'</td>' .
                    '<td>'. $li['description'] .'</td>' .
                    '<td>'. $li['location'] .'</td>' .
                    '<td>'. $li['contact_number'] .'</td>' .
                    '</tr>';
                    // '.<?=base_url()."home/ViewListing.php?id='.$li['id'].'"
                    // <button type="button" id="ViewListing" class="ViewListing btn btn-info" lid='.$li['id'].'>View More</button>' .
                
                    // echo $li['images'];
                }
                }
            ?>

    </table>



<!-- </body>
<body> -->
 
</div>
  <script>
    $(document).ready(function(){
      $("button").click(function(){
        $("p").slideToggle();
      });

        $('#example').dataTable({
            aoData: [{}]
        }); 
    });
  </script>
  </div>
  <!-- ======= Footer ======= -->
  <? $this->load->view('includes/footer') ?>