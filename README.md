# Monster battle

## Overview

This project is a simple Ruby on Rails service designed to register users and send a registration confirmation email. The service exposes a REST API endpoint that allows clients to register users, which triggers an email confirmation process.

## Features

- User registration with email confirmation.
- Sends HTML and plain text email formats.
- Configurable email headers, including BCC and Reply-To.

## Installation

### Prerequisites

- Ruby (version 3.1.0 or newer recommended)
- Rails (version 7.0.0 or newer)
- PostgreSQL (or any database supported by Rails)

### Setup

1. **Clone the repository**:

    ```bash
    git clone https://github.com/ejaramillom/monster-battle.git
    cd monster_battle
    ```

2. **Install dependencies**:

    ```bash
    bundle install
    ```

3. **Setup the database**:

    ```bash
    rails db:create
    rails db:migrate
    ```

4. **Start the Rails server**:

    ```bash
    rails server
    ```

5. **Access the service**:

   Open your browser and navigate to `http://localhost:3000`.

## API Usage

### Register a New User

- **Endpoint**: `POST /registration`
- **Request Parameters**:
    - `email` (string, required): The user's email address.
    - `username` (string, required): The user's username.
    - `password` (string, required): The user's password.

- **Example Request**:

    ```bash
    curl -X POST http://localhost:3000/registration -d 'email=user@example.com&username=johndoe&password=securepassword'
    ```

- **Response**:

    - `200 OK` on successful registration and email sent.
    - `422 Unprocessable Entity` on validation errors.

## Email Configuration

The service uses Action Mailer to send emails. Make sure to configure your email settings in `config/environments/development.rb` and `config/environments/production.rb` for different environments.

## Development

### Running the Rails Console

To start the Rails console for debugging and running custom scripts, use:

```bash
rails console
