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
          $img = explode("||", $list[0]['images']);
          $c = count($img)-1;
          for($i = 0; $i < $c; $i++){
            echo '<img src="' . base_url()."/".$img[$i] . '" target="_blank" alt="Listing Image" width="100" height="100">';
          }
        }
      ?>

    </div>
  </div>

</body>
</html>
