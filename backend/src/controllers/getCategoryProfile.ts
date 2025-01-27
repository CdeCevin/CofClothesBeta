import { getConnection } from '../database/connection';

// Backend en Node.js
export const getCategoryProfile = async (profileId: number) => {
    try {
      const pool = await getConnection();
      const result = await pool.request()
        .input('profileId', profileId) // Parámetro seguro
        .execute('getCategoryProfile'); // Llamada al procedimiento getProfile
      const profiles = result.recordset;
      
      console.log('Category result:', profiles); // Ver el resultado completo
      return profiles; // Asegúrate de que siempre sea un arreglo
    } catch (err) {
      console.error('Error al obtener categoria de los perfiles:', err);
      throw err;
    }
  };
  