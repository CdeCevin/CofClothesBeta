import express from 'express';
import { insertProfile } from '../controllers/inProfile'; // Asegúrate de que el nombre del controlador sea correcto

const router = express.Router();

router.post('', async (req, res) => {
 
  const { userId, nombre, descripcion } = req.body; // Obtener los datos del usuario desde el cuerpo de la solicitud
 console.log('Datos recibidos:', { userId, nombre, descripcion });
  try {
    const result = await insertProfile(userId, nombre, descripcion); // Llamar al controlador insertUser
    res.status(201).json({ message: 'Perfil creado exitosamente', data: result }); // Responder con un mensaje de éxito
  } catch (err) {
    res.status(500).json({ error: 'Error al crear el Perfil' });
  }
});

export default router;
