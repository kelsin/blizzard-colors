Handlebars = require("handlebars");

colors = require("./colors.json");
fs = require("node:fs");
path = require("node:path");

const input = process.argv[2];
const output = process.argv[3];

// Read in input file
const file = fs.readFileSync(process.argv[2], { encoding: "utf8" });

// Compile it as a template
const template = Handlebars.compile(file);

// Render it
const render = template(colors);

// Output it
fs.mkdirSync(path.dirname(output), { recursive: true });
fs.writeFileSync(output, render, { encoding: "utf8" });
