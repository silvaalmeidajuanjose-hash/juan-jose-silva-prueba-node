//Levantamos el servidor

//Importamos express
import express from "express";

//2. Importamos la ruta de la tabla
import routerTiendas from "./routes/tiendasRoute.js"
import routerProductos from "./routes/productosRoute.js";
import routerCategorias from "./routes/categoriasRoute.js";
import promocionesRoute from "./routes/promocionesRoute.js";



//Se crea una constante app para inicializar express y la exportamos
export const app = express()

app.use(express.json())
app.use("/api/Tiendas",routerTiendas)
app.use("/api", routerProductos);
app.use("/api", routerCategorias);
app.use("/api/promociones", promocionesRoute);
