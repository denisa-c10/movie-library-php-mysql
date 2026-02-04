<?php require_once('includes/header.php'); ?>

<?php
// Incarcare JSON
$json_path = './assets/movies-list-db.json';
$movies = [];
if (file_exists($json_path)) {
      $json_data = json_decode(file_get_contents($json_path), true);
      if (isset($json_data['movies'])) {
            $movies = $json_data['movies'];
      }
}

// Filtrare dupa gen 
$page_title = "All Movies";
if (isset($_GET['genre']) && !empty($_GET['genre'])) {
      $selected_genre = htmlspecialchars($_GET['genre']);
      $movies = array_filter($movies, function ($m) use ($selected_genre) {
            return in_array($selected_genre, $m['genres']);
      });
      $movies = array_values($movies);
      $page_title = "Genre: $selected_genre";
}
?>

<h1 class="page-title"><?php echo $page_title; ?></h1>

<div class="container">
      <div class="row justify-content-center">
            <?php if (count($movies) > 0) : ?>
                  <?php foreach ($movies as $movie) : ?>
                        <div class="col col-md-4 mb-4 movie-card">
                              <?php include('includes/archive-movie.php'); ?>
                        </div>
                  <?php endforeach; ?>
            <?php else : ?>
                  <div class='alert alert-warning'>No movies found.</div>
            <?php endif; ?>
      </div>
</div>

<?php require_once('includes/footer.php'); ?>