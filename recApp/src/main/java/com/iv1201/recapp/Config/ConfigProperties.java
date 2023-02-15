package com.iv1201.recapp.Config;

import org.springframework.boot.context.properties.ConfigurationProperties;

@ConfigurationProperties("jwt")
public record ConfigProperties(String secret) {
}
