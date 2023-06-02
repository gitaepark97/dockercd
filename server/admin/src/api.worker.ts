import express from "express";
import { config } from "./config";

const PORT = config.server.port;

const main = async () => {
  const app = express();

  app.use(express.json());

  app.get("/admin", async (req, res) => {
    return res.json({ message: "Admin server" });
  });

  app.listen(PORT, () => {
    console.log(`Admin server is running on port ${PORT}`);
  });
};

main();
