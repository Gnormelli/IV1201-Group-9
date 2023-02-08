import React from 'react';
import LoginComponent from './components/LoginComponent.js';
import SignupComponent from './components/SignupComponent';
import { ChakraProvider } from '@chakra-ui/react'
function App() {
  return (
      <ChakraProvider>
    <div>
        <SignupComponent />


    </div>
      </ChakraProvider>
  );
}

export default App;
