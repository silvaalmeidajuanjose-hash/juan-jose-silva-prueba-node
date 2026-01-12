import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

export class Productos extends Model {}

Productos.init(
  {
    id: {
      type: DataTypes.INTEGER.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    },

    estado: {
      type: DataTypes.TINYINT.UNSIGNED,
      allowNull: false
    },

    kit: {
      type: DataTypes.TINYINT.UNSIGNED,
      allowNull: false
    },

    barcode: {
      type: DataTypes.STRING(30),
      allowNull: true
    },

    nombre: {
      type: DataTypes.STRING(60),
      allowNull: false
    },

    presentacion: {
      type: DataTypes.STRING(25),
      allowNull: true
    },

    descripcion: {
      type: DataTypes.STRING(500),
      allowNull: true
    },

    foto: {
      type: DataTypes.STRING(120),
      allowNull: true
    },

    peso: {
      type: DataTypes.DECIMAL(6, 2),
      allowNull: true
    }
  },
  {
    sequelize,
    modelName: "Productos",
    tableName: "productos",
    timestamps: false
  }
);
