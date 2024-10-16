const express = require("express");

const app = express();

app.get("/", (req, res) => {
  res.send("Hello, World!");
});
app.get("/health", (req, res) => {
  res.send("Healthy");
});

module.exports = app;
