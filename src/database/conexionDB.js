import { Sequelize } from "sequelize";
// Option 3: Passing parameters separately (other dialects)
export const sequelize = new Sequelize('market', 'root', 'juankira0199', {
  host: 'localhost',
  dialect: "mysql"/* one of 'mysql' | 'postgres' | 'sqlite' | 'mariadb' | 'mssql' | 'db2' | 'snowflake' | 'oracle' */
});