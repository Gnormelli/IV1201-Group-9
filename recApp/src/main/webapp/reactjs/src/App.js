import React from 'react';
import LoginComponent from './components/LoginComponent.js';
import { ChakraProvider } from '@chakra-ui/react'
import ApplicationComponent from "./components/ApplicationComponent";
function App() {
  return (
      <ChakraProvider>
    <div>
        <ApplicationComponent />

    </div>
      </ChakraProvider>
  );
}

export default App;
