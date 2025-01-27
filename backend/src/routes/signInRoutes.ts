import express from 'express';
import { signIn } from '../controllers/signIn'; // Asegúrate de que el nombre del controlador sea correcto


const router = express.Router();

router.post('', async (req, res) => {
    const { correo, password } = req.body;
    console.log(correo, password);
    try {
      const result = await signIn(correo, password);
      res.status(201).json({data: result });
    } catch (err) {
      console.error('Error en el backend:', err);  // Log detallado
      const errorMessage = (err instanceof Error) ? err.message : 'Unknown error';
      res.status(500).json({ error: 'Error al iniciar sesión', details: errorMessage });
    }
  });
  
export default router;
