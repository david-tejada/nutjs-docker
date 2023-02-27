const { clipboard } = require("@nut-tree/nut-js");

clipboard.setContent(commandString).then(() => {
  console.log("Content set");
});
