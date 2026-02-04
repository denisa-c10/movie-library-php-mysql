<?php
function runtime_prettier($lmovie)
{
    $movie_hours = floor($lmovie / 60);
    $movie_minutes = $lmovie % 60;
    return $movie_hours . ' hours ' . $movie_minutes . ' minutes';
}

function check_old_movie($movieyear)
{
    $age = date('Y') - $movieyear;
    if ($age > 40) {
        return "Old movie: $age years";
    } else {
        return "Filmul are mai puțin de 40 de ani";
    }
}

function truncatePlot($plot)
{
    if (strlen($plot) > 100) {
        return substr($plot, 0, 100) . '...';
    } else {
        return $plot;
    }
}

// Functie DB
function dbConnect($host = 'localhost', $username = "root", $password = "", $dbname = "siteweb")
{
    $conn = mysqli_connect($host, $username, $password, $dbname);
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
    return $conn;
}
