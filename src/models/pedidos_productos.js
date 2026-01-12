import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

export class PedidosProductos extends Model {}

PedidosProductos.init(
  {
    id: {
      type: DataTypes.MEDIUMINT.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    },
    cantidad: {
      type: DataTypes.DECIMAL(9, 3),
      allowNull: false
    }
  },
  {
    sequelize,
    modelName: "PedidosProductos",
    tableName: "pedidos_productos",
    timestamps: false
  }
);
