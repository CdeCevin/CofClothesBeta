import { Tabs } from 'expo-router';
import React from 'react';
import { Platform, TouchableOpacity, View } from 'react-native';
import { Home, Search, Settings, Sun, Moon } from 'react-native-feather';

import { HapticTab } from '@/components/HapticTab';
import { IconSymbol } from '@/components/ui/IconSymbol';
import TabBarBackground from '@/components/ui/TabBarBackground';
import { Colors } from '@/constants/Colors';
import { useColorScheme } from '@/hooks/useColorScheme';

import { styles } from './styles';

export default function TabLayout() {
  const colorScheme = useColorScheme();
  const [darkMode, setDarkMode] = React.useState(colorScheme === 'dark');

  const toggleDarkMode = () => {
    setDarkMode(!darkMode);
  };

  const theme = {
    backgroundColor: darkMode ? '#1F2937' : '#1F2937',
    cardColor: darkMode ? '#0f0f0a' : '#0f0f0a',
    textColor: darkMode ? '#F3F4F6' : '#F3F4F6',
  };

  return (
    <Tabs
      screenOptions={{
        tabBarActiveTintColor: Colors[colorScheme ?? 'light'].tint,
        headerShown: false,
        tabBarButton: HapticTab,
      
        tabBarStyle: {
          backgroundColor: theme.cardColor,
          height: 60,
          borderTopWidth: 1,
          borderTopColor: darkMode ? '#374151' : '#374151',
          borderTopLeftRadius: 10, // Bordes redondeados en la parte superior izquierda
          borderTopRightRadius: 10, // Bordes redondeados en la parte superior derecha
        },        
      }}>
      <Tabs.Screen
        name="menu"
        options={{
          title: 'Home',
          tabBarIcon: ({ color }) => <IconSymbol size={28} name="house.fill" color={color} />,
        }}
      />
      <Tabs.Screen
        name="explore"
        options={{
          title: 'Explore',
          tabBarIcon: ({ color }) => <IconSymbol size={28} name="paperplane.fill" color={color} />,
        }}
      />
      <Tabs.Screen
        name="info"
        options={{
          title: 'Info',
          tabBarIcon: ({ color }) => <IconSymbol size={28} name="info.circle.fill" color={color} />,
        }}
      />
      <Tabs.Screen
        name="Profiles"
        options={{
          title: 'Perfiles',
          tabBarIcon: ({ color }) => <IconSymbol size={28} name="book.fill" color={color} />,
        }}
      />
    </Tabs>
  );
}

