import { getConnection } from '../database/connection';

// Backend en Node.js
export const getProfiles = async (userId: number) => {
    try {
      const pool = await getConnection();
      const result = await pool.request()
        .input('userId', userId) // Parámetro seguro
        .execute('getProfile'); // Llamada al procedimiento getProfile
      const profiles = result.recordset;
      
      console.log('Profiles result:', profiles); // Ver el resultado completo
      return profiles; // Asegúrate de que siempre sea un arreglo
    } catch (err) {
      console.error('Error al obtener perfiles:', err);
      throw err;
    }
  };
  
