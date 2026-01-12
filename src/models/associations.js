import { Productos } from "./productos.js";
import { Tiendas } from "./tiendas.js";
import { ProductosStocks } from "./productos_stocks.js";

/* PRODUCTOS ↔ STOCKS */
Productos.hasMany(ProductosStocks, {
  foreignKey: "id_producto"
});
ProductosStocks.belongsTo(Productos, {
  foreignKey: "id_producto"
});

/* TIENDAS ↔ STOCKS */
Tiendas.hasMany(ProductosStocks, {
  foreignKey: "id_tienda"
});
ProductosStocks.belongsTo(Tiendas, {
  foreignKey: "id_tienda"
});


import { PedidosProductos } from "./pedidos_productos.js";

Productos.hasMany(PedidosProductos, {
  foreignKey: "id_producto"
});

PedidosProductos.belongsTo(Productos, {
  foreignKey: "id_producto"
});


import { Categorias } from "./categorias.js";
import { ProductosCategorias } from "./productos_categorias.js";

/* MANY TO MANY */
Categorias.belongsToMany(Productos, {
  through: ProductosCategorias,
  foreignKey: "id_categoria",
  otherKey: "id_producto"
});

Productos.belongsToMany(Categorias, {
  through: ProductosCategorias,
  foreignKey: "id_producto",
  otherKey: "id_categoria"
});

import { Promociones } from "./promociones.js";
import { Tiendas_Promociones } from "./tiendas_promociones.js";

Promociones.hasMany(Tiendas_Promociones, {
  foreignKey: "id_promocion"
});

Tiendas_Promociones.belongsTo(Promociones, {
  foreignKey: "id_promocion"
});

Tiendas.hasMany(Tiendas_Promociones, {
  foreignKey: "id_tienda"
});

Tiendas_Promociones.belongsTo(Tiendas, {
  foreignKey: "id_tienda"
});
