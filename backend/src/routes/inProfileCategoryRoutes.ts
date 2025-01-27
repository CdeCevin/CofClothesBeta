import express from 'express';
import { insertProfileCategory } from '../controllers/inProfileCategory'; // Asegúrate de que el nombre del controlador sea correcto

const router = express.Router();

router.post('', async (req, res) => {
 
  const { categoryName } = req.body; // Obtener los datos del usuario desde el cuerpo de la solicitud
 console.log('Datos recibidos:', { categoryName });
  try {
    const result = await insertProfileCategory(categoryName); // Llamar al controlador insertUser
    res.status(201).json({ message: 'Categoria insertada en perfil exitosamente', data: result }); // Responder con un mensaje de éxito
  } catch (err) {
    res.status(500).json({ error: 'Error al insertar catergoria en perfil' });
  }
});

export default router;
