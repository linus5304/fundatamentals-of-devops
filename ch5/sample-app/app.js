const express = require("express");

const app = express();
app.set("view engine", "ejs");

app.get("/", (req, res) => {
  res.send("Hello, World!");
});

app.get("/name/:name", (req, res) => {
  res.render("hello", { name: req.params.name });
});

app.get("/health", (req, res) => {
  res.send("Healthy");
});

module.exports = app;