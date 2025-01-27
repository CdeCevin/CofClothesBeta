import React, { useState } from 'react';
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Platform,
  Image,
} from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useNavigation } from '@react-navigation/native';
import * as ImagePicker from 'expo-image-picker';
import * as ImageManipulator from 'expo-image-manipulator';

interface RegisterScreenProps {
  // Add any props here if needed
}

const RegisterScreen: React.FC<RegisterScreenProps> = () => {
  const navigation = useNavigation<any>();
  const [name, setName] = useState<string>('');
  const [email, setEmail] = useState<string>('');
  const [password, setPassword] = useState<string>('');
  const [phone, setPhone] = useState<number | undefined>(undefined);
  const [country, setCountry] = useState<string>('');
  const [profileImage, setProfileImage] = useState<string | null>(null);
  const [showPassword, setShowPassword] = useState<boolean>(false);

  
  const uploadImage = async (imageUri: string): Promise<string | null> => {
    // Obtener la información del archivo de la imagen
    const response = await fetch(imageUri);
    const blob = await response.blob();
  
    const formData = new FormData();
    formData.append('image', blob, 'profile_picture.jpg');
  
    console.log('FormData:', formData);
  
    try {
      const response = await fetch('http://192.168.1.6:3000/api/uploadImage', {
        method: 'POST',
        body: formData,
      });
  
      const result = await response.json();
      if (response.ok) {
        console.log('Imagen subida correctamente:', result.url);
        return result.url;  // Retorna la URL pública de la imagen
      } else {
        console.error('Error al subir la imagen:', result.error);
        return null;
      }
    } catch (error) {
      console.error('Error al conectar con el servidor:', error);
      return null;
    }
  };
  
  
  

  const handleRegister = async () => {
    if (!name || !email || !password || !phone || !country) {
      alert('Por favor, complete todos los campos');
      return;
    }
  
    console.log('Register pressed', { name, email, password, phone, country, profileImage });
  
    let uploadedImageUrl = null;
  
    // Subir la imagen al backend si se seleccionó una
    if (profileImage) {
      uploadedImageUrl = await uploadImage(profileImage);
      console.log('uploadedImageURL: ',uploadedImageUrl);
      if (!uploadedImageUrl) {
        alert('Error al subir la imagen');
        return;
      }
    }
  
    // Preparar datos para el backend
    const userData = {
      nombre: name,
      correo: email,
      password,
      telefono: phone,
      profile_picture: uploadedImageUrl,
      pais: country,
    };
    console.log('userData info: ',userData);
    try {
      const response = await fetch('http://192.168.1.6:3000/api/inUser', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(userData),
      });
  
      const result = await response.json();
  
      if (response.ok) {
        console.log('Usuario creado:', result);
        navigation.navigate('index');
      } else {
        console.error('Error al crear el usuario:', result.error);
        alert('Error al crear el usuario, por favor intente de nuevo');
      }
    } catch (err) {
      console.error('Error al conectar con el backend:', err);
      alert('Error al conectar con el servidor, por favor intente más tarde');
    }
  };
  

  const handlePickImage = async () => {
    const result = await ImagePicker.launchImageLibraryAsync({
      mediaTypes: ImagePicker.MediaTypeOptions.Images,
      allowsEditing: true,
      aspect: [1, 1],
      quality: 1, // Calidad original
    });
  
    if (!result.canceled) {
      const manipulatedImage = await ImageManipulator.manipulateAsync(
        result.assets[0].uri,
        [{ resize: { width: 800 } }], // Redimensionar imagen
        { compress: 0.8, format: ImageManipulator.SaveFormat.JPEG } // Comprimir
      );
      setProfileImage(manipulatedImage.uri);
    }
  };
  

  // Función para manejar el cambio del campo de teléfono
  const handlePhoneChange = (text: string) => {
    const phoneNumber = parseInt(text, 10);
    if (!isNaN(phoneNumber)) {
      setPhone(phoneNumber); // Actualizar el número si es válido
    } else {
      setPhone(undefined); // Si no es un número válido, reiniciarlo
    }
  };

  return (
    <View style={styles.container}>
      <ScrollView
        contentContainerStyle={[styles.scrollView, styles.contentContainer]}
        keyboardShouldPersistTaps="handled"
      >
        <View style={styles.innerContainer}>
          <Text style={styles.title}>Crear Cuenta</Text>
          <Text style={styles.subtitle}>Completa tus datos para registrarte</Text>

          <TouchableOpacity style={styles.profileImageContainer} onPress={handlePickImage}>
            {profileImage ? (
              <Image source={{ uri: profileImage }} style={styles.profileImage} />
            ) : (
              <View style={styles.profileImagePlaceholder}>
                <Feather name="user" size={40} color="#A0AEC0" />
              </View>
            )}
            <Text style={styles.addPhotoText}>Agregar foto</Text>
          </TouchableOpacity>

          <View style={styles.inputContainer}>
            <TextInput
              style={styles.input}
              placeholder="Nombre completo"
              placeholderTextColor="#A0AEC0"
              value={name}
              onChangeText={setName}
            />
          </View>

          <View style={styles.inputContainer}>
            <TextInput
              style={styles.input}
              placeholder="Correo electrónico"
              placeholderTextColor="#A0AEC0"
              keyboardType="email-address"
              autoCapitalize="none"
              value={email}
              onChangeText={setEmail}
            />
          </View>

          <View style={styles.inputContainer}>
            <TextInput
              style={styles.input}
              placeholder="Contraseña"
              placeholderTextColor="#A0AEC0"
              secureTextEntry={!showPassword}
              value={password}
              onChangeText={setPassword}
            />
            <TouchableOpacity
              style={styles.eyeIcon}
              onPress={() => setShowPassword(!showPassword)}
            >
              <Feather
                name={showPassword ? 'eye-off' : 'eye'}
                size={24}
                color="#A0AEC0"
              />
            </TouchableOpacity>
          </View>

          <View style={styles.inputContainer}>
            <TextInput
              style={styles.input}
              placeholder="Teléfono"
              placeholderTextColor="#A0AEC0"
              keyboardType="phone-pad"
              value={phone ? phone.toString() : ''} // Convertir número a string para mostrar
              onChangeText={handlePhoneChange}
            />
          </View>

          <View style={styles.inputContainer}>
            <TextInput
              style={styles.input}
              placeholder="País"
              placeholderTextColor="#A0AEC0"
              value={country}
              onChangeText={setCountry}
            />
          </View>

          <TouchableOpacity style={styles.registerButton} onPress={handleRegister}>
            <Text style={styles.registerButtonText}>Registrarse</Text>
          </TouchableOpacity>

          <View style={styles.loginContainer}>
            <Text style={styles.loginText}>¿Ya tienes una cuenta?</Text>
            <TouchableOpacity onPress={() => navigation.navigate('index')}>
              <Text style={styles.loginButtonText}>Iniciar sesión</Text>
            </TouchableOpacity>
          </View>
        </View>
      </ScrollView>
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#F7FAFC',
    paddingTop: Platform.OS === 'android' ? 25 : 0,
  },
  scrollView: {
    flexGrow: 1,
  },
  contentContainer: {
    flexGrow: 1,
    justifyContent: 'center',
    padding: 20,
  },
  innerContainer: {
    width: '100%',
    maxWidth: 400,
    alignSelf: 'center',
  },
  title: {
    fontSize: 28,
    fontWeight: 'bold',
    color: '#1A202C',
    textAlign: 'center',
    marginBottom: 8,
  },
  subtitle: {
    fontSize: 16,
    color: '#4A5568',
    textAlign: 'center',
    marginBottom: 24,
  },
  profileImageContainer: {
    alignItems: 'center',
    marginBottom: 24,
  },
  profileImage: {
    width: 120,
    height: 120,
    borderRadius: 60,
  },
  profileImagePlaceholder: {
    width: 120,
    height: 120,
    borderRadius: 60,
    backgroundColor: '#E2E8F0',
    justifyContent: 'center',
    alignItems: 'center',
  },
  addPhotoText: {
    marginTop: 8,
    fontSize: 14,
    color: '#4299E1',
  },
  inputContainer: {
    marginBottom: 16,
    position: 'relative',
  },
  input: {
    backgroundColor: 'white',
    paddingHorizontal: 16,
    paddingVertical: 12,
    borderRadius: 8,
    fontSize: 16,
    borderWidth: 1,
    borderColor: '#E2E8F0',
  },
  eyeIcon: {
    position: 'absolute',
    right: 16,
    top: 12,
  },
  registerButton: {
    backgroundColor: '#4299E1',
    paddingVertical: 12,
    borderRadius: 8,
    alignItems: 'center',
    marginTop: 8,
  },
  registerButtonText: {
    color: 'white',
    fontSize: 16,
    fontWeight: 'bold',
  },
  loginContainer: {
    flexDirection: 'row',
    justifyContent: 'center',
    alignItems: 'center',
    marginTop: 16,
  },
  loginText: {
    fontSize: 14,
    color: '#4A5568',
    marginRight: 4,
  },
  loginButtonText: {
    fontSize: 14,
    color: '#4299E1',
    fontWeight: 'bold',
  },
});

export default RegisterScreen;
