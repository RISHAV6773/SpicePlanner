<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recipe Library | SpicePlanner</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/recipes.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
</head>
<body>
    <header>
        <div class="container">
            <div class="logo">
                <img src="images/logo.png" alt="SpicePlanner Logo">
                <h1>SpicePlanner</h1>
            </div>
            <nav>
                <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="recipes.html" class="active">Recipes</a></li>
                    <li><a href="meal-planner.html">Meal Planner</a></li>
                    <li><a href="grocery-list.html">Grocery List</a></li>
                    <li><a href="premium.html">Premium</a></li>
                </ul>
            </nav>
            <div class="auth-buttons">
                <button id="signin-btn" class="btn btn-outline">Sign In</button>
                <button id="signup-btn" class="btn btn-primary">Sign Up</button>
                <div id="user-profile" class="user-profile" style="display: none;">
                    <img id="user-avatar" src="images/default-avatar.png" alt="User">
                    <span id="username">User</span>
                    <div class="dropdown-menu">
                        <a href="account.html">My Account</a>
                        <a href="#" id="signout-link">Sign Out</a>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-btn">
                <i class="fas fa-bars"></i>
            </div>
        </div>
    </header>

    <main class="recipe-library">
        <section class="recipe-filters">
            <div class="container">
                <div class="search-bar">
                    <input type="text" id="recipe-search" placeholder="Search recipes...">
                    <button class="btn btn-primary"><i class="fas fa-search"></i></button>
                </div>
                <div class="filter-options">
                    <div class="filter-group">
                        <label for="cuisine-filter">Cuisine:</label>
                        <select id="cuisine-filter">
                            <option value="all">All Cuisines</option>
                            <option value="north-indian">North Indian</option>
                            <option value="south-indian">South Indian</option>
                            <option value="punjabi">Punjabi</option>
                            <option value="gujarati">Gujarati</option>
                            <option value="bengali">Bengali</option>
                            <option value="rajasthani">Rajasthani</option>
                            <option value="maharashtrian">Maharashtrian</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label for="meal-type-filter">Meal Type:</label>
                        <select id="meal-type-filter">
                            <option value="all">All Types</option>
                            <option value="breakfast">Breakfast</option>
                            <option value="lunch">Lunch</option>
                            <option value="dinner">Dinner</option>
                            <option value="snack">Snack</option>
                            <option value="dessert">Dessert</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label for="diet-filter">Diet:</label>
                        <select id="diet-filter">
                            <option value="all">All Diets</option>
                            <option value="vegetarian">Vegetarian</option>
                            <option value="vegan">Vegan</option>
                            <option value="jain">Jain</option>
                            <option value="gluten-free">Gluten Free</option>
                            <option value="low-carb">Low Carb</option>
                        </select>
                    </div>
                    <div class="filter-group">
                        <label for="time-filter">Time:</label>
                        <select id="time-filter">
                            <option value="all">Any Time</option>
                            <option value="15">Under 15 mins</option>
                            <option value="30">Under 30 mins</option>
                            <option value="45">Under 45 mins</option>
                            <option value="60">Under 1 hour</option>
                        </select>
                    </div>
                    <button id="reset-filters" class="btn btn-outline">Reset</button>
                </div>
            </div>
        </section>

        <section class="recipe-results">
            <div class="container">
                <div class="results-header">
                    <h2 id="results-count">Loading recipes...</h2>
                    <div class="sort-options">
                        <label for="sort-by">Sort by:</label>
                        <select id="sort-by">
                            <option value="popular">Most Popular</option>
                            <option value="newest">Newest</option>
                            <option value="time-asc">Time (Shortest First)</option>
                            <option value="time-desc">Time (Longest First)</option>
                            <option value="name-asc">Name (A-Z)</option>
                            <option value="name-desc">Name (Z-A)</option>
                        </select>
                    </div>
                </div>
                <div class="recipes-grid" id="recipes-grid">
                    <!-- Recipes will be loaded here -->
                </div>
                <div class="pagination">
                    <button id="prev-page" class="btn btn-outline" disabled><i class="fas fa-chevron-left"></i> Previous</button>
                    <span id="page-info">Page 1 of 1</span>
                    <button id="next-page" class="btn btn-outline" disabled>Next <i class="fas fa-chevron-right"></i></button>
                </div>
            </div>
        </section>
    </main>

    <footer>
        <div class="container">
            <div class="footer-grid">
                <div class="footer-col">
                    <h3>SpicePlanner</h3>
                    <p>Your one-stop solution for Indian meal planning, recipes, and grocery lists.</p>
                    <div class="social-links">
                        <a href="#"><i class="fab fa-facebook-f"></i></a>
                        <a href="#"><i class="fab fa-instagram"></i></a>
                        <a href="#"><i class="fab fa-twitter"></i></a>
                        <a href="#"><i class="fab fa-pinterest"></i></a>
                    </div>
                </div>
                <div class="footer-col">
                    <h3>Quick Links</h3>
                    <ul>
                        <li><a href="index.html">Home</a></li>
                        <li><a href="recipes.html">Recipes</a></li>
                        <li><a href="meal-planner.html">Meal Planner</a></li>
                        <li><a href="grocery-list.html">Grocery List</a></li>
                        <li><a href="premium.html">Premium Plans</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Support</h3>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Terms of Service</a></li>
                    </ul>
                </div>
                <div class="footer-col">
                    <h3>Newsletter</h3>
                    <p>Subscribe to get weekly recipe ideas and meal planning tips.</p>
                    <form id="newsletter-form">
                        <input type="email" placeholder="Your email address" required>
                        <button type="submit" class="btn btn-primary">Subscribe</button>
                    </form>
                </div>
            </div>
            <div class="footer-bottom">
                <p>&copy; 2023 SpicePlanner. All rights reserved.</p>
            </div>
        </div>
    </footer>

    <!-- Auth Modal -->
    <div id="auth-modal" class="modal">
        <div class="modal-content">
            <span class="close-modal">&times;</span>
            <div class="auth-tabs">
                <button class="tab-btn active" data-tab="signin">Sign In</button>
                <button class="tab-btn" data-tab="signup">Sign Up</button>
            </div>
            <div id="signin-tab" class="auth-tab-content active">
                <form id="signin-form">
                    <div class="form-group">
                        <label for="signin-email">Email</label>
                        <input type="email" id="signin-email" required>
                    </div>
                    <div class="form-group">
                        <label for="signin-password">Password</label>
                        <input type="password" id="signin-password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Sign In</button>
                    <div class="auth-divider">or</div>
                    <button type="button" id="google-signin" class="btn btn-google">
                        <i class="fab fa-google"></i> Sign in with Google
                    </button>
                    <p class="auth-footer">Don't have an account? <a href="#" class="switch-tab" data-tab="signup">Sign up</a></p>
                </form>
            </div>
            <div id="signup-tab" class="auth-tab-content">
                <form id="signup-form">
                    <div class="form-group">
                        <label for="signup-name">Full Name</label>
                        <input type="text" id="signup-name" required>
                    </div>
                    <div class="form-group">
                        <label for="signup-email">Email</label>
                        <input type="email" id="signup-email" required>
                    </div>
                    <div class="form-group">
                        <label for="signup-password">Password</label>
                        <input type="password" id="signup-password" required minlength="6">
                    </div>
                    <div class="form-group">
                        <label for="signup-confirm-password">Confirm Password</label>
                        <input type="password" id="signup-confirm-password" required>
                    </div>
                    <button type="submit" class="btn btn-primary">Sign Up</button>
                    <div class="auth-divider">or</div>
                    <button type="button" id="google-signup" class="btn btn-google">
                        <i class="fab fa-google"></i> Sign up with Google
                    </button>
                    <p class="auth-footer">Already have an account? <a href="#" class="switch-tab" data-tab="signin">Sign in</a></p>
                </form>
            </div>
        </div>
    </div>

    <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-app.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-auth.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-firestore.js"></script>
    <script src="https://www.gstatic.com/firebasejs/8.10.0/firebase-storage.js"></script>
    <script src="js/firebase-config.js"></script>
    <script src="js/auth.js"></script>
    <script src="js/recipes.js"></script>
    <script src="js/utils.js"></script>
    <script src="js/recipe-library.js"></script>
</body>
</html>