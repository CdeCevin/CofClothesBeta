import React from 'react';
import { NavigationContainer } from '@react-navigation/native';
import { createStackNavigator } from '@react-navigation/stack';
import TabLayout from '@/app/(tabs)/_layout';
import UserPage from './user';
import CreateProfileStep1 from './newProfile'; 
import CreateProfileStep2 from './dProfile'; 
import CreateProfileStep3 from './selectStyle';
import RegisterPage from './registerPage';
import IndexPage from './index';



const Stack = createStackNavigator();

export default function AppNavigator() {
  return (
    <NavigationContainer>
      <Stack.Navigator screenOptions={{ headerShown: false }}>
        <Stack.Screen name="(tabs)" component={TabLayout} />
        <Stack.Screen name="user" component={UserPage} />
        <Stack.Screen 
          name="newProfile" 
          component={(props: any) => <CreateProfileStep1 {...props} name="" setName={() => {}} onNext={() => {}} />} 
        />
        <Stack.Screen 
          name="dProfile" 
          component={(props: any) => <CreateProfileStep2 {...props} description="" setDescription={() => {}} onSave={() => {}} />} 
        />
        <Stack.Screen 
          name="selectStyle" 
          component={(props: any) => <CreateProfileStep3 {...props} description="" setDescription={() => {}} onSave={() => {}} />} 
        />
          <Stack.Screen 
          name="registerPage" 
          component={(props: any) => <RegisterPage {...props} description="" setDescription={() => {}} onSave={() => {}} />} 
        />
        <Stack.Screen 
          name="index" 
          component={(props: any) => <IndexPage {...props} description="" setDescription={() => {}} onSave={() => {}} />}
        />
      </Stack.Navigator>
    </NavigationContainer>
  );
}