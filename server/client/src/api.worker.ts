import express from "express";
import { config } from "./config";

const PORT = config.server.port;

const main = async () => {
  const app = express();

  app.use(express.json());

  app.get("/client", async (req, res) => {
    return res.json({ message: "Client server" });
  });

  app.listen(PORT, () => {
    console.log(`Client server is running on port ${PORT}`);
  });
};

main();
