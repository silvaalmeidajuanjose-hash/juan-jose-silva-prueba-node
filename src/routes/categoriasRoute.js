import { Router } from "express";
import { getCategoriasConProductos } from "../controllers/categoriasController.js";

const router = Router();

router.get("/categorias/con-productos", getCategoriasConProductos);

export default router;
