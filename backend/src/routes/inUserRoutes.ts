import express from 'express';
import { insertUser } from '../controllers/inUser'; // Asegúrate de que el nombre del controlador sea correcto

const router = express.Router();

router.post('', async (req, res) => {
  const { nombre, correo, password, telefono, profile_picture, pais } = req.body; // Obtener los datos del usuario desde el cuerpo de la solicitud
  try {
    const result = await insertUser(nombre, correo, password, telefono, profile_picture, pais); // Llamar al controlador insertUser
    res.status(201).json({ message: 'Usuario creado exitosamente', data: result }); // Responder con un mensaje de éxito
  } catch (err) {
    res.status(500).json({ error: 'Error al crear el usuario' });
  }
});

export default router;
