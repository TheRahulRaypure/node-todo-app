const express = require("express");
const path = require("path");

const app = express();
app.use(express.json());
app.use(express.static(path.join(__dirname, "public")));

let todos = [];

app.get("/api/todos", (req, res) => {
  res.json(todos);
});

app.post("/api/todos", (req, res) => {
  const { task } = req.body;
  if (!task) return res.status(400).json({ message: "Task is required" });
  const todo = { id: Date.now(), task };
  todos.push(todo);
  res.json(todo);
});

app.delete("/api/todos/:id", (req, res) => {
  const id = parseInt(req.params.id);
  todos = todos.filter((t) => t.id !== id);
  res.json({ message: "Deleted" });
});

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
