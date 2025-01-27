import { getConnection } from '../database/connection';

export const getUsers = async (ClienteID: number) => {
  try {
    const pool = await getConnection();
    const result = await pool.request()
      .input('ClienteID', ClienteID) // Parámetro seguro
      .execute('GetUserInfo'); // Llamada al procedimiento getProfile
      console.log(result.recordset);
    return result.recordset;
  } catch (err) {
    console.error('Error al obtener datos de usuario :', err);
    throw err;
  }
};