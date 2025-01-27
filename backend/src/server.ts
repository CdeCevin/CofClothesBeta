import express from 'express';
import cors from 'cors';
import getUserRoutes from './routes/getUserRoutes';
import inUserRoutes from './routes/inUserRoutes';
import signInRoutes from './routes/signInRoutes';
import getProfilesRoutes from './routes/getProfilesRoutes';
import inProfileRoutes from './routes/inProfileRoutes';
import inProfileCategory from './routes/inProfileCategoryRoutes';
import getClothesProfile from './routes/getClothesProfileRoutes';
import getCategoryProfile  from './routes/getCategoryProfileRoutes'
import uploadImage from './routes/uploadImageRoutes';

const app = express(); 
const port = 3000;

app.use(cors());
app.use(express.json());
app.use(express.json({ limit: '100mb ' }));
app.use(express.urlencoded({ limit: '100mb', extended: true }));


// Rutas de la API
app.use('/api/getUser', getUserRoutes); // Prefijo único para getUser
app.use('/api/inUser', inUserRoutes);  // Prefijo único para inUser
app.use('/api/signIn', signInRoutes);  // Prefijo único para signIn
app.use('/api/inProfile', inProfileRoutes);  // Prefijo único para inProfile
app.use('/api/getProfiles', getProfilesRoutes); // Prefijo único para getProfiles
app.use('/api/inProfileCategory', inProfileCategory); // Prefijo único para inProfileCategory
app.use('/api/getClothesProfile', getClothesProfile); // Prefijo único para getClothesProfile
app.use('/api/getCategoryProfile', getCategoryProfile);
app.use('/api/uploadImage',uploadImage);

app.listen(port, () => {
  console.log(`Servidor corriendo en http://localhost:${port}`);
});



