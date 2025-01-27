import React, { useState, useEffect, useCallback } from 'react';
import { View, Text, TouchableOpacity, ScrollView, Image } from 'react-native';
import { ArrowLeft, Moon, Sun } from 'react-native-feather';
import { useColorScheme } from '@/hooks/useColorScheme';
import { stylesProfile } from './styles';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { Linking, Alert } from 'react-native';
import ImageCollage from '../ImageCollage';
import CommonLayout from '@/components/CommonLayout';

export default function Profiles() {
  const systemColorScheme = useColorScheme();
  const [darkMode, setDarkMode] = useState(systemColorScheme === 'dark');
  const [selectedProfile, setSelectedProfile] = useState<any | null>(null);
  const [profiles, setProfiles] = useState<any[]>([]);
  const [products, setProducts] = useState<any[]>([]);
  const [loadingProfiles, setLoadingProfiles] = useState(true);
  const [loadingProducts, setLoadingProducts] = useState(false);

  useEffect(() => {
    const fetchProfiles = async () => {
      try {
        const storedUserId = await AsyncStorage.getItem('userId');
        if (storedUserId) {
          const response = await fetch(`http://192.168.1.6:3000/api/getProfiles/user/${storedUserId}`);
          if (!response.ok) throw new Error('Error al obtener los perfiles');
          const data = await response.json();
          
          // Fetch category images for each profile
          const profilesWithImages = await Promise.all(data.map(async (profile: any) => {
            const categoryImages = await fetchCategoryImages(profile.id);
            return { ...profile, categoryImages };
          }));
          
          setProfiles(profilesWithImages);
        }
      } catch (error) {
        console.error('Error al obtener los perfiles:', error);
      } finally {
        setLoadingProfiles(false);
      }
    };

    fetchProfiles();
  }, []);

  const fetchClothes = async (profileId: string) => {
    try {
      setLoadingProducts(true);
      const response = await fetch(`http://192.168.1.6:3000/api/getClothesProfile/user/${profileId}`);
      if (!response.ok) throw new Error('Error al obtener los productos');
      const data = await response.json();
      setProducts(data);
    } catch (error) {
      console.error('Error al obtener los productos:', error);
    } finally {
      setLoadingProducts(false);
    }
  };

  const fetchCategoryImages = async (profileId: string) => {
    try {
      const response = await fetch(`http://192.168.1.6:3000/api/getCategoryProfile/user/${profileId}`);
      if (!response.ok) throw new Error('Error al obtener las categorias');
      const data = await response.json();
      return data.slice(0, 4).map((category: any) => category.imagen_url);
    } catch (error) {
      console.error('Error al obtener las categorias:', error);
      return [];
    }
  };

  const selectProfile = (profile: any) => {
    setSelectedProfile(profile);
    fetchClothes(profile.id);
  };

  const theme = {
    backgroundColor: darkMode ? '#121212' : '#121212',
    cardColor: darkMode ? '#1E1E1E' : '#1E1E1E',
    textColor: darkMode ? '#E0E0E0' : '#E0E0E0',
    accentColor: darkMode ? '#BB86FC' : '#BB86FC',
    borderColor: darkMode ? '#333333' : '#333333',
  };

  const toggleDarkMode = () => {
    setDarkMode(!darkMode);
  };

  const redirectLink = (link: string) => {
    if (!link) {
      Alert.alert('Error', 'El enlace no está disponible.');
      return;
    }
  
    Linking.canOpenURL(link)
      .then((supported) => {
        if (supported) {
          Linking.openURL(link);
        } else {
          Alert.alert('Error', 'No se puede abrir el enlace.');
        }
      })
      .catch((err) => {
        console.error('Error al abrir el enlace:', err);
        Alert.alert('Error', 'Ocurrió un problema al intentar abrir el enlace.');
      });
  };

  const renderProfileView = useCallback(() => (
    <ScrollView style={[stylesProfile.profilesMain, { backgroundColor: theme.backgroundColor }]}>
      <View style={stylesProfile.profilesHeader}>
        <TouchableOpacity onPress={() => setSelectedProfile(null)} style={stylesProfile.profilesBackButton}>
          <ArrowLeft width={24} height={24} color={theme.textColor} />
        </TouchableOpacity>
        <Text style={[stylesProfile.profilesTitle, { color: theme.textColor }]}>{selectedProfile?.nombre}</Text>
      </View>
      <View style={stylesProfile.profilesSection}>
        <Text style={[stylesProfile.profilesSectionTitle, { color: theme.accentColor }]}>Productos de {selectedProfile?.nombre}</Text>
        {loadingProducts ? (
          <Text style={{ color: theme.textColor }}>Cargando productos...</Text>
        ) : (
          <View style={stylesProfile.suggestionGrid}>
            {products.map((product) => (
              <TouchableOpacity 
                key={product.id}
                style={stylesProfile.suggestionItem} 
                onPress={() => redirectLink(product.ropa_link)}
              >
                <Image
                  source={{ uri: product.imagen_url }}
                  style={stylesProfile.suggestionImage}
                />
                <View style={[stylesProfile.suggestionInfo, { backgroundColor: theme.cardColor }]}>
                  <Text style={[stylesProfile.suggestionText, { color: theme.textColor, fontWeight: 'bold' }]}>
                    {product.nombre}
                  </Text>
                  <Text style={[stylesProfile.suggestionText, { color: theme.textColor }]}>
                    {product.precio ? `$${product.precio}` : 'Precio no disponible'}
                  </Text>
                </View>
              </TouchableOpacity>
            ))}
          </View>
        )}
      </View>
    </ScrollView>
  ), [selectedProfile, products, loadingProducts, theme]);
  
  const renderMainView = useCallback(() => (
    <CommonLayout> 
    <ScrollView style={[stylesProfile.profilesMain, { backgroundColor: theme.backgroundColor }]}>
      <View style={stylesProfile.profilesSection}>
        <Text style={[stylesProfile.profilesSectionTitle, { color: theme.accentColor }]}>Perfiles</Text>
        {loadingProfiles ? (
          <Text style={{ color: theme.textColor }}>Cargando perfiles...</Text>
        ) : (
          profiles.map((profile) => (
            <TouchableOpacity
              key={profile.id}
              style={[stylesProfile.profilesPerfilItem, { backgroundColor: theme.cardColor }]}
              onPress={() => selectProfile(profile)}
            >
              <View style={stylesProfile.profilesPerfilHeader}>
                {profile.imagen_url ? (
                  <Image
                    source={{ uri: profile.imagen_url }}
                    style={stylesProfile.profilesPerfilImage}
                  />
                ) : (
                  <ImageCollage images={profile.categoryImages} />
                )}
              </View>
              <View style={stylesProfile.profilesPerfilInfo}>
                <Text style={[stylesProfile.profilesPerfilNombre, { color: theme.textColor }]}>{profile.nombre}</Text>
                <Text style={[stylesProfile.profilesPerfilDescripcion, { color: theme.textColor }]}>{profile.descripcion}</Text>
              </View>
            </TouchableOpacity>
          ))
        )}
      </View>
    </ScrollView>
    </CommonLayout>
  ), [profiles, loadingProfiles, theme]);

  return (
    <View style={[stylesProfile.profilesContainer, { backgroundColor: theme.backgroundColor }]}>
      {selectedProfile ? renderProfileView() : renderMainView()}
    </View>
  );
}

