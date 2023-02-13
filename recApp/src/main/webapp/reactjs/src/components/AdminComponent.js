import React, { useState, useEffect } from 'react';
import {Box, Text, Stack, List, ListItem, ListIcon, Button, Heading, Flex, Link} from '@chakra-ui/react';
import {Grid, Select} from "@chakra-ui/core";


const names = ["John", "Jane", "Jim", "Jill"];
function AdminComponent() {


    const handleClick = (name) => {
        console.log(`${name} was clicked`);
    };

    const logout = () => {
        // Remove the user's session data
        localStorage.removeItem("userToken");
        // Redirect the user to the login page
        window.location.replace("/");
    };

    return (
        <>
            <Flex bg="cyan.800" p={4} justifyContent="space-between" alignItems="center">
                <Text fontFamily="Roboto, sans-serif" fontWeight="bold" color="white" fontSize={20}>
                    HappyCoaster AB
                </Text>
                <Button bg="lightblue" variantColor="white" mr={4} onClick={logout}>
                    Logout
                </Button>
            </Flex>
            <Box bg="gray.200" p={4} minHeight="100vh">
                <Text fontFamily="Roboto, sans-serif" fontWeight="bold" fontSize={24}>
                    WELCOME ADMIN!
                </Text>
                <Box mt={4}>
                    <Flex mt={2} alignItems="center">
                        <Text fontFamily="Roboto, sans-serif" fontWeight="bold" fontSize={16}>
                            Applications:
                        </Text>
                    </Flex>
                </Box>
                <Box p={4}>
                    {names.map((name, index) => (
                        <Flex
                            key={index}
                            p={2}
                            alignItems="center"
                            bg={index % 2 === 0 ? "white" : "gray.300"}
                            onClick={() => handleClick(name)}
                            cursor="pointer"

                            _hover={{ bg: "gray.200" }}
                            transition="background-color 0.2s ease-in-out"
                        >
                            <Text fontFamily="Roboto, sans-serif">{name}</Text>
                        </Flex>
                    ))}
                </Box>

            </Box>



        </>
    );
}
    export default AdminComponent;