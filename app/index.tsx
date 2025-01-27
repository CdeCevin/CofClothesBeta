import React, { useState } from 'react';
import {
  View,
  Text,
  TextInput,
  TouchableOpacity,
  StyleSheet,
  ScrollView,
  Platform,
} from 'react-native';
import { Feather } from '@expo/vector-icons';
import { useNavigation } from '@react-navigation/native';
import { styles } from '@/app/(tabs)/styles';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { useToast, Toast } from './algo';

interface LoginScreenProps {
  // Add any props here if needed
}

const LoginScreen: React.FC<LoginScreenProps> = () => {
  const navigation = useNavigation<any>();
  const [email, setEmail] = useState<string>('');
  const [password, setPassword] = useState<string>('');
  const [showPassword, setShowPassword] = useState<boolean>(false);
  const [rememberMe, setRememberMe] = useState<boolean>(false);

  
const handleLogin = async () => {
    console.log('Login pressed');
    const userData = { correo: email, password: password };

    try {
        const response = await fetch('http://192.168.1.6:3000/api/signIn', {
            method: 'POST',
            headers: { 'Content-Type': 'application/json' },
            body: JSON.stringify(userData),
        });

        const textResponse = await response.text();
        try {
            const result = JSON.parse(textResponse);  // Parseamos la respuesta

            if (response.ok) {
                console.log('Sesión iniciada:', result);

                // Asegúrate de acceder a data.userId correctamente
                if (result.data && result.data.userId) {
                    const userId = result.data.userId;  // Obtener el ID del usuario
                    await AsyncStorage.setItem('userId', userId.toString());  // Guardar el ID en AsyncStorage
                    navigation.navigate('(tabs)');  // Navegar a la siguiente pantalla
                } else {
                    console.error('No se pudo obtener el userId');
                    alert('Error al iniciar sesión, por favor intente de nuevo');
                }
            } else {
                console.error('Error al iniciar sesión:', result.error);
                alert('Error al iniciar sesión, por favor intente de nuevo');
            }
        } catch (err) {
            console.error('Respuesta no válida del servidor:', textResponse);
            alert('Error inesperado, por favor intente más tarde');
        }
    } catch (err) {
        console.error('Error al conectar con el backend:', err);
        alert('Error al conectar con el servidor, por favor intente más tarde');
    }
};



  const handleRegister = () => {
    console.log('Register pressed');
    navigation.navigate('registerPage');
  };



  return (
    <View style={styles.container}>
      <ScrollView
        contentContainerStyle={[styles.scrollView, styles.contentContainer]}
        keyboardShouldPersistTaps="handled"
      >
        <View style={styles.innerContainer}>
          <Text style={styles.title}>Bienvenido</Text>
          <Text style={styles.subtitle}>Inicia sesión para continuar</Text>

          <View style={styles.inputContainerSession}>
            <TextInput
              style={styles.inputSession}
              placeholder="Correo electrónico"
              placeholderTextColor="#A0AEC0"
              keyboardType="email-address"
              autoCapitalize="none"
              value={email}
              onChangeText={setEmail}
            />
          </View>

          <View style={styles.inputContainerSession}>
            <TextInput
              style={styles.inputSession}
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

          <View style={styles.rememberForgotContainer}>
            <TouchableOpacity
              style={styles.rememberMeContainer}
              onPress={() => setRememberMe(!rememberMe)}
            >
              <View style={[styles.checkbox, rememberMe && styles.checkboxChecked]}>
                {rememberMe && <Feather name="check" size={16} color="white" />}
              </View>
              <Text style={styles.rememberMeText}>Recordarme</Text>
            </TouchableOpacity>

            <TouchableOpacity>
              <Text style={styles.forgotPasswordText}>¿Olvidaste tu contraseña?</Text>
            </TouchableOpacity>
          </View>

          <TouchableOpacity style={styles.loginButton} onPress={handleLogin}>
            <Text style={styles.loginButtonText}>Iniciar sesión</Text>
          </TouchableOpacity>

          <View style={styles.registerContainer}>
            <Text style={styles.registerText}>¿No tienes una cuenta?</Text>
            <TouchableOpacity onPress={handleRegister}>
              <Text style={styles.registerButtonText}>Regístrate</Text>
            </TouchableOpacity>
          </View>
        </View>
      </ScrollView>
    </View>
  );
};

export default LoginScreen;