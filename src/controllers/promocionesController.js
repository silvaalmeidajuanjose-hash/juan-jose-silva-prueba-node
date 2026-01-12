import { Op, fn, col, where } from "sequelize";
import { Promociones } from "../models/promociones.js";
import { Tiendas_Promociones } from "../models/tiendas_promociones.js";
import { Tiendas } from "../models/tiendas.js";

export const getPromocionesPorDia = async (req, res) => {
  try {
    const { dia } = req.params;

    const promociones = await Promociones.findAll({
      attributes: [
        "id",
        "nombre",
        "imagen",
        "porcentaje",
        "dias_semana"
      ],
      where: where(
        fn("SUBSTRING", col("dias_semana"), dia, 1),
        "1"
      ),
      include: [
        {
          model: Tiendas_Promociones,
          attributes: ["inicio", "fin"],
          where: {
            inicio: { [Op.lte]: new Date() },
            fin: { [Op.gte]: new Date() }
          },
          include: [
            {
              model: Tiendas,
              attributes: ["id", "nombre"]
            }
          ]
        }
      ]
    });

    res.json(promociones);
  } catch (error) {
    res.status(500).json({
      message: "Error al obtener promociones por día",
      error: error.message
    });
  }
};
