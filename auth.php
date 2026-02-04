<?php
session_start();

// Configurare Baza de Date
$host = 'localhost';
$db_name = 'siteweb';
$username_db = 'root';
$password_db = '';

$message = '';

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db_name;charset=utf8mb4", $username_db, $password_db);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Eroare la conectare: " . $e->getMessage());
}

// Verificam daca s a trimis un formular
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action'])) {

    $action = $_POST['action'];

    // SIGN UP
    if ($action === 'signup') {
        $user = trim($_POST['username']);
        $email = trim($_POST['email']);
        $pass = $_POST['password'];

        $stmt = $pdo->prepare("SELECT user_id FROM users WHERE email = ?");
        $stmt->execute([$email]);

        if ($stmt->rowCount() > 0) {
            $message = "Acest email este deja folosit!";
        } else {
            $password_hash = password_hash($pass, PASSWORD_DEFAULT);
            $sql = "INSERT INTO users (username, email, password_hash, data_inregistrare) VALUES (?, ?, ?, NOW())";
            $stmt = $pdo->prepare($sql);

            if ($stmt->execute([$user, $email, $password_hash])) {
                $message = "Cont creat cu succes! Te poți autentifica.";
            } else {
                $message = "A apărut o eroare la înregistrare.";
            }
        }
    }

    // LOGIN
    elseif ($action === 'login') {
        $email = trim($_POST['email']);
        $pass = $_POST['password'];

        $stmt = $pdo->prepare("SELECT * FROM users WHERE email = ?");
        $stmt->execute([$email]);
        $userRow = $stmt->fetch(PDO::FETCH_ASSOC);

        if ($userRow && password_verify($pass, $userRow['password_hash'])) {
            $_SESSION['user_id'] = $userRow['user_id'];
            $_SESSION['username'] = $userRow['username'];
            session_write_close();
            header("Location: index.php");
            exit();
        } else {
            $message = "Email sau parolă incorecte.";
        }
    }
}
require_once('includes/header.php'); ?>

<link rel="stylesheet" href="auth-style.css">

<div class="auth-page-wrapper">
    <div class="auth-container">

        <?php if (!empty($message)): ?>
            <div style="background: #e1a8daff; color: rgba(135, 9, 174, 1); padding: 10px; margin-bottom: 15px; border-radius: 5px; text-align: center; border: 1px solid #fcc;">
                <?php echo htmlspecialchars($message); ?>
            </div>
        <?php endif; ?>

        <div class="form-box login-box active">
            <h2>Sign In</h2>
            <form action="auth.php" method="POST">
                <input type="hidden" name="action" value="login">

                <div class="auth-input-group">
                    <label for="login-email">Email</label>
                    <input type="email" id="login-email" name="email" required>
                </div>

                <div class="auth-input-group">
                    <label for="login-password">Password</label>
                    <input type="password" id="login-password" name="password" required>
                </div>

                <button type="submit" class="auth-submit-btn">Login</button>

            </form>
            <p class="auth-switch-form">Don't have an account? <a href="#" id="show-signup">Sign Up</a></p>
        </div>

        <div class="form-box signup-box">
            <h2>Sign Up</h2>
            <form action="auth.php" method="POST">
                <input type="hidden" name="action" value="signup">

                <div class="auth-input-group">
                    <label for="signup-name">Username</label>
                    <input type="text" id="signup-name" name="username" required>
                </div>

                <div class="auth-input-group">
                    <label for="signup-email">Email</label>
                    <input type="email" id="signup-email" name="email" required>
                </div>

                <div class="auth-input-group">
                    <label for="signup-password">Password</label>
                    <input type="password" id="signup-password" name="password" required>
                </div>

                <button type="submit" class="auth-submit-btn">Register</button>

            </form>
            <p class="auth-switch-form">Already have an account? <a href="#" id="show-login">Sign In</a></p>
        </div>

    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        const showSignupLink = document.getElementById('show-signup');
        const showLoginLink = document.getElementById('show-login');
        const loginBox = document.querySelector('.login-box');
        const signupBox = document.querySelector('.signup-box');

        // Formular sign up
        if (showSignupLink) {
            showSignupLink.addEventListener('click', function(e) {
                e.preventDefault();
                loginBox.classList.remove('active');
                signupBox.classList.add('active');
                loginBox.style.transform = 'translateX(-100%)';
                signupBox.style.transform = 'translateX(0)';
            });
        }

        // Formular login
        if (showLoginLink) {
            showLoginLink.addEventListener('click', function(e) {
                e.preventDefault();
                signupBox.classList.remove('active');
                loginBox.classList.add('active');
                loginBox.style.transform = 'translateX(0)';
                signupBox.style.transform = 'translateX(100%)';
            });
        }
    });
</script>

<?php require_once('includes/footer.php'); ?>