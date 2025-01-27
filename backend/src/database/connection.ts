// connection.ts
import * as sql from 'mssql/msnodesqlv8';

const config = {
  user: 'User',
  password: '1234',
  server: 'DESKTOP-4OQ81IB\\MSSQL2022',
  driver: 'ODBC Driver 17 for SQL Server',
  database: 'CofClothes',
  options: {
    port: 61430,
    trustServerCertificate: true,
  },
};

const getConnection = async () => {
  try {
    const pool = await sql.connect(config);
    console.log('Conexión exitosa!');
    return pool;
  } catch (err) {
    console.error('Error de conexión:', err);
    throw err;
  }
};

export { getConnection }; // Solo exportamos la función
