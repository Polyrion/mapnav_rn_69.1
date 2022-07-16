import {StyleSheet, Text, View, NativeModules} from 'react-native';
import React from 'react';

const App = () => {
  NativeModules.RNMapboxNavigation.takeMeToDestination();
  return (
    <View style={styles.container}>
      <Text>App</Text>
    </View>
  );
};

export default App;

const styles = StyleSheet.create({
  container: {
    flex: 1,
  },
});
