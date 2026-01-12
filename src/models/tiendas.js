import { DataTypes, Model } from "sequelize";
import { sequelize } from "../database/conexionDB.js";

//Exportamos una clase que se llame como la tabla y que erede mediante el extends con Model
export class Tiendas extends Model{}

//Llamamos a la clase y utilizamos el metodo init
//Creamos dentro del metodo las columnas de la tabla con sus tipos de datos
Tiendas.init({
 id: {
      type: DataTypes.SMALLINT.UNSIGNED,
      autoIncrement: true,
      primaryKey: true
    },

    estado: {
      type: DataTypes.TINYINT.UNSIGNED,
      allowNull: false
    },

    nombre: {
      type: DataTypes.STRING(30),
      allowNull: false
    },

    descripcion: {
      type: DataTypes.STRING(500),
      allowNull: true
    },

    telefono: {
      type: DataTypes.STRING(20),
      allowNull: true
    },

    direccion: {
      type: DataTypes.STRING(120),
      allowNull: true
    },

    direccion_anexo: {
      type: DataTypes.STRING(40),
      allowNull: true
    },

    direccion_barrio: {
      type: DataTypes.STRING(25),
      allowNull: true
    },

    calificacion: {
      type: DataTypes.DECIMAL(3, 2),
      allowNull: true
    },

    calificacion_cantidad: {
      type: DataTypes.MEDIUMINT.UNSIGNED,
      allowNull: true
    },

    impuestos: {
      type: DataTypes.TINYINT.UNSIGNED,
      allowNull: true
    },

    dias_trabajados: {
      type: DataTypes.STRING(21),
      allowNull: true
    }
},
    { 
    //Se realiza la referencia utilizanod sequelize a la conexion que ya habiamos definido
        sequelize,
    modelName: "Tiendas",
    tableName: "tiendas",
    //Fechas de actualizacion de los campos no se coloquen
    timestamps: false
  }
);