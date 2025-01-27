import { Storage } from '@google-cloud/storage';

const projectId = 'numeric-analogy-446722-k0';
const keyFilename = './keyFilename.json';
const bucketName = 'cofclothes';

// Inicializar el cliente de Google Cloud Storage
const storage = new Storage({ projectId, keyFilename });
const bucket = storage.bucket(bucketName);

export const uploadImageToCloud = async (fileBuffer: Buffer, originalName: string, mimeType: string) => {
  try {
    // Generar el nombre del archivo con el nombre original y el sufijo deseado
    const fileNameWithoutExtension = originalName.split('.').slice(0, -1).join('.'); // Remover la extensión
    const destinationFileName = `${Date.now()}_${fileNameWithoutExtension}_profile_picture.jpg`;
    const file = bucket.file(destinationFileName);
    console.log(destinationFileName);
    // Subir el archivo al bucket
    await file.save(fileBuffer, { contentType: mimeType });

    // Crear la URL pública del archivo
    const publicUrl = `https://storage.googleapis.com/${bucketName}/${destinationFileName}`;
    return publicUrl;
  } catch (error) {
    console.error('Error al subir archivo:', error);
    throw new Error('No se pudo subir el archivo a Google Cloud Storage');
  }
};
