import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

export class Promociones extends Model {}

Promociones.init(
  {
    id: {
      type: DataTypes.MEDIUMINT.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    },
    nombre: {
      type: DataTypes.STRING(100),
      allowNull: false
    },
    descripcion: {
      type: DataTypes.STRING(255),
      allowNull: true
    },
    porcentaje_descuento: {
      type: DataTypes.DECIMAL(5, 2),
      allowNull: false
    },
    dias_semana: {
      // Ej: "0110100"
      type: DataTypes.STRING(7),
      allowNull: false
    },
    estado: {
      type: DataTypes.TINYINT.UNSIGNED,
      allowNull: false,
      defaultValue: 1
    }
  },
  {
    sequelize,
    modelName: "Promociones",
    tableName: "promociones",
    timestamps: false
  }
);
