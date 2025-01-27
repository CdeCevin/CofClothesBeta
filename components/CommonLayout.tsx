import React, { ReactNode } from 'react';
import { View, ScrollView, TouchableOpacity } from 'react-native';
import { useNavigation } from '@react-navigation/native';
import { useColorScheme } from '@/hooks/useColorScheme';
import { User, Plus, Sun, Moon } from 'react-native-feather';
import { styles } from '@/app/(tabs)/styles';
import { BorderlessButton } from 'react-native-gesture-handler';

interface CommonLayoutProps {
  children: ReactNode;
}

const CommonLayout: React.FC<CommonLayoutProps> = ({ children }) => {
  const colorScheme = useColorScheme();
  const [darkMode, setDarkMode] = React.useState(colorScheme === 'dark');
  const navigation = useNavigation<any>();

  const toggleDarkMode = () => {
    setDarkMode(!darkMode);
  };

  const theme = {
    backgroundColor: darkMode ? '#121212' : '#121212',
    cardColor: darkMode ? '#0f0f0a' : '#0f0f0a',
    textColor: darkMode ? '#E0E0E0' : '#E0E0E0',
    accentColor: '#3B82F6',
    borderColor: darkMode ? '#374151' : '#374151',
  };

  return (
    <View style={[styles.container, { backgroundColor: theme.backgroundColor }]}>
      <View style={[styles.header, { backgroundColor: theme.cardColor }]}>
        <TouchableOpacity onPress={() => navigation.navigate('user')}>
          <User width={24} height={24} color={theme.textColor} />
        </TouchableOpacity>
        <View style={styles.iconContainer}>
          <TouchableOpacity style={styles.navButton} onPress={toggleDarkMode}>
            {darkMode ? (
              <Sun width={24} height={24} color={theme.textColor} />
            ) : (
              <Moon width={24} height={24} color={theme.textColor} />
            )}
          </TouchableOpacity>
          <TouchableOpacity 
            style={[styles.addButton, { backgroundColor: theme.accentColor }]} 
            onPress={() => navigation.navigate('newProfile')}
          >
            <Plus width={24} height={24} color={theme.backgroundColor} />
          </TouchableOpacity>
        </View>
      </View>
      <ScrollView style={styles.main}>
        {children}
      </ScrollView>
    </View>
  );
};

export default CommonLayout;

