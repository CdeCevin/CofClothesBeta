import { getConnection } from '../database/connection';

export const insertProfile = async (
  userId: number,
  nombre: string,
  descripcion: string,
) => {
  try {
    console.log('Datos recibidos:', { userId, nombre, descripcion });
    const pool = await getConnection();
    const result = await pool.request()
    
      .input('userId', userId)
      .input('nombre', nombre)
      .input('descripcion', descripcion)
      .execute('InsertProfile'); // Llamada al procedimiento InsertUser
    console.log('Perfil insertado:', result);
    return result;
  } catch (err) {
    console.error('Error al insertar perfil:', err);
    throw err;
  }
};
