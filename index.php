<?php require_once('includes/header.php'); ?>
<?php
$jsonData = file_get_contents(__DIR__ . "/assets/movies-list-db.json");
$data = json_decode($jsonData, true);

// Lista de filme din json
$movies = $data['movies'];

$conn = mysqli_connect("localhost", "root", "", "siteweb");

// Inserare fiecare film 
/*foreach ($movies as $movie) {

    $title = mysqli_real_escape_string($conn, $movie['title']);
    $year = (int)$movie['year'];

    $genre = mysqli_real_escape_string($conn, implode(", ", $movie['genres']));

    $runtime = (int)$movie['runtime'];
    $plot = mysqli_real_escape_string($conn, $movie['plot']);

    $sql = "INSERT INTO Movies (title, year, genre, runtime, plot)
            VALUES ('$title', $year, '$genre', $runtime, '$plot')";

    mysqli_query($conn, $sql);
}*/


date_default_timezone_set('Europe/Bucharest');
$current_hour = date('H');

if ($current_hour >= 5 && $current_hour < 12) {
    $greeting = "Good Morning";
} elseif ($current_hour >= 12 && $current_hour < 17) {
    $greeting = "Good Afternoon";
} elseif ($current_hour >= 17 && $current_hour < 21) {
    $greeting = "Good Evening";
} else {
    $greeting = "Good Night";
}
?>


<div class="hero-section">
    <h1 class="hero-title"><?php echo $greeting; ?> </h1>

    <p class="hero-subtitle">
        Discover movies, explore genres & build your favorites list
    </p>

    <a class="btn btn-violet btn-lg" href="movies.php">
        Explore Movies
    </a> <br><br>
    <button onclick="toggleBox()" class="btn btn-violet btn-lg">
        Show details
    </button>

    <div id="box" class="slide-box">
        Welcome! Here you can explore a wide range of movies across various genres. Click on "Explore Movies" to start your journey!
    </div>
    <script>
        function toggleBox() {
            document.getElementById("box").classList.toggle("active");
        }
    </script>
    <button onclick="toggleTable()" class="btn btn-violet">
        See Top Movies
    </button>

    <div id="tableBox" class="slide-box">
        <table class="table table-sm table-bordered text-center">
            <thead class="table-light">
                <tr>
                    <th>#</th>
                    <th>Title</th>
                    <th>Genre</th>
                    <th>Rating</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Inception</td>
                    <td>Sci-Fi</td>
                    <td>⭐ 8.8</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Interstellar</td>
                    <td>Sci-Fi</td>
                    <td>⭐ 8.6</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>The Dark Knight</td>
                    <td>Action</td>
                    <td>⭐ 9.0</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

<script>
    function toggleTable() {
        document.getElementById("tableBox").classList.toggle("active");
    }
</script>


<?php require_once('includes/footer.php'); ?>