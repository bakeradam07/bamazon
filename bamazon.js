var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "J33pcherok33",
  database: "bamazon_db"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});

function start() {
   var query = "SELECT * FROM products";
   connection.query(query, function (err, res){
       if (err) throw err;
       console.log("Available Inventory");
       console.log("\n--------------------------------------------\n");
       for (var i = 0; i < res.length; i++) {
       console.log("Product ID: " + res[i].item_id + " || Product Name: " + res[i].product_name + " || Department: " + res[i].department_name + "|| Stock: " + res[i].stock_quantity);
       };
   })
   makePurchase();
  }

  function makePurchase() {
    inquirer
    .prompt({
      name: "makepurchase",
      type: "list",
      message: "Would you like to make a purchase?",
      choices: ["Yes", "No"]
    })
    .then(function(answer) {
      // based on their answer, either call the bid or the post functions
      if (answer.makePurchase === "Yes") {
        itemPurchase();
      }
      else {
        connection.end();
        console.log("Thanks for shopping with us!")
      }
    });
};



