import { getConnection } from '../database/connection';
import sql from 'mssql';

export const signIn = async (
    correo: string,
    password: string,
) => {
    try {
        const pool = await getConnection();
        const result = await pool.request()
            .input('correo', correo)
            .input('password', password)  // Cambiar aquí 'contraseña' por 'password'
            .output('resultMessage', sql.VarChar(255))  // Añadimos el parámetro de salida para el mensaje
            .output('UsuarioID', sql.Int)  // Parámetro de salida para el ID del usuario
            .execute('SignInUser');
        
        const resultMessage = result.output.resultMessage;
        const UsuarioID = result.output.UsuarioID;

        console.log('Resultado del procedimiento:', resultMessage, UsuarioID);  // Agregar este log
        
        if (UsuarioID) {
            return {userId: UsuarioID };
        } else {
            throw new Error(resultMessage);  // Lanzamos un error si no encontramos al usuario
        }
    } catch (err) {
        console.error('Error al iniciar sesión:', err);
        throw err;
    }
};
