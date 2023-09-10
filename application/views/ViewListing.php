<!DOCTYPE html>
<html>
<head>
  <title>Property Details</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
    }

    .property-details {
      max-width: 600px;
      margin: 30px auto;
      padding: 20px;
      border: 1px solid #ccc;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    .property-details h2 {
      margin-bottom: 20px;
    }

    .property-details p {
      margin-bottom: 10px;
    }

    .image-gallery {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      margin-top: 20px;
    }

    .image-gallery img {
      width: 150px;
      height: 150px;
      object-fit: cover;
      margin-right: 10px;
      margin-bottom: 10px;
    }
  </style>
</head>
<body>
  
  <div class="property-details">
  <a href="<?php echo base_url()."home"?>" style="float: right;">Back Home</a>
    <?php if(!empty($list)){?>
      <?php if($tbl == ""){ ?>
        <h2>Property Details</h2>
        <p><strong>Title:</strong> <span id="title"><?php echo $list[0]['title']; ?></span></p>
        <p><strong>Description:</strong> <span id="description"><?php echo $list[0]['description']; ?></span></p>
        <p><strong>Price:</strong> <span id="price"><?php echo $list[0]['price']; ?></span></p>
        <p><strong>Bedrooms:</strong> <span id="bedrooms"><?php echo $list[0]['bedrooms']; ?></span></p>
        <p><strong>Bathrooms:</strong> <span id="bathrooms"><?php echo $list[0]['bathrooms']; ?></span></p>
        <p><strong>Property Type:</strong> <span id="property-type"><?php echo $list[0]['property_type']; ?></span></p>
        <p><strong>Availability for:</strong> <span id="availability"><?php echo $list[0]['availability_for']; ?></span></p>
        <div class="image-gallery" id="image-gallery">
          <?php 
            if(!empty($list[0]['availability_for'])){
              if($list[0]['video'] != ""){
                echo '<video src="' . base_url()."/".$list[0]['video'] . '" width="120" height="100" controls autoplay></video>';
              }
              $img = explode("||", $list[0]['images']);
              $c = count($img)-1;
              for($i = 0; $i < $c; $i++){
                echo '<img src="' . base_url()."/".$img[$i] . '" target="_blank" alt="Listing Image" width="100" height="100">';
              }
            }
          ?>
        </div>
      <?php } else if($tbl == "1"){?>
        <h2>Ride Details</h2>
        <p><strong>Name:</strong> <span id="name"><?php echo $list[0]['name']; ?></span></p>
        <p><strong>Pickup:</strong> <span id="pickup"><?php echo $list[0]['pickup']; ?></span></p>
        <p><strong>Drop:</strong> <span id="drop"><?php echo $list[0]['drop']; ?></span></p>
        <p><strong>Contact Number:</strong> <span id="contact_number"><?php echo $list[0]['contact_number']; ?></span></p>
        <p><strong>Date & Time:</strong> <span id="date"><?php echo $list[0]['date']." ".$list[0]['time']; ?></span></p>
      <?php } else if($tbl == "2"){?>
        <h2>Boooked Ride Details</h2>
        <p><strong>Name:</strong> <span id="name"><?php echo $list[0]['name']; ?></span></p>
        <p><strong>Pickup:</strong> <span id="pickup"><?php echo $list[0]['pickup']; ?></span></p>
        <p><strong>Drop:</strong> <span id="drop"><?php echo $list[0]['drop']; ?></span></p>
        <p><strong>Contact Number:</strong> <span id="contact_number"><?php echo $list[0]['contact_number']; ?></span></p>
        <p><strong>Date & Time:</strong> <span id="date"><?php echo $list[0]['date']." ".$list[0]['time']; ?></span></p>
      <?php }?>
      
    <?php }?>
    
  </div>

</body>
</html>
