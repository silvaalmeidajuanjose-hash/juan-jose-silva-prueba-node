import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

// Creamos la clase Categorias que hereda de Model
export class Categorias extends Model {}

// Inicializamos el modelo
Categorias.init(
  {
    id: {
      type: DataTypes.SMALLINT.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    },

    nombre: {
      type: DataTypes.STRING(30),
      allowNull: false
    },

    adultos: {
      type: DataTypes.TINYINT.UNSIGNED,
      allowNull: false
    }
  },
  {
    sequelize,               // instancia de conexión
    modelName: "Categorias", // nombre interno del modelo
    tableName: "categorias", // nombre real de la tabla
    timestamps: false        // la tabla no usa createdAt / updatedAt
  }
);
