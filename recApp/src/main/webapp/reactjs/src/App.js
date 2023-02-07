import React from 'react';
import LoginComponent from './components/LoginComponent.js';
import { ChakraProvider } from '@chakra-ui/react'
function App() {
  return (
      <ChakraProvider>
    <div>
        <LoginComponent />

    </div>
      </ChakraProvider>
  );
}

export default App;
