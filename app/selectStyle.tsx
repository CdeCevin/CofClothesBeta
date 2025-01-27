import React, { useState, useEffect } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  ScrollView,
  StyleSheet,
  Dimensions,
  Animated,
  StatusBar
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { useNavigation, useRoute } from '@react-navigation/native';
import { ArrowRight, ArrowLeft } from 'react-native-feather';

const { width } = Dimensions.get('window');
const buttonWidth = (width - 48) / 2;

const estilosModa = [
  "Casual", "Formal", "Bohemio", "Oversize", "Callejero", "Semi formal", "Deportivo",
  "Vintage", "Chic", "Minimalista", "Gótico", "Punk", "Preppy", "Hipster", "Romántico",
  "Grunge", "Militar", "Retro", "Ecléctico", "Urbano", "Normcore", "Skater", "Rocker",
  "Country", "Clásico", "Athleisure", "Arty", "Business casual", "Futurista", "Cyberpunk",
  "Pin-up", "Nautical", "Tomboy", "Cosplay", "Steampunk", "Safari", "Western", "Andrógeno",
  "Lounge wear", "Tradicional"
];

const SeleccionEstilos = () => {
  const [seleccionados, setSeleccionados] = useState<string[]>([]);
  const [animatedValues, setAnimatedValues] = useState<{ [key: string]: Animated.Value }>({});
  const navigation = useNavigation<any>();
  const route = useRoute<any>();

  const { name, userId, description } = route.params;

  const handleBack = () => {
    navigation.navigate('dProfile',{ name, userId, description });
  }

  const handleSubmit = async () => {
    console.log('Estilos seleccionados:', seleccionados);
    console.log('Datos a enviar:', { name, userId, description });
    if (userId && description) {
      try {
        const response = await fetch('http://192.168.1.6:3000/api/inProfile', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            nombre: name,
            descripcion: description,
            userId,
          }),
        });

        const data = await response.json();
        console.log('Perfil creado:', data);
      } catch (error) {
        console.error('Error al crear el perfil:', error);
      }
    } else {
      console.error('Faltan datos para enviar.');
    }

    if (seleccionados) {
      try {
        const response = await fetch('http://192.168.1.6:3000/api/inProfileCategory', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({
            categoryName: seleccionados,
          }),
        });

        const data = await response.json();
        console.log('Categoria en perfil insertado:', data);
        navigation.navigate('(tabs)');
      } catch (error) {
        console.error('Error al crear insertar categoria en perfil:', error);
      }
    } else {
      console.error('Faltan datos para enviar.');
    }

  };

  useEffect(() => {
    const initialAnimatedValues = estilosModa.reduce((acc, estilo) => ({
      ...acc,
      [estilo]: new Animated.Value(0)
    }), {});
    setAnimatedValues(initialAnimatedValues);
  }, []);

  const toggleSeleccion = (estilo: string) => {
    setSeleccionados(prev =>
      prev.includes(estilo)
        ? prev.filter(e => e !== estilo)
        : [...prev, estilo]
    );

    Animated.spring(animatedValues[estilo], {
      toValue: seleccionados.includes(estilo) ? 0 : 1,
      useNativeDriver: false,
    }).start();
  };

  return (
    <LinearGradient
      colors={['#121212', '#1E1E1E', '#2C2C2C']}
      style={styles.container}
    >
      <StatusBar barStyle="light-content" />
      <TouchableOpacity style={styles.nextButton} onPress={handleSubmit}>
        <ArrowRight stroke="#FFFFFF" width={24} height={24} />
      </TouchableOpacity>
      <TouchableOpacity style={styles.backButton} onPress={handleBack}>
        <ArrowLeft stroke="#FFFFFF" width={24} height={24} />
      </TouchableOpacity>
      <ScrollView contentContainerStyle={styles.scrollContent}>
        <Text style={styles.title}>Selecciona tus estilos preferidos</Text>
        <View style={styles.grid}>
          {estilosModa.map((estilo) => {
            const isSelected = seleccionados.includes(estilo);
            const animatedStyle = {
              transform: [{
                scale: animatedValues[estilo]?.interpolate({
                  inputRange: [0, 1],
                  outputRange: [1, 1.05],
                }) || 1,
              }],
              backgroundColor: animatedValues[estilo]?.interpolate({
                inputRange: [0, 1],
                outputRange: ['#333333', '#BB86FC'],
              }) || '#333333',
            };

            return (
              <TouchableOpacity
                key={estilo}
                onPress={() => toggleSeleccion(estilo)}
                activeOpacity={0.7}
              >
                <Animated.View style={[styles.button, animatedStyle]}>
                  <Text style={[
                    styles.buttonText,
                    isSelected && styles.buttonTextSelected
                  ]}>
                    {estilo}
                  </Text>
                </Animated.View>
              </TouchableOpacity>
            );
          })}
        </View>
      </ScrollView>
    </LinearGradient>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
  nextButton: {
    position: 'absolute',
    top: 40,
    right: 16,
    zIndex: 10,
    padding: 8,
    borderRadius: 50,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
  },
  backButton: {
    position: 'absolute',
    top: 40,
    left: 16,
    zIndex: 10,
    padding: 8,
    borderRadius: 50,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
  },
  scrollContent: {
    padding: 16,
    marginTop: 48, // Para dar espacio al botón de flecha
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    marginTop: 16,
    marginBottom: 24,
    color: '#FFFFFF',
    textAlign: 'center',
    textShadowColor: 'rgba(0, 0, 0, 0.75)',
    textShadowOffset: { width: -1, height: 1 },
    textShadowRadius: 10
  },
  grid: {
    flexDirection: 'row',
    flexWrap: 'wrap',
    justifyContent: 'space-between',
    marginBottom: 30,
  },
  button: {
    width: buttonWidth,
    padding: 16,
    borderRadius: 12,
    marginBottom: 16,
    alignItems: 'center',
    justifyContent: 'center',
    shadowColor: "#000",
    shadowOffset: {
      width: 0,
      height: 2,
    },
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    elevation: 5,
  },
  buttonText: {
    fontSize: 14,
    fontWeight: '600',
    textAlign: 'center',
    color: '#FFFFFF',
  },
  buttonTextSelected: {
    color: '#000000',
  },
});

export default SeleccionEstilos;
