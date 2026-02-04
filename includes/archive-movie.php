<div class="card h-100 shadow-sm rounded-4">
  <img class="card-img-top rounded-top-4" src="<?php echo $movie['posterUrl']; ?>" alt="<?php echo htmlspecialchars($movie['title']); ?>" />
  <div class="card-body d-flex flex-column">
    <h2 class="card-title text-center"><?php echo htmlspecialchars($movie['title']); ?></h2>
    <div class="card-text mb-3">
      <?php
      $plot = $movie['plot'];
      $truncatedPlot = truncatePlot($plot);
      echo "<p>" . htmlspecialchars($truncatedPlot) . "</p>";
      ?>
    </div>
    <a class="btn btn-violet mt-auto" href="movie.php?id=<?php echo $movie['id']; ?>" role="button">Read more</a>
  </div>
</div>