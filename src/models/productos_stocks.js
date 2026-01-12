import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

export class ProductosStocks extends Model {}

ProductosStocks.init(
  {
    id: {
      type: DataTypes.MEDIUMINT.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    },
    cantidad: {
      type: DataTypes.DECIMAL(8, 3),
      allowNull: false
    },
    fecha_ingreso: {
      type: DataTypes.DATE,
      allowNull: false
    }
  },
  {
    sequelize,
    modelName: "ProductosStocks",
    tableName: "productos_stocks",
    timestamps: false
  }
);
