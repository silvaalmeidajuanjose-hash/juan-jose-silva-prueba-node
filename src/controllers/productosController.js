import { Productos } from "../models/productos.js";
import { ProductosStocks } from "../models/productos_stocks.js";
import { Tiendas } from "../models/tiendas.js";

export const getProductosConStock = async (req, res) => {
  try {
    const productos = await Productos.findAll({
      attributes: [
        "id",
        "nombre",
        "descripcion",
        "presentacion",
        "peso"
      ],
      include: [
        {
          model: ProductosStocks,
          attributes: ["cantidad", "fecha_ingreso"],
          include: [
            {
              model: Tiendas,
              attributes: ["id", "nombre", "direccion"]
            }
          ]
        }
      ]
    });

    return res.status(200).json(productos);
  } catch (error) {
    console.log(error);
    res.status(500).json({ message: "Error al listar productos con stock" });
  }
};


import { PedidosProductos } from "../models/pedidos_productos.js";
import { sequelize } from "../database/conexionDB.js";

export const getTop10ProductosVendidos = async (req, res) => {
  try {
    const productos = await PedidosProductos.findAll({
      attributes: [
        "id_producto",
        [
          sequelize.fn("SUM", sequelize.col("cantidad")),
          "total_vendido"
        ]
      ],
      include: [
        {
          model: Productos,
          attributes: ["id", "nombre", "descripcion", "presentacion"]
        }
      ],
      group: ["id_producto", "Producto.id"],
      order: [[sequelize.literal("total_vendido"), "DESC"]],
      limit: 10
    });

    return res.status(200).json(productos);
  } catch (error) {
    console.log(error);
    res.status(500).json({
      message: "Error al obtener los productos más vendidos"
    });
  }
};
