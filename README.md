# Ticket Submission System

A simple ticket submission system built using Ruby on Rails, designed to help users submit support tickets and manage them effectively. This project demonstrates basic CRUD operations, authentication, and user-specific access to tickets.

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
  - [Database Setup](#database-setup)
- [Usage](#usage)
  - [Running the Server](#running-the-server)
  - [Testing the Application](#testing-the-application)
- [Future Enhancements](#future-enhancements)
- [Contributing](#contributing)


## Overview

The **Ticket Submission System** allows users to create an account, log in, and submit support tickets. Each ticket can be categorized, and users can see the tickets they have submitted. The application uses Devise for user authentication, allowing only logged-in users to create, view, and manage their tickets.

## Features

- **User Authentication**: Sign up, log in, and log out with Devise.
- **Ticket Creation**: Users can submit new support tickets with a title, description, and category.
- **User Dashboard**: Logged-in users can view all tickets they have submitted.
- **Bootstrap UI**: The user interface is styled using Bootstrap for a clean and responsive design.
- **Flash Messages**: Feedback messages are shown for actions like successful ticket creation or validation errors.

## Technologies Used

- **Ruby on Rails** (v7.2.1): A web application framework written in Ruby.
- **Ruby** (v3.2.0): The programming language used.
- **Devise**: Used for authentication (sign up, log in, log out).
- **Bootstrap**: For front-end styling.
- **SQLite3**: Database used in development.

## Getting Started

### Prerequisites

- **Ruby**: Version 3.2.0 or higher. You can use a version manager like [RVM](https://rvm.io/) or [rbenv](https://github.com/rbenv/rbenv).
- **Rails**: Version 7.2.1 or higher.
- **SQLite3**: Default database for development.
- **Node.js** and **Yarn**: For managing JavaScript dependencies.

### Installation

1. **Clone the Repository**:

   ```sh
   git clone https://github.com/yourusername/ti
   ```
2.  **Install Dependencies**:

1. Run bundle install to install the required Ruby gems:

  ```sh
  bundle install
  ```
2. Install JavaScript Dependencies:
  ```sh
  yarn install
  ```
**Database Setup**
Create the Database and Run Migrations:
  ```sh
  rails db:create
  rails db:migrate
  ```
(Optional) Seed the Database:

You can create sample data to test the application:

  ```sh
  rails db:seed
  ```
## Usage
**Running the Server**
1. Start the Rails server:

```sh
rails server
```
2. Visit http://localhost:3000 in your browser.

## Testing the Application
- Sign Up: Click on Sign Up to create a new user account.
- Log In: Use the credentials you signed up with to log in.
- Create a Ticket: Click on New Ticket to create a support ticket. Provide a title, description, and department.
- View Tickets: After logging in, click on Your Tickets to view all the tickets you have created.

## Future Enhancements
- Assign Tickets to Departments: Allow tickets to be assigned to specific departments users based on user roles and department.
- Admin Dashboard: Create a role-based system where admins can view and manage all tickets.
- Notifications: Implement email notifications to inform users of ticket status changes.
- Commenting System: Add the ability for users and support staff to comment on tickets.

## Contributing
Contributions are welcome! To contribute:

1. Fork the repository.
2. Create a new branch (git checkout -b feature/your-feature).
3. Commit your changes (git commit -m 'Add some feature').
4. Push to the branch (git push origin feature/your-feature).
5. Open a Pull Request.
