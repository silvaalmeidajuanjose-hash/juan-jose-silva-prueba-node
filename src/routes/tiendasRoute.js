import { Router } from "express";
import {
  createTiendas,
  getTiendas,
  getTiendasById,
  updateTiendas,
  deleteTiendas
} from "../controllers/tiendasController.js";

const router = Router();

router.post("/createTiendas", createTiendas);
router.get("/getTiendas", getTiendas);
router.get("/getTiendas/:id", getTiendasById);
router.put("/updateTiendas/:id", updateTiendas);
router.delete("/deleteTiendas/:id", deleteTiendas);

export default router;
