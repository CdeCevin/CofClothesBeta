import { getConnection } from '../database/connection';

export const insertProfileCategory = async (
  categoryNames: string[]
) => {
  let profileId: number;

  try {
    // Obtener el último ID de perfil
    const pool = await getConnection();
    const result = await pool.request().execute('lastProfileID');
    profileId = result.recordset[0].id;
    console.log('ID de perfil obtenido:', profileId);
  } catch (err) {
    console.error('Error al obtener el ID del perfil:', err);
    throw err;
  }

  // Insertar categorías asociadas al perfil
  try {
    const pool = await getConnection();
    
    for (const categoryName of categoryNames) {
      console.log('Insertando categoría:', categoryName);
      await pool.request()
        .input('profileId', profileId)
        .input('categoryName', categoryName)
        .execute('ProfileCategory');
    }

    console.log('Todas las categorías fueron insertadas correctamente.');
  } catch (err) {
    console.error('Error al insertar categorías:', err);
    throw err;
  }
};
