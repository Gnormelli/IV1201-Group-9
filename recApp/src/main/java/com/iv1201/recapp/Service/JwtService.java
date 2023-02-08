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

    public<T> T getSingleClaim(String jwtToken, Function<Claims, T> claimFetcher){
        final Claims allClaims = getAllClaims(jwtToken);
        return claimFetcher.apply(allClaims);
    }

    public String getUsernameFromToken(String jwtToken) {
        return getSingleClaim(jwtToken, Claims::getSubject);
    }

    public String createToken(UserDetails userDetails){
        return createToken(new HashMap<>(), userDetails);
    }

    public String createToken(Map<String, Object> creationClaims, UserDetails userDetails){
        return Jwts
                .builder()
                .setClaims(creationClaims)
                .setSubject(userDetails.getUsername())
                .setIssuedAt(new Date(System.currentTimeMillis()))
                .setExpiration(new Date(System.currentTimeMillis() * 1000 * 60 * 90 ))
                .signWith(generateSignInKey(), SignatureAlgorithm.HS512)
                .compact();
    }

    public boolean checkTokenValidity(String jwtToken, UserDetails userDetails){
        final String username = getUsernameFromToken(jwtToken);
        return (username.equals(userDetails.getUsername())) && !checkExpirationOfToken(jwtToken);
    }

    private boolean checkExpirationOfToken(String jwtToken) {
        return getExpirationFromToken(jwtToken).before(new Date());
    }

    private Date getExpirationFromToken(String jwtToken) {
        return getSingleClaim(jwtToken, Claims::getExpiration);
    }

    private Claims getAllClaims(String jwtToken){
        return Jwts
                .parserBuilder()
                .setSigningKey(generateSignInKey())
                .build()
                .parseClaimsJws(jwtToken)
                .getBody();
    }

    private Key generateSignInKey() {
        byte[] keyBase64 = Decoders.BASE64.decode(secret);
        return Keys.hmacShaKeyFor(keyBase64);
    }
}
