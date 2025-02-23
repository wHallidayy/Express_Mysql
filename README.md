# Express MySQL Product Management 🚀

A simple product management system built with Express.js and MySQL, featuring a RESTful API and pure HTML/JavaScript frontend.

## Prerequisites

- Node.js (v18 or higher)
- MySQL (v8.0 recommended)
- npm (comes with Node.js)

## Tech Stack

- Express.js - Web framework
- MySQL2 - Database driver
- dotenv - Environment configuration

## Quick Start

1. Clone the repository
```bash
git clone https://github.com/yourusername/express-mysql-starter.git
cd express-mysql-starter
```

2. Install dependencies
```bash
npm install
```

3. Create and configure your database
```sql
CREATE DATABASE express_demo;
USE express_demo;

CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Optional: Add some sample data
INSERT INTO products (name, price) VALUES
  ('iPhone 15', 35900.00),
  ('Samsung Galaxy S24', 32900.00),
  ('iPad Pro', 27900.00);
```

4. Configure environment variables
```bash
# Create .env file
cp .env.example .env

# Edit with your database credentials
DB_HOST=localhost
DB_USER=your_username
DB_PASS=your_password
DB_NAME=express_demo
PORT=3000  # Optional
```

5. Start the server
```bash
npm start
```

6. Visit `http://localhost:3000` in your browser

## Project Structure

```
express-mysql-starter/
  ├── server.js          # Application entry point
  ├── config/
  │   └── database.js    # Database configuration
  ├── public/
  │   └── index.html     # Frontend interface
  ├── .env              # Environment variables
  └── package.json      # Project metadata
```

## API Endpoints

- `GET /api/products` - Get all products
- `POST /api/products` - Create a new product
- `PUT /api/products/:id` - Update a product
- `DELETE /api/products/:id` - Delete a product

## Features

- ✨ Pure HTML and JavaScript frontend
- 🔒 Environment variables configuration
- 🎯 Clean project structure
- 🔄 Connection pooling for better performance
- 💅 Basic styled interface
- 🛡️ Basic error handling
- 📱 Responsive design

## Development

To run the server in development mode with auto-reload:
```bash
npm run dev
```

## Common Issues & Solutions

1. **MySQL Connection Error**
   - Check if MySQL service is running
   - Verify credentials in `.env` file
   - Ensure database exists
   ```bash
   # Check MySQL status
   sudo service mysql status
   
   # Start MySQL if needed
   sudo service mysql start
   ```

2. **Port Already in Use**
   - Change PORT in `.env` file
   - Or kill the process using the current port
   ```bash
   # Find process using port 3000
   lsof -i :3000
   
   # Kill the process
   kill -9 <PID>
   ```

3. **Cannot GET Error**
   - Ensure `public/index.html` exists
   - Check server is running without errors
   - Try hard refresh (Ctrl+F5)

## File Purpose Explanation

- `server.js`: Main application file that sets up Express server and defines API routes
- `config/database.js`: Manages MySQL connection pool and exports database configuration
- `public/index.html`: Frontend interface with HTML, CSS, and JavaScript
- `.env`: Stores environment variables (database credentials, port, etc.)
- `package.json`: Project metadata and dependencies

## Database Schema

```sql
CREATE TABLE products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## License

This project is licensed under the MIT License.

## Support

If you have any questions or issues:
1. Check the documentation above
2. Check the [issues page](https://github.com/yourusername/express-mysql-starter/issues)
3. Create a new issue if needed

---
Made with ❤️ using Express.js and MySQL