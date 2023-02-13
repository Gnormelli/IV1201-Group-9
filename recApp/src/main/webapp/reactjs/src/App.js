import React from 'react';
import LoginComponent from './components/LoginComponent.js';
import {ChakraProvider} from '@chakra-ui/react'
import SignupComponent from "./components/SignupComponent";
import { BrowserRouter,Route, Routes } from "react-router-dom";
import AdminComponent from "./components/AdminComponent";

function App() {
  return (

      <ChakraProvider>
          <BrowserRouter>
              <Routes>
                  <Route exact path="/" element={<LoginComponent />} />
                  <Route exact path="/signup" element={<SignupComponent />} />
                  <Route exact path="/admin" element={ <AdminComponent />} />
                  </Routes>
              </BrowserRouter>

      </ChakraProvider>

  );
}

export default App;
