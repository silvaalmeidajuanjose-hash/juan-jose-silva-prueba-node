import { Router } from "express";
import { getPromocionesPorDia } from "../controllers/promocionesController.js";

const router = Router();

router.get("/por-dia/:dia", getPromocionesPorDia);

export default router;
