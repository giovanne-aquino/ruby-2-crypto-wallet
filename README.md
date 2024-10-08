# Ruby Crypto Wallet
Welcome to the ruby-2-crypto-wallet repository. This project is a comprehensive cryptocurrency wallet application built using Ruby on Rails. It leverages multiple technologies to provide a secure, efficient, and user-friendly platform for managing cryptocurrency transactions.

# Technologies Used
Ruby: 3.0.2
Rails: ~> 7.1.0
Database: SQLite3
Frontend: HTML, CSS, JavaScript, SCSS
Containerization: Dockerfile
Shell Scripts: For automation tasks
## Main Functionalities
# User Authentication and Security
Implements robust user authentication and authorization mechanisms to ensure secure access to wallet functionalities.
# Cryptocurrency Management
Allows users to manage their cryptocurrency portfolio, including adding, removing, and viewing different cryptocurrencies.
# Real-Time Updates
Utilizes Redis and Action Cable to provide real-time updates on cryptocurrency prices, ensuring users always have the latest information.
# Transaction History
Tracks and displays the transaction history for each user, including deposits, withdrawals, and transfers.
# Responsive UI
Built with a responsive design using Bootstrap and custom CSS/SCSS to ensure a seamless experience across all devices.
# API Integration
Integrates with various cryptocurrency APIs to fetch live data and perform transactions.

## Installation
To set up the development environment, follow these steps:

Clone the repository:

git clone https://github.com/giovanne-aquino/ruby-2-crypto-wallet.git
cd ruby-2-crypto-wallet
Install dependencies:

bundle install
Configure the database:

rails db:create db:migrate
Start the server:

rails server
Running with Docker
For a containerized setup, follow these steps:

Build the Docker image:

docker build -t ruby-2-crypto-wallet .
Run the Docker container:

docker run -p 3000:3000 ruby-2-crypto-wallet
Development and Testing
The project includes several tools to aid in development and testing:

Web Console: For debugging in the browser.
Capybara and Selenium-WebDriver: For system testing.
Bootsnap: For reducing boot times through caching.
