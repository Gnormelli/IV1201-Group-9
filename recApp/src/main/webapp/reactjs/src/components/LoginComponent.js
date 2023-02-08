import React, { useState }  from 'react';
import {Input, Button, Stack, Box, FormControl, FormHelperText, Avatar} from "@chakra-ui/react";
import { Link } from '@chakra-ui/react'
import { Text } from '@chakra-ui/react'
import { Heading } from '@chakra-ui/react'
function LoginComponent() {
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [error, setError] = useState('')

    const handleSubmit = (e) => {
        e.preventDefault()
        // Perform login here, you can use email and password
        if (!email || !password) {
            setError('Please enter email and password')
            return
        }
        setError('')
    }


    return (
        <Box
            as="form"
            onSubmit={handleSubmit}
            backgroundColor="white"
            p={8}
            borderWidth={1}
            borderRadius={4}
            boxShadow="xl"
            width="100%"
            maxWidth="400px"
            margin="0 auto"
            marginTop={150}
            rounded={18}
        >
            <Stack spacing={6}>
                <center>
                <Avatar bg='teal.500' />
                <Heading marginTop={3} >Sign in</Heading>
                </center>
                <FormControl>
                    <Input
                        type="email"
                        placeholder="Email"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                    />
                </FormControl>
                <FormControl>
                    <Input
                        type="password"
                        placeholder="Password"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                    />
                </FormControl>
                {error && (
                    <FormHelperText color="red.500">{error}</FormHelperText>
                )}
                <Button type="submit" bg={"lightblue"}>Login</Button>
            </Stack>
            <center >
            <Text marginTop={5}>
                Are you new?{' '}
                <Link color='teal.500' href='#'>
                    create account
                </Link>
            </Text>
                </center>

        </Box>


    )
}





export default LoginComponent;
