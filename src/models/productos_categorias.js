import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

export class ProductosCategorias extends Model {}

ProductosCategorias.init(
  {
    id: {
      type: DataTypes.INTEGER.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    }
  },
  {
    sequelize,
    modelName: "ProductosCategorias",
    tableName: "productos_categorias",
    timestamps: false
  }
);
