import React, { useState, useCallback } from 'react';
import { View, Text, TouchableOpacity, ScrollView, ImageBackground, Dimensions,StyleSheet } from 'react-native';
import { ArrowLeft } from 'react-native-feather';
import { useColorScheme } from '@/hooks/useColorScheme';
import CommonLayout from '@/components/CommonLayout';
import { styles } from './styles';


const { width: SCREEN_WIDTH } = Dimensions.get('window');

export default function MobileAppInterface() {
  const systemColorScheme = useColorScheme();
  const [darkMode, setDarkMode] = useState(systemColorScheme === 'dark');
  const [selectedProfile, setSelectedProfile] = useState<string | null>(null);

  const toggleDarkMode = useCallback(() => {
    setDarkMode((prevMode) => !prevMode);
  }, []);

  const selectProfile = useCallback((profile: string) => {
    setSelectedProfile(profile);
  }, []);

  const theme = {
    backgroundColor: darkMode ? '#0f0f0a' : '#0f0f0a',
    cardColor: darkMode ? '#374151' : '#374151',
    textColor: darkMode ? '#F3F4F6' : '#F3F4F6',
    shadowColor: darkMode ? '#000000' : '#000000',
  };

  // Mapa de imágenes para cada perfil
  const profileImages: Record<string, string> = {
    'Perfil 1': 'https://static.wikia.nocookie.net/gatopedia/images/2/2e/El_gatoo.png/revision/latest?cb=20230103150310&path-prefix=es',
    'Perfil 2': 'https://media.tenor.com/ldNjzyrqeIMAAAAe/gato-meme.png',
    'Perfil 3': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEpg-p-7IAMHVkmfLx-Sj58mHz465_CslFdg&s',
    'Perfil 4': 'https://i.pinimg.com/236x/05/49/86/05498664d54894f92c6523c50c1eb9e6.jpg',
  };

  const productImages: Record<string, string> = {
    1: 'https://img.ltwebstatic.com/images3_pi/2023/10/12/14/16970927753f6f11a68da7f1665c8cea395aad2398.webp', // Imagen para el producto 1
    2: 'https://img.ltwebstatic.com/images3_pi/2023/09/22/fe/1695363042fdc62fb3ae8c3895b2f14ccd78630a89.webp', // Imagen para el producto 2
    3: 'https://img.ltwebstatic.com/images3_pi/2022/09/02/166210149583314be55e68f8fa0a26dd481724ee65_thumbnail_720x.webp', // Imagen para el producto 3
    4: 'https://img.ltwebstatic.com/images3_pi/2022/10/28/1666937712229ed477033e2167d2a5ac25a0bd1298.webp', // Imagen para el producto 4
    // Agrega más imágenes para los productos según sea necesario
  };


  const renderMainView = useCallback(() => (
    <ScrollView style={styles.main}>
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: theme.textColor }]}>Perfiles Recurrentes</Text>
        <View style={styles.suggestionGrid}>
          {['Perfil 1', 'Perfil 2', 'Perfil 3', 'Perfil 4'].map((profile) => (
            <TouchableOpacity
              key={profile}
              style={[styles.recurrentProfileButton, { backgroundColor: theme.cardColor }]}
              onPress={() => selectProfile(profile)}
            >
              <ImageBackground
                source={{ uri: profileImages[profile] }}
                style={
                  {              
                    flex: 1, // Ocupa todo el espacio
                    justifyContent: 'center',
                    alignItems: 'center',
                    width: '100%',  // Asegura que la imagen ocupe el ancho completo
                    height: '100%', // Asegura que la imagen ocupe el alto completo del conte } // Control de tamaño

                  }}
                imageStyle={{
                  borderRadius: 12,
                  resizeMode: 'cover',
                }}
              >
                <Text style={{ color: '#fff', textAlign: 'center', fontSize: 18, fontWeight: 'bold', textShadowColor: '#000', textShadowOffset: { width: -1, height: 1 }, textShadowRadius: 10 }}>
                  {profile}
                </Text>
              </ImageBackground>
            </TouchableOpacity>
          ))}
        </View>
      </View>
  
      {/* Sección de Sugerencias */}
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: theme.textColor }]}>Sugerencias</Text>
        <View style={styles.suggestionGrid}>
          {[...Array(200)].map((_, i) => (
            <View
              key={i}
              style={[
                styles.suggestionItem,
                {
                  backgroundColor: theme.cardColor,
                  flexDirection: 'column', // Diseño vertical
                  borderRadius: 10, // Bordes redondeados
                  overflow: 'hidden', // Para evitar desbordes
                },
              ]}
            >
              {/* Parte superior (80%) con una foto centrada */}
              <ImageBackground
                source={{ uri: productImages[i + 1] }} // Usamos i + 1 para asociar la foto con el producto
                style={{
                  flex: 4, // Ocupa el 80% del espacio
                  justifyContent: 'center',
                  alignItems: 'center',
                  width: '100%',  // Asegura que la imagen ocupe el ancho completo
                  height: '100%', // Asegura que la imagen ocupe el alto completo del contenedor
                }}
                imageStyle={{
                  borderRadius: 10,
                  resizeMode: 'cover',  // La imagen se recorta para cubrir el área sin distorsión
                }}
              >
                {/* Texto sobre la imagen */}
                <Text style={{ color: '#fff', fontWeight: 'bold', textShadowColor: '#000', textShadowOffset: { width: -1, height: 1 }, textShadowRadius: 10 }}>
                  Foto producto {i + 1}
                </Text>
              </ImageBackground>

              {/* Parte inferior (20%) */}
              <View
                style={{
                  flex: 1,
                  justifyContent: 'center',
                  alignItems: 'center',
                  backgroundColor: theme.cardColor,
                  borderBottomLeftRadius: 10,
                  borderBottomRightRadius: 10,
                }}
              >
                <Text style={[styles.suggestionText, { color: theme.textColor }]}>
                  Nombre Producto {i + 1}
                </Text>
                <Text style={[styles.suggestionText, { color: theme.textColor }]}>
                  $Precio Producto {i + 1}
                </Text>
              </View>
            </View>
          ))}
        </View>
      </View>
    </ScrollView>
  ), [theme, selectProfile]);

  const renderProfileView = useCallback(() => (
    <ScrollView style={styles.main}>
      <View style={styles.profileHeader}>
        <TouchableOpacity onPress={() => setSelectedProfile(null)} style={styles.backButton}>
          <ArrowLeft width={24} height={24} color={theme.textColor} />
        </TouchableOpacity>
        <Text style={[styles.profileTitle, { color: theme.textColor }]}>{selectedProfile}</Text>
      </View>
      <View style={styles.section}>
        <Text style={[styles.sectionTitle, { color: theme.textColor }]}>Sugerencias de {selectedProfile}</Text>
        <View style={styles.suggestionGrid}>
          {[...Array(12)].map((_, i) => (
            <TouchableOpacity
              key={i}
              style={[styles.suggestionItem, { backgroundColor: theme.cardColor }]}
            >
              <Text style={[styles.suggestionText, { color: theme.textColor }]}>Opción {i + 1}</Text>
            </TouchableOpacity>
          ))}
        </View>
      </View>
    </ScrollView>
  ), [selectedProfile, theme]);

  return (
    <CommonLayout>
      <View style={[styles.container, { backgroundColor: theme.backgroundColor }]}>
        {/* Contenido Principal */}
        {selectedProfile ? renderProfileView() : renderMainView()}
      </View>
    </CommonLayout>
  );
}



