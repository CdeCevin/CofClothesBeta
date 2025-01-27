import React, { useEffect, useState } from 'react';
import { 
  View, 
  Text, 
  Image, 
  ActivityIndicator, 
  StyleSheet, 
  Dimensions,
  Animated,
  TouchableOpacity
} from 'react-native';
import { LinearGradient } from 'expo-linear-gradient';
import { Edit } from 'react-native-feather';
import AsyncStorage from '@react-native-async-storage/async-storage';
import { useNavigation, useRoute } from '@react-navigation/native';
import { ArrowLeft, ArrowRight } from 'react-native-feather';
const { width } = Dimensions.get('window');

interface UserInfo {
  fullName: string;
  email: string;
  cellphone: string;
  country: string;
  img: string;
}

const UserProfileTab: React.FC = () => {
  const [userInfo, setUserInfo] = useState<UserInfo | null>(null);
  const [loading, setLoading] = useState(true);
  const [userId, setUserId] = useState<string | null>(null);
  const [fadeAnim] = useState(new Animated.Value(0));
  const navigation = useNavigation<any>();

  const handleBack = () => {
    navigation.navigate('(tabs)');
  }


  useEffect(() => {
    const fetchUserInfo = async () => {
      try {
        const storedUserId = await AsyncStorage.getItem('userId');
        if (storedUserId) {
          setUserId(storedUserId);
          const response = await fetch(`http://192.168.1.6:3000/api/getUser/user/${storedUserId}`);
          const data = await response.json();
          setUserInfo({
            fullName: data.nombre,
            email: data.correo,
            cellphone: data.telefono,
            country: data.pais,
            img: data.profile_picture,
          });
        } else {
          console.error('ID de usuario no encontrado en AsyncStorage');
        }
      } catch (error) {
        console.error('Error al obtener los datos del usuario:', error);
      } finally {
        setLoading(false);
        Animated.timing(fadeAnim, {
          toValue: 1,
          duration: 1000,
          useNativeDriver: true,
        }).start();
      }
    };

    fetchUserInfo();
  }, []);

  if (loading) {
    return (
      <LinearGradient
        colors={['#121212', '#1E1E1E', '#2C2C2C']}
        style={styles.container}
      >
        <ActivityIndicator size="large" color="#BB86FC" />
      </LinearGradient>
    );
  }

  return (
    <LinearGradient
      colors={['#121212', '#1E1E1E', '#2C2C2C']}
      style={styles.container}
    >
      <TouchableOpacity style={styles.backButton} onPress={handleBack}>
        <ArrowLeft stroke="#FFFFFF" width={24} height={24} />
      </TouchableOpacity>
      <Animated.View style={[styles.content, { opacity: fadeAnim }]}>

        {userInfo && (
          <View style={styles.userInfoContainer}>
            <View style={styles.userTitleContainer}>
              <Image
                source={{ uri: userInfo.img }}
                style={styles.profileImage}
              />
              <View style={styles.nameContainer}>
                <Text style={styles.username}>{userInfo.fullName}</Text>
                <TouchableOpacity style={styles.editButton}>
                  <Edit stroke="#BB86FC" width={20} height={20} />
                </TouchableOpacity>
              </View>
            </View>
            <View style={styles.infoSection}>
              <Text style={styles.infoLabel}>Correo electrónico:</Text>
              <Text style={styles.infoValue}>{userInfo.email}</Text>
            </View>
            <View style={styles.infoSection}>
              <Text style={styles.infoLabel}>Teléfono:</Text>
              <Text style={styles.infoValue}>{userInfo.cellphone}</Text>
            </View>
            <View style={styles.infoSection}>
              <Text style={styles.infoLabel}>País:</Text>
              <Text style={styles.infoValue}>{userInfo.country}</Text>
            </View>
          </View>
        )}
      </Animated.View>
    </LinearGradient>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
  content: {
    width: '100%',
    padding: 20,
  },
  userInfoContainer: {
    backgroundColor: 'rgba(65, 44, 44, 0.1)',
    borderRadius: 20,
    padding: 20,
    width: '100%',
    alignItems: 'center',
    shadowColor: "#000",
    shadowOpacity: 0.25,
    shadowRadius: 3.84,
    shadowOffset: {
      width: 0,
      height: 2,
    },
    elevation: 10,
    boxShadow: '0 2px 4px rgba(0, 0, 0, 0.25)',
  },
  userTitleContainer: {
    alignItems: 'center',
    marginBottom: 20,
  },
  profileImage: {
    width: 120,
    height: 120,
    borderRadius: 60,
    marginBottom: 10,
    borderWidth: 3,
    borderColor: '#BB86FC',
  },
  nameContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  username: {
    fontSize: 24,
    fontWeight: 'bold',
    color: '#FFFFFF',
    marginRight: 10,
  },
  editButton: {
    padding: 5,
  },
  infoSection: {
    width: '100%',
    marginBottom: 15,
  },
  infoLabel: {
    fontSize: 14,
    color: '#BB86FC',
    marginBottom: 5,
  },
  infoValue: {
    fontSize: 16,
    color: '#FFFFFF',
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
    padding: 10,
    borderRadius: 10,
  },
  backButton: {
    position: 'absolute',
    top: 50,
    left: 16,
    zIndex: 10,
    padding: 8,
    borderRadius: 50,
    backgroundColor: 'rgba(255, 255, 255, 0.1)',
  },
});

export default UserProfileTab;

