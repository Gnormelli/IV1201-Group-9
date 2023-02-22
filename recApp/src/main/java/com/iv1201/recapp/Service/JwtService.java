package com.iv1201.recapp.Service;

import com.iv1201.recapp.Config.ConfigProperties;
import io.jsonwebtoken.Claims;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.SignatureAlgorithm;
import io.jsonwebtoken.io.Decoders;
import io.jsonwebtoken.security.Keys;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Service;

import java.security.Key;
import java.sql.SQLOutput;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.function.Function;

@Service
public class JwtService {

//    Does not seam to work might check later.
//    private static ConfigProperties configProperties;
//    private static final String SECRET_KEY = configProperties.secret();
    @Value("${jwt.secret}")
    private String secret;

    public JwtService(){
    }

    public String createToken(UserDetails userDetails){
        return createToken(new HashMap<>(), userDetails);
    }

    /**
     * Creates a token from claims and user details.
     * Set when the token is created and how long til token expires.
     * Expiration now set to 1 sec -> 1 min -> 1 hour -> 24 hour
     * @param creationClaims
     * @param userDetails
     * @return a build JWT
     */
    public String createToken(Map<String, Object> creationClaims, UserDetails userDetails){
        return Jwts
                .builder()
                .setClaims(creationClaims)
                .setSubject(userDetails.getUsername())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis()+1000*60*60*24)) // 1 sec -> 1 min -> 1 hour
                .signWith(generateSignInKey(), SignatureAlgorithm.HS256)
                .compact();
    }

    public boolean checkTokenValidity(String jwtToken, UserDetails userDetails){
        final String username = getUsernameFromToken(jwtToken);
        return (username.equals(userDetails.getUsername())) && !checkExpirationOfToken(jwtToken);
    }

    public boolean checkExpirationOfToken(String jwtToken) {
        return getExpirationFromToken(jwtToken).before(new Date());
    }

    private Key generateSignInKey() {
        byte[] keyBase64 = Decoders.BASE64.decode(secret);
        return Keys.hmacShaKeyFor(keyBase64);
    }
    public Date getExpirationFromToken(String jwtToken) {
        return getSingleClaim(jwtToken, Claims::getExpiration);
    }

    public String getUsernameFromToken(String jwtToken) {
        return getSingleClaim(jwtToken, Claims::getSubject);
    }

    public<T> T getSingleClaim(String jwtToken, Function<Claims, T> claimFetcher){
        final Claims allClaims = getAllClaims(jwtToken);
        return claimFetcher.apply(allClaims);
    }

    private Claims getAllClaims(String jwtToken){
        return Jwts
                .parserBuilder()
                .setSigningKey(generateSignInKey())
                .build()
                .parseClaimsJws(jwtToken)
                .getBody();
    }

}
