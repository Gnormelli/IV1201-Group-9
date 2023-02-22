import React from 'react';
import {Box, Text, Flex, Stack,} from '@chakra-ui/react';
import {Select} from "@chakra-ui/react";
import {NavbarComponent} from './NavbarComponent';


const names = ["John", "Jane", "Jim", "Jill"];
function AdminPage() {


    const handleClick = (name) => {
        console.log(`${name} was clicked`);
    };


    return (
        <>
            <NavbarComponent />
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

                <Box p={4} >
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
                            <Stack ml="auto">
                                <Select variant='filled' placeholder='Status' >
                                    <option value="Option 1">Accepted</option>
                                    <option value="Option 2">Not Accepted</option>
                                    <option value="Option 3">Pending</option>
                                </Select>
                            </Stack>
                        </Flex>
                    ))}

                </Box>


            </Box>



        </>
    );
}
    export default AdminPage;