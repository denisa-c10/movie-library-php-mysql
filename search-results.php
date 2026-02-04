<?php require_once('includes/header.php'); ?>


<div class="container my-5">
    <h1 class="page-title text-center">
        Search results for:
        <?php echo isset($_GET['s']) ? htmlspecialchars($_GET['s']) : 'Nicio frază'; ?>
    </h1>

    <?php
    if (isset($_GET['s']) && !empty($_GET['s'])):
        $searchTerm = htmlspecialchars($_GET['s']);

        if (strlen($searchTerm) < 3):
    ?>
            <div class="alert alert-warning text-center">Please type at least 3 characters.</div>
        <?php
        else:
            $results = array_filter($movies, function ($movie) use ($searchTerm) {
                return stripos($movie['title'], $searchTerm) !== false;
            });
        ?>

            <?php if (!empty($results)): ?>
                <div class="row justify-content-center mt-4">
                    <?php foreach ($results as $result): ?>
                        <div class="col col-md-4 mb-4 movie-card">
                            <div class="card h-100 shadow-sm rounded-4">
                                <img class="card-img-top rounded-top-4"
                                    src="<?php echo $result['posterUrl']; ?>"
                                    alt="<?php echo htmlspecialchars($result['title']); ?>" />
                                <div class="card-body d-flex flex-column">
                                    <h2 class="card-title text-center">
                                        <?php echo htmlspecialchars($result['title']); ?>
                                    </h2>
                                    <p class="card-text">
                                        <?php echo htmlspecialchars(truncatePlot($result['plot'])); ?>
                                    </p>
                                    <a class="btn btn-violet" href="movie.php?id=<?php echo $result['id']; ?>" role="button">Read more</a>

                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>
                </div>
            <?php else: ?>
                <div class="alert alert-warning text-center mt-4">
                    There are no results for this search. Please rephrase your request.
                </div>
            <?php endif; ?>

        <?php
        endif;
    else:
        ?>
        <div class="alert alert-warning text-center">You haven't entered any search term.</div>
    <?php endif; ?>

    <div class="text-center mt-4">
        <a href="../movies.php" class="btn btn-violet">Back to Movies</a>
    </div>
</div>

<?php include_once('includes/footer.php'); ?>