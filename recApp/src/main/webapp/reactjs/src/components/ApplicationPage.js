import React, { useState } from 'react';
import { Box, Button, Input, Stack, Heading, VStack, StackDivider, Select, CloseButton, CheckboxGroup, Text, Checkbox } from '@chakra-ui/react';
import { FormControl, FormLabel } from '@chakra-ui/react'
import {NavbarComponent} from './NavbarComponent';

function ApplicationPage() {
    const [currentSection, setCurrentSection] = useState(0);
    const [firstName, setFirstName] = useState('');
    const [lastName, setLastName] = useState('');
    const [personalNumber, setPersonalNumber] = useState('');
    const [email, setEmail] = useState('');
    const [items, setItems] = useState([]);
    const options = ["Expertise 1", "Expertise 2", "Expertise 3", "Expertise 4", "Expertise 5"];


    const addItem = () => {
        const newOption = document.getElementById("select-option").value;
        const newYears = document.getElementById("years-of-experience").value;
        const newItem = { option: newOption, years: newYears };
        setItems([...items, newItem]);
    };

    const removeItem = (index) => {
        setItems(items.filter((item, i) => i !== index));
    };

    const sections = [
        <Box>
            <VStack
                divider={<StackDivider borderColor='gray.200' />}
                spacing={4}
                align='stretch'
            >
                <Box h='40px'>
                    <Heading as='h3' size='lg'>
                        Info
                    </Heading>
                </Box>
                <Box>
                    <FormControl h='80px' isRequired>
                        <FormLabel>First name</FormLabel>
                        <Input value={firstName} onChange={(e) => setFirstName(e.target.value)} />
                    </FormControl>

                    <FormControl h='80px' isRequired>
                        <FormLabel>Last name</FormLabel>
                        <Input value={lastName} onChange={(e) => setLastName(e.target.value)} />
                    </FormControl>

                    <FormControl h='80px' isRequired>
                        <FormLabel>Personal number</FormLabel>
                        <Input value={personalNumber} onChange={(e) => setPersonalNumber(e.target.value)} />
                    </FormControl>

                    <FormControl h='80px' isRequired>
                        <FormLabel>Email address</FormLabel>
                        <Input type='email' value={email} onChange={(e) => setEmail(e.target.value)} />
                    </FormControl>
                </Box>
            </VStack>
        </Box>,
        <Box p="6">
            <VStack
                divider={<StackDivider borderColor='gray.200' />}
                spacing={4}
                align='stretch'
            >
                <Box h='40px'>
                    <Heading as='h3' size='lg'>
                        Experience
                    </Heading>
                </Box>
            <Stack spacing="4">
                <FormControl id="Area of expertise">
                    <FormLabel>Area of expertise</FormLabel>
                    <Select placeholder="Select an option" id="select-option">
                        {options.map((option) => (
                            <option key={option} value={option}>
                                {option}
                            </option>
                        ))}
                    </Select>
                </FormControl>
                <FormControl id="years">
                    <FormLabel>Years of experience</FormLabel>
                    <Input type="number" id="years-of-experience" />
                </FormControl>
                <Button colorScheme="blue" onClick={addItem}>
                    Add item
                </Button>
            </Stack>
            <Box height="80px" overflowY="scroll">
                {items.length > 0 && (
                    <Stack mt="6" spacing="4">
                        {items.map((item, index) => (
                            <Box key={index} p="4" shadow="md" borderWidth="1px">
                                <Stack direction="row" justify="space-between">
                                    <Text>
                                        {item.option} ({item.years} years)
                                    </Text>
                                    <CloseButton onClick={() => removeItem(index)} />
                                </Stack>
                            </Box>
                        ))}
                    </Stack>
                )}
            </Box>
            </VStack>
        </Box>,
        <Box>
            <VStack
                divider={<StackDivider borderColor='gray.200' />}
                spacing={4}
                align='stretch'
            >
                <Box h='40px'>
                    <Heading as='h3' size='lg'>
                        Availability
                    </Heading>
                </Box>
                <Box>
                    <Stack spacing={10} direction="row">
                        <Checkbox isDisabled>Checkbox</Checkbox>
                        <Checkbox isDisabled defaultIsChecked>
                            Checkbox
                        </Checkbox>
                    </Stack>
                </Box>
            </VStack>
        </Box>
    ];
    return (
        <>
            <NavbarComponent />
            <Box
                display='flex'
                flexDirection='column'
                justifyContent='center'
                alignItems='center'
                minHeight='100vh'
                backgroundColor='gray.50'
            >
                <Box width='80%' maxWidth='800px' backgroundColor='white' p={6} borderRadius='lg'>
                    <Box mb={6}>
                        <Heading as='h1' size='xl'>
                            Welcome to the Application
                        </Heading>
                    </Box>
                    <Box display='flex' flexDirection='column' alignItems='center'>
                        {sections[currentSection]}
                        <Box
                            display='flex'
                            justifyContent='space-between'
                            width='100%'
                            mt={6}
                        >
                            {currentSection > 0 && (
                                <Button
                                    onClick={() => setCurrentSection(currentSection - 1)}
                                    disabled={currentSection === 0}
                                >
                                    Back
                                </Button>
                            )}
                            <Box display='flex' justifyContent='center' alignItems='center'>
                                <Stack direction='row' spacing={2}>
                                    {sections.map((_, i) => (
                                        <Box
                                            key={i}
                                            h='12px'
                                            w='12px'
                                            bg={i === currentSection ? 'blue.500' : 'gray.200'}
                                            borderRadius='full'
                                            cursor='pointer'
                                            onClick={() => setCurrentSection(i)}
                                        />
                                    ))}
                                </Stack>
                            </Box>
                            {currentSection < sections.length - 1 && (
                                <Button
                                    onClick={() => setCurrentSection(currentSection + 1)}
                                    disabled={currentSection === sections.length - 1}
                                >
                                    Next
                                </Button>
                            )}
                        </Box>
                    </Box>
                </Box>
            </Box>
        </>
    )
}

export default ApplicationPage;