import React from 'react';
import {Button, Flex, Text} from "@chakra-ui/react";

const logout = () => {
    // Remove the user's session data
    localStorage.removeItem("userToken");
    // Redirect the user to the login page
    window.location.replace("/");
};
export function NavbarComponent() {

    return (
        <Flex bg="cyan.800" p={4} justifyContent="space-between" alignItems="center">
            <Text fontFamily="Roboto, sans-serif" fontWeight="bold" color="white" fontSize={20}>
                HappyCoaster AB
            </Text>
            <Button bg="lightblue" variantcolor="white" mr={4} onClick={logout}>
                Logout
            </Button>
        </Flex>
    );

}

export default NavbarComponent;