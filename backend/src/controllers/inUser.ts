import { getConnection } from '../database/connection';

export const insertUser = async (
  nombre: string,
  correo: string,
  password: string,
  telefono: number,
  profile_picture: string,
  pais: string
) => {
  
  try {
    const pool = await getConnection();
    console.log('profile_picture',profile_picture);
    const result = await pool.request()
      .input('nombre', nombre)
      .input('correo', correo)
      .input('password', password)
      .input('telefono', telefono)
      .input('profile_picture', profile_picture)
      .input('pais', pais)
      .execute('InsertUser'); // Llamada al procedimiento InsertUser
    console.log('Usuario insertado:', result);
    return result;
  } catch (err) {
    console.error('Error al insertar usuario:', err);
    throw err;
  }
};
