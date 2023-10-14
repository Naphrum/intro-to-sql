# Intro to SQL

This project introduces basic SQL concepts using SQLite. To make the most of this project, follow the instructions below.

## Prerequisites

- Install [VSCode](https://code.visualstudio.com/) if you haven't already.
- Install the SQLite extension for VSCode. This extension will help you interact with the SQLite database directly within the editor.

## Setting Up

1. **Clone the repository**:

   Navigate to the project directory:

   ```bash
   cd intro-to-sql-guided
   ```

2. **Install Dependencies**:

   Using npm, install the project dependencies:

   ```bash
   npm install
   ```

## Working with SQLite in VSCode

1. **Open the database file**:

   In VSCode, click cmd + shift + p (ctrl + shift + p on Windows) to open the command palette. Type `SQLite: Open Database` and select the option that appears. This will open the database file in the editor.

2. **Use the SQLite extension**:

   - To run SQL queries:
     - Write your SQL query in a new line in the `queries.sql` file. Be sure to end your query with a semicolon!
     - Right-click and select `Run SQL` from the context menu.
     - You can also update your shortcuts to run SQL queries. To do this, open the command palette and type `Preferences: Open Keyboard Shortcuts (JSON)`. This will open a JSON file where you can add the following key-value pair:

       ```json
       {
         "key": "cmd+shift+r",
         "command": "sqlite.runSelectedQuery"
       }
       ```

       Now, you can run SQL queries by pressing cmd + shift + r (ctrl + shift + r on Windows).

## Running Tests

To ensure the SQL queries and other functionalities work as expected, you can run tests provided in the project:

```bash
npm run test
```

This will execute the tests using Jasmine, and you'll see the results in your terminal.
