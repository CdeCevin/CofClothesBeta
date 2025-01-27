import React from 'react';
import { View, Image, StyleSheet } from 'react-native';

interface ImageCollageProps {
  images: string[];
}

const ImageCollage: React.FC<ImageCollageProps> = ({ images }) => {
  const renderImages = () => {
    switch (images.length) {
      case 1:
        return (
          <Image source={{ uri: images[0] }} style={styles.singleImage} />
        );
      case 2:
        return (
          <View style={styles.twoImagesContainer}>
            <Image source={{ uri: images[0] }} style={styles.halfImage} />
            <Image source={{ uri: images[1] }} style={styles.halfImage} />
          </View>
        );
      case 3:
        return (
          <View style={styles.threeImagesContainer}>
            <Image source={{ uri: images[0] }} style={styles.twoThirdsImage} />
            <View style={styles.oneThirdContainer}>
              <Image source={{ uri: images[1] }} style={styles.oneThirdImage} />
              <Image source={{ uri: images[2] }} style={styles.oneThirdImage} />
            </View>
          </View>
        );
      case 4:
      default:
        return (
          <View style={styles.fourImagesContainer}>
            <View style={styles.row}>
              <Image source={{ uri: images[0] }} style={styles.quarterImage} />
              <Image source={{ uri: images[1] }} style={styles.quarterImage} />
            </View>
            <View style={styles.row}>
              <Image source={{ uri: images[2] }} style={styles.quarterImage} />
              <Image source={{ uri: images[3] }} style={styles.quarterImage} />
            </View>
          </View>
        );
    }
  };

  return <View style={styles.container}>{renderImages()}</View>;
};

const styles = StyleSheet.create({
  container: {
    width: '100%',
    aspectRatio: 1,
    overflow: 'hidden',
  },
  singleImage: {
    width: '100%',
    height: '100%',
  },
  twoImagesContainer: {
    flexDirection: 'row',
    height: '100%',
  },
  halfImage: {
    width: '50%',
    height: '100%',
  },
  threeImagesContainer: {
    flexDirection: 'row',
    height: '100%',
  },
  twoThirdsImage: {
    width: '66.66%',
    height: '100%',
  },
  oneThirdContainer: {
    width: '33.33%',
    height: '100%',
  },
  oneThirdImage: {
    width: '100%',
    height: '50%',
  },
  fourImagesContainer: {
    height: '100%',
  },
  row: {
    flexDirection: 'row',
    height: '50%',
  },
  quarterImage: {
    width: '50%',
    height: '100%',
  },
});

export default ImageCollage;
