import { Categorias } from "../models/categorias.js";
import { Productos } from "../models/productos.js";
import { sequelize } from "../database/conexionDB.js";

export const getCategoriasConProductos = async (req, res) => {
  try {
    const categorias = await Categorias.findAll({
      attributes: [
        "id",
        "nombre",
        [
          sequelize.fn("COUNT", sequelize.col("Productos.id")),
          "total_productos"
        ]
      ],
      include: [
        {
          model: Productos,
          attributes: [],
          through: { attributes: [] }
        }
      ],
      group: ["Categorias.id"],
      order: [[sequelize.literal("total_productos"), "DESC"]]
    });

    return res.status(200).json(categorias);
  } catch (error) {
    console.log(error);
    res.status(500).json({
      message: "Error al listar categorías con productos"
    });
  }
};
