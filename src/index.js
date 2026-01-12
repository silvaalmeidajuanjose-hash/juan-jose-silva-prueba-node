//importamos el app
import {app} from "./app.js";
import "./models/associations.js";

//2. importamos sequelize del archivo de conexion.
import { sequelize } from "./database/conexionDB.js";

//Creamos una funcion con el nombre main que nos permita abrir el servidor en el puerto 3000
//2. convertimos la funcion en asincrona porque sequelize tiene un metodo que es asincrona 
async function main(){
    //creamos un await que nos permita llamar a sequelize y mediante sync llamar a la base de datos y mediante un parametro en force colo
    //camos false porque si colocamos true va a reemplazar los datos en la base de datos 
await sequelize.sync({force:false}).then(()=>{
    console.log("Conexion a la base de datos exitosa")
})
    app.listen(3000,()=>{
        console.log("Servidor corriendo en el puerto")
    })
}
main()