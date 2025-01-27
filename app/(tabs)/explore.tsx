import React from 'react';
import { StyleSheet, Platform } from 'react-native';
import { Collapsible } from '@/components/Collapsible';
import { ExternalLink } from '@/components/ExternalLink';
import ParallaxScrollView from '@/components/ParallaxScrollView';
import { ThemedText } from '@/components/ThemedText';
import { ThemedView } from '@/components/ThemedView';
import { IconSymbol } from '@/components/ui/IconSymbol';
import CommonLayout from '@/components/CommonLayout';
import { useColorScheme } from '@/hooks/useColorScheme';

export default function Explore() {
  const colorScheme = useColorScheme();
  const [darkMode, setDarkMode] = React.useState(colorScheme === 'dark');

  const theme = {
    backgroundColor: darkMode ? '#0f0f0a' : '#F3F4F6',
    cardColor: darkMode ? '#374151' : '#FFFFFF',
    textColor: darkMode ? '#F3F4F6' : '#1F2937',
    shadowColor: darkMode ? '#000000' : '#000000',
  };


  return (
    <CommonLayout>
      <ParallaxScrollView
        headerBackgroundColor={{ light: '#D0D0D0', dark: '#353636' }}
        headerImage={
          <IconSymbol
            size={310}
            color="#808080"
            name="chevron.left.forwardslash.chevron.right"
            style={styles.headerImage}
          />
        }
      >
        <ThemedView style={styles.titleContainer}>
          <ThemedText type="title">Explore</ThemedText>
        </ThemedView>
        <ThemedText>HOLA DE NUEVO.</ThemedText>
        <Collapsible title="File-based routing">
          <ThemedText>
            This app has two screens: <ThemedText type="defaultSemiBold">Home</ThemedText> and{' '}
            <ThemedText type="defaultSemiBold">Explore</ThemedText>. Each tab has its own navigation
            stack. The <ThemedText type="defaultSemiBold">Home</ThemedText> tab has a nested stack
            navigator, and the <ThemedText type="defaultSemiBold">Explore</ThemedText> tab has a
            nested stack navigator.
          </ThemedText>
          <ExternalLink href="https://docs.expo.dev/guides/routing/">
            <ThemedText type="link">Learn more</ThemedText>
          </ExternalLink>
        </Collapsible>
        <Collapsible title="Light and dark mode components">
          <ThemedText>
            This template has light and dark mode support. The{' '}
            <ThemedText type="defaultSemiBold">useColorScheme()</ThemedText> hook lets you inspect
            what the user's current color scheme is, and so you can adjust UI colors accordingly.
          </ThemedText>
          <ExternalLink href="https://docs.expo.dev/develop/user-interface/color-themes/">
            <ThemedText type="link">Learn more</ThemedText>
          </ExternalLink>
        </Collapsible>
        <Collapsible title="Animations">
          <ThemedText>
            This template includes an example of an animated component. The{' '}
            <ThemedText type="defaultSemiBold">components/HelloWave.tsx</ThemedText> component uses
            the powerful <ThemedText type="defaultSemiBold">react-native-reanimated</ThemedText>{' '}
            library to create a waving hand animation.
          </ThemedText>
          {Platform.select({
            ios: (
              <ThemedText>
                The <ThemedText type="defaultSemiBold">components/ParallaxScrollView.tsx</ThemedText>{' '}
                component provides a parallax effect for the header image.
              </ThemedText>
            ),
          })}
        </Collapsible>
      </ParallaxScrollView>
    </CommonLayout>
  );
}

const styles = StyleSheet.create({
  headerImage: {
    alignSelf: 'center',
  },
  titleContainer: {
    padding: 16,
    alignItems: 'center',
  },
});