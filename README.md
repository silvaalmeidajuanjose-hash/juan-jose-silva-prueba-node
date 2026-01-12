# Prueba Técnica Node.js - Campuslands

API REST desarrollada con Node.js, Express y Sequelize para gestionar un modelo de negocio tipo "Market". El proyecto implementa los requisitos solicitados en la prueba técnica, incluyendo consultas con operaciones sobre stock, ventas, categorías y promociones.

---

## 1. Configuración del Entorno

### Requisitos previos

Instalar en el sistema:

- Node.js v18+ recomendado
- npm v9+
- MySQL Server
- Git (opcional)

Verifique la instalación:

```bash
node -v
npm -v
```

---

## 2. Clonar el Proyecto

```bash
git clone https://github.com/silvaalmeidajuanjose-hash/juan-jose-silva-prueba-node.git
cd juan-jose-silva-prueba-node
```

---

## 3. Instalación de Dependencias

Ejecutar:

```bash
npm install
```

---

## 4. Configuración de la Base de Datos

Crear una base de datos en MySQL llamada `Market`:

```sql
CREATE DATABASE market;
```

Este proyecto utiliza Sequelize como ORM. Las tablas serán generadas automáticamente mediante `sequelize.sync()` al iniciar la aplicación.

---

## 5. Variables de Entorno

Crear un archivo `.env` en la raíz del proyecto con:

```
DB_HOST=localhost
DB_NAME=market
DB_USER=root
DB_PASSWORD=juankira0199
DB_DIALECT=mysql
PORT=3000
```

Modificar los valores según su configuración local.

---

## 6. Ejecución del Proyecto

Modo desarrollo (si existe script dev):

```bash
npm run dev
```

Modo estándar:

```bash
npm start
```

La API se ejecutará en:

```
http://localhost:3000
```

---

## 7. Endpoints Implementados

1. Listar productos con stock por tienda  
   `getProductosConStock`
   http://localhost:3000/api/productos-stock

2. Top 10 productos más vendidos  
   `getTop10ProductosVendidos`
   http://localhost:3000/api/productos/top-vendidos

3. Categorías con al menos un producto (descendente por cantidad)  
   `getCategoriasConProductos`
   http://localhost:3000/api/categorias/con-productos

4. Promociones activas según día de la semana  
   `getPromocionesPorDia`

Donde `diaSemana` corresponde a: Lunes=0 ... Domingo=6

http://localhost:3000/api/promociones/por-dia/1
---

## 8. Tecnologías Utilizadas

- Node.js
- Express
- Sequelize
- MySQL

---

## 9. Opcional

Scripts SQL de apoyo pueden ser incluidos si se requieren para cargar datos en tablas relacionadas.

---

## 10. Entrega

Proyecto subido a repositorio público en GitHub y documentado para su ejecución local.

