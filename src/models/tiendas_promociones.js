import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

export class Tiendas_Promociones extends Model {}

Tiendas_Promociones.init({
  id: {
    type: DataTypes.MEDIUMINT.UNSIGNED,
    autoIncrement: true,
    primaryKey: true
  },
  estado: {
    type: DataTypes.TINYINT.UNSIGNED,
    allowNull: false
  },
  inicio: {
    type: DataTypes.DATE,
    allowNull: false
  },
  fin: {
    type: DataTypes.DATE,
    allowNull: false
  },
  id_tienda: {
    type: DataTypes.SMALLINT.UNSIGNED,
    allowNull: false
  },
  id_promocion: {
    type: DataTypes.MEDIUMINT.UNSIGNED,
    allowNull: false
  }
}, {
  sequelize,
  modelName: "Tiendas_Promociones",
  tableName: "tiendas_promociones",
  timestamps: false
});
