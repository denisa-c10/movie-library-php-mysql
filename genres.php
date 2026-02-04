<?php require_once('includes/header.php'); ?>

<?php
$data = json_decode(file_get_contents('./assets/movies-list-db.json'), true);

if ($data && isset($data['genres'])) {
    $genres = $data['genres'];
} else {
    $genres = [];
}
?>

<h1 class="genres-title">Genres 🎞️</h1>

<ul class="genres-list">
    <?php foreach ($genres as $genre) { ?>
        <li>
            <a href="movies.php?genre=<?php echo urlencode($genre); ?>">
                <?php echo htmlspecialchars($genre); ?>
            </a>
        </li>
    <?php } ?>
</ul>

<?php require_once('includes/footer.php'); ?>