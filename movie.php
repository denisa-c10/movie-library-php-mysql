<?php
require_once('includes/functions.php');
require_once('includes/header.php');

// Conectare la DB
$conn = dbConnect();

$user_id = $_SESSION['user_id'] ?? 1;

if (isset($_GET['id'])) {
    $movie_id = (int)$_GET['id'];
} else {
    echo "<div class='alert alert-warning'>No movie ID provided!</div>";
    exit;
}

// Cautam filmul 
$filtered_movie = array_filter($movies, function ($movie) use ($movie_id) {
    return $movie['id'] == $movie_id;
});
$filtered_movie = array_values($filtered_movie);

if (count($filtered_movie) === 0) {
    echo "<div class='alert alert-danger'>Film not found!</div>";
    echo "<a href='movies.php' class='btn btn-primary'>Back to Movies</a>";
    exit;
}

$found_movie = $filtered_movie[0];

// Verificam daca filmul este fav
$sql = "SELECT * FROM Favorites WHERE user_id = $user_id AND movie_id = $movie_id";
$result = mysqli_query($conn, $sql);
$isfav = mysqli_num_rows($result) > 0;

// Procesarea formularului de adaugat/sters favorite
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['favorite_action'])) {
    $action = $_POST['favorite_action'];

    if ($action === 'add' && !$isfav) {
        $addSql = "INSERT INTO Favorites (user_id, movie_id) VALUES ($user_id, $movie_id)";
        mysqli_query($conn, $addSql);
        $isfav = true;
    }

    if ($action === 'remove' && $isfav) {
        $removeSql = "DELETE FROM Favorites WHERE user_id = $user_id AND movie_id = $movie_id";
        mysqli_query($conn, $removeSql);
        $isfav = false;
    }
}
?>

<div class="container movie-details">
    <div class="row align-items-start">
        <div class="col-12 col-md-4 mb-4 text-center">
            <img
                src="<?php echo $found_movie['posterUrl']; ?>"
                class="movie-poster"
                alt="<?php echo htmlspecialchars($found_movie['title']); ?>">
        </div>
        <div class="col-12 col-md-8">
            <h1><?php echo $found_movie['title']; ?></h1>
            <h2>
                <?php echo $found_movie['year']; ?>
                <?php if (date('Y') - $found_movie['year'] > 40) { ?>
                    <span class="badge bg-danger"><?php echo check_old_movie($found_movie['year']); ?></span>
                <?php } ?>
            </h2>
            <p>
                <?php echo $found_movie['plot']; ?><br>
                Runtime: <?php echo runtime_prettier($found_movie['runtime']); ?><br><br>
                Director: <?php echo $found_movie['director']; ?><br>
                Genres: <?php echo implode(', ', $found_movie['genres']); ?><br>
                Actors:
            <ul>
                <?php foreach (explode(', ', $found_movie['actors']) as $actor) { ?>
                    <li><?php echo $actor; ?></li>
                <?php } ?>
            </ul>
            </p>
            <form method="post" style="display: inline-block;">
                <?php if ($isfav) { ?>
                    <input type="hidden" name="favorite_action" value="remove">
                    <button type="submit" class="btn btn-outline-violet">
                        Delete from favorites
                    </button>
                <?php } else { ?>
                    <input type="hidden" name="favorite_action" value="add">
                    <button type="submit" class="btn btn-violet">
                        Add to favorites
                    </button>
                <?php } ?>
            </form>
        </div>
    </div>
</div>

<!-- review -->
<?php
$submitted = false;
$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['review_submit'])) {
    $submitted = true;
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $review = mysqli_real_escape_string($conn, $_POST['review']);

    // Verif daca exista deja review de la acelasi user pt film
    $checkSql = "SELECT * FROM Reviews WHERE email='$email' AND movie_id=$movie_id";
    $result = mysqli_query($conn, $checkSql);

    if (mysqli_num_rows($result) > 0) {
        $error = "You have already left a review for this movie.";
        $submitted = false;
    } else {
        $sql = "INSERT INTO Reviews (names, email, review, movie_id) VALUES ('$name', '$email', '$review', $movie_id)";
        if (!mysqli_query($conn, $sql)) {
            echo "Eroare: " . mysqli_error($conn);
        }
    }
}
?>

<?php if ($submitted && empty($error)) { ?>
    <div class="alert alert-success">Your review has been submitted!</div>
<?php } elseif (!empty($error)) { ?>
    <div class="alert alert-danger"><?php echo $error; ?></div>
<?php } ?>
<div class="review-box">
    <form action="" method="post">
        <input type="text" name="name" placeholder="Name" class="form-control mb-2" required>
        <input type="email" name="email" placeholder="Email" class="form-control mb-2" required>
        <textarea name="review" placeholder="Leave your review here" class="form-control mb-2" rows="3" required></textarea>
        <button type="submit" name="review_submit" class="btn btn-violet">Submit Review</button>
    </form>
</div>

<div class="container mt-3">
    <a class="btn btn-outline-violet" href="movies.php">Back To Movies</a>
</div>

<?php require_once('includes/footer.php'); ?>