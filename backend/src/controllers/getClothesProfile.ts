import { getConnection } from '../database/connection';

// Backend en Node.js
export const getClothesProfile = async (profileId: number) => {
    try {
      const pool = await getConnection();
      const result = await pool.request()
        .input('profileId', profileId) // Parámetro seguro
        .execute('GetClothesByProfileCategory'); // Llamada al procedimiento getProfile
      const profiles = result.recordset;
      
      console.log('Clothes result:', profiles); // Ver el resultado completo
      return profiles; // Asegúrate de que siempre sea un arreglo
    } catch (err) {
      console.error('Error al obtener ropa de los perfiles:', err);
      throw err;
    }
  };
  