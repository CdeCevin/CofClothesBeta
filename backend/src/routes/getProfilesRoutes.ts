import express from 'express';
import { getProfiles } from '../controllers/getProfiles';

const router = express.Router();

// Cambiar el prefijo de la ruta a /api/getUser
router.get('/user/:id', async (req, res) => {  // Ahora la ruta es /api/getUser/user/:id
  const { id } = req.params; // Obtener el ID del usuario desde la URL
  try {
    const user = await getProfiles(Number(id)); // Llama a la función getUsers y pasa el ID
    res.json(user);
  } catch (err) {
    res.status(500).json({ error: 'Error al obtener los perfiles' });
  }
});

export default router;


