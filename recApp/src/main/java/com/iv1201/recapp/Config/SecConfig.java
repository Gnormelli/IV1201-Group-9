package com.iv1201.recapp.Config;

import com.iv1201.recapp.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.authentication.configuration.AuthenticationConfiguration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import org.springframework.web.cors.CorsConfiguration;
import org.springframework.web.cors.CorsConfigurationSource;
import org.springframework.web.cors.UrlBasedCorsConfigurationSource;

import java.util.Arrays;

/**
 * @Author Gustav Normelli
 */
@Configuration
@EnableWebSecurity
public class SecConfig {
    @Autowired
    private JwtFilter jwtFilter;
    @Autowired
    private UserService userService;

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .csrf().disable() // todo Check how or if to configure
                .cors(Customizer.withDefaults()) // Uses the Bean CorsConfigurationSource
                .authorizeRequests()
                .requestMatchers("/api/v1/auth/**").permitAll() // Row for all the whitelisted endpoints
//                /api/v1/testEndpoint
                .anyRequest().authenticated()
                .and()
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.STATELESS)
                .and()
                .authenticationProvider(authenticationProvider()) //Authentication provider
                .addFilterBefore(jwtFilter, UsernamePasswordAuthenticationFilter.class)
        ;
        return http.build();
    }

    @Bean
    CorsConfigurationSource corsConfigurationSource() {
        CorsConfiguration configuration = new CorsConfiguration();
        configuration.setAllowedOrigins(Arrays.asList("http://localhost:3000"));
        configuration.setAllowedMethods(Arrays.asList("GET","POST","PATCH", "PUT", "DELETE", "OPTIONS", "HEAD"));
        configuration.setAllowCredentials(true);
        configuration.setAllowedHeaders(Arrays.asList("Authorization" , "Origin", "X-Requested-With", "Content-Type", "Accept"));
        configuration.setExposedHeaders(Arrays.asList("Authorization" , "Origin", "X-Requested-With", "Content-Type", "Accept"));
        UrlBasedCorsConfigurationSource source = new UrlBasedCorsConfigurationSource();
        source.registerCorsConfiguration("/**", configuration);
        return source;
    }

    @Bean
    public AuthenticationProvider authenticationProvider() {
        final DaoAuthenticationProvider daoAuthProvider =
                new DaoAuthenticationProvider();

        daoAuthProvider.setPasswordEncoder(bcryptPasswordEncoder());
        daoAuthProvider.setUserDetailsService(this.userService);
        return daoAuthProvider;
    }

    @Bean
    public AuthenticationManager authManager(AuthenticationConfiguration authConf) throws Exception {
        return authConf.getAuthenticationManager();
    }
    @Bean
    public PasswordEncoder bcryptPasswordEncoder() {
        return new BCryptPasswordEncoder();
    }
}
