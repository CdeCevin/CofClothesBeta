import express from 'express';
import multer from 'multer';
import { uploadImageToCloud } from '../controllers/uploadImage';

const router = express.Router();

// Configurar Multer para manejar archivos en memoria
const upload = multer({ storage: multer.memoryStorage() });

// Ruta para subir imágenes
router.post('', upload.single('image'), async (req, res, next) => {
  try {
    if (!req.file) {
      res.status(400).json({ error: 'No se proporcionó ninguna imagen' });
      return; // Asegúrate de salir después de enviar la respuesta
    }

    const { originalname, buffer, mimetype } = req.file;

    // Llamar a la función modular para subir la imagen
    const publicUrl = await uploadImageToCloud(buffer, originalname, mimetype);

    res.status(200).json({ url: publicUrl });
  } catch (error) {
    console.error('Error en la subida de imagen:', error);
    next(error); // Pasa el error al manejador de errores de Express
  }
});

export default router;
