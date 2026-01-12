import { Router } from "express";
import { getProductosConStock } from "../controllers/productosController.js";
import { getTop10ProductosVendidos } from "../controllers/productosController.js";
const router = Router();

router.get("/productos-stock", getProductosConStock);
router.get("/productos/top-vendidos", getTop10ProductosVendidos);
export default router;
