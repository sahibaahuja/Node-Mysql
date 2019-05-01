var mysql = require("mysql");
var inquirer = require("inquirer");
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306, 
    user: "root",
    password: "root",
    database: "bamazon"
  });

  connection.connect(function(err) {
    if (err) throw err;
    console.log("---------------------------------------------------------")
    console.log("-----------------WELCOME TO BAMAZON----------------------");
    console.log("---------------------------------------------------------")
    displayP();
  });

  function displayP() {
    connection.query("SELECT * FROM products", function(err, res) {
      if (err) throw err;
      console.table(res);
      start();
  });
}

function start() {
  inquirer
  .prompt([
    {
      name: "product",
      type: "input",
      message: "What is the ID of the product you would like to buy.?",
      validate: function(value) {
        if (isNaN(value) === false) {
          return true;
        }
        return false;
      }
    },
    {
      name: "units",
      type: "input",
      message: "How many units of the product would you like to buy.?",
      validate: function(value) {
        if (isNaN(value) === false) {
          return true;
        }
        return false;
      }
    }
  ])
}