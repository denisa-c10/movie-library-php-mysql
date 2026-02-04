<?php
session_start();
require_once('includes/functions.php');
require_once('includes/header.php');

// Verificam daca user-ul este logat
if (isset($_SESSION['user_id'])) {
    $user_id = $_SESSION['user_id'];
} else {
    echo "<div class='alert alert-warning'>You have to be logged in to see your favorites.</div>";
    require_once('includes/footer.php');
    exit;
}

$conn = dbConnect();

// Luam toate filmele favorite pentru user
$sql = "SELECT movie_id FROM Favorites WHERE user_id = $user_id";
$result = mysqli_query($conn, $sql);

$favorite_ids = [];
if ($result) {
    while ($row = mysqli_fetch_assoc($result)) {
        $favorite_ids[] = (int)$row['movie_id'];
    }
}

//Filtram pt a afla fav 
$favorite_movies = array_filter($movies, function ($movie) use ($favorite_ids) {
    return in_array($movie['id'], $favorite_ids);
});
$favorite_movies = array_values($favorite_movies);
?>

<div class="container mt-4">
    <h1>Your favorite movies</h1>

    <?php if (count($favorite_movies) === 0) : ?>
        <div class="alert alert-info">You haven't added any movies to favorites.</div>
    <?php else : ?>
        <div class="row">
            <?php foreach ($favorite_movies as $movie) : ?>
                <div class="col-md-4 mb-4 movie-card">
                    <?php include('includes/archive-movie.php'); ?>
                </div>
            <?php endforeach; ?>
        </div>
    <?php endif; ?>

    <a href="movies.php" class="btn btn-violet mt-3">Back to all movies</a>
</div>

<?php require_once('includes/footer.php'); ?>