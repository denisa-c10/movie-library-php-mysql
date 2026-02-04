<?php
if (session_status() === PHP_SESSION_NONE) {
  session_start();
} ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Coman Denisa</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" href="style.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
  </script>
</head>

<body>

  <div class="container-fluid">

    <?php
    if (!in_array(basename($_SERVER['PHP_SELF']), array('contact.php', 'index.php'))) {
      $jsonFile = $_SERVER['DOCUMENT_ROOT'] . '/site/assets/movies-list-db.json';
      if (file_exists($jsonFile)) {
        $movies = json_decode(file_get_contents($jsonFile), true)['movies'];
      } else {
        echo "Fișierul JSON nu a fost găsit.";
      }
    }

    ?>
    <?php
    require_once($_SERVER['DOCUMENT_ROOT'] . '/site/includes/functions.php');
    ?>

    <nav class="navbar navbar-expand-lg navbar-light bg-light header-navbar">
      <div class="container-fluid">
        <a class="navbar-brand" href="index.php">
          <img src="img/logo.jpg" width="100" height="50" alt="Logo">
        </a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <?php $menu_items = [
              [
                'title' => 'Home',
                'link' => 'index.php'
              ],
              [
                'title' => 'Movies',
                'link' => 'movies.php'
              ],
              [
                'title' => 'Genres',
                'link' => 'genres.php'
              ],
              [
                'title' => 'Photo Gallery',
                'link' => 'photo-gallery.php'
              ],
              [
                'title' => 'Contact',
                'link' => 'contact.php'
              ]
            ];
            // Verif daca user-ul este logat
            if (isset($_SESSION['user_id'])) {
              // Adaugam favorites daca e logat 
              $menu_items[] = [
                'title' => 'Favorites',
                'link' => 'favorites.php'
              ];
              // Adaugam butonul de logout
              $username_display = isset($_SESSION['username']) ? $_SESSION['username'] : 'User';
              $menu_items[] = [
                'title' => 'Log Out (' . $username_display . ')',
                'link' => 'logout.php'
              ];
            } else {
              $menu_items[] = [
                'title' => 'Log In',
                'link' => 'auth.php'
              ];
            }
            foreach ($menu_items as $menu_item) { ?>
              <li class="nav-item">
                <a class="nav-link <?php if (basename($_SERVER['PHP_SELF']) === $menu_item['link']) echo 'active'; ?>" <?php if (basename($_SERVER['PHP_SELF']) === $menu_item['link']) echo 'aria-current="page"'; ?> href="<?php echo $menu_item['link']; ?>"><?php echo $menu_item['title']; ?></a>
              </li>
            <?php
            } ?>
          </ul>
          <form class="d-flex" action="search-results.php" method="get">
            <input class="form-control me-2 flex-grow-1" type="text" name="s"
              value="<?= htmlspecialchars($_GET['s'] ?? '') ?>"
              placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>