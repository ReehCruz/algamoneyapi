package com.example.algamoney.api.config;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.oauth2.config.annotation.configurers.ClientDetailsServiceConfigurer;
import org.springframework.security.oauth2.config.annotation.web.configuration.AuthorizationServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.AuthorizationServerEndpointsConfigurer;
import org.springframework.security.oauth2.provider.token.TokenEnhancer;
import org.springframework.security.oauth2.provider.token.TokenEnhancerChain;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;

@Configuration
public class AuthorizationServerConfig extends AuthorizationServerConfigurerAdapter {

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private UserDetailsService userDetailsService;

	@Override
	public void configure(ClientDetailsServiceConfigurer clients) throws Exception {
		clients.inMemory()
				.withClient("angular")
				// secret -> admin
				.secret("$2a$10$EDH5bBnLLluoBTwTihMtwujCbzeINC7bvUtP6f2NcYl8Cq/.KmkQW")
				.scopes("read", "write")
				.authorizedGrantTypes("password", "refresh_token")
				.accessTokenValiditySeconds(60 * 30)
                .refreshTokenValiditySeconds(60 * 60 * 24);
	}		
	
	@Override
	public void configure(AuthorizationServerEndpointsConfigurer endpoints) throws Exception {
		TokenEnhancerChain tokenEnhancerChain = new TokenEnhancerChain();
        tokenEnhancerChain.setTokenEnhancers(Arrays.asList(tokenEnhancer(),accessTokenConverter()));

        endpoints
                .tokenStore(tokenStore())
                .tokenEnhancer(tokenEnhancerChain)
                .reuseRefreshTokens(false)
                .userDetailsService(this.userDetailsService)
                .authenticationManager(authenticationManager);
    }
	
	@Bean
	public JwtAccessTokenConverter accessTokenConverter() {
		JwtAccessTokenConverter accessTokenConverter = new JwtAccessTokenConverter();
		accessTokenConverter.setSigningKey("algaworks");
		return accessTokenConverter;
	}
			
	@Bean
	public TokenStore tokenStore() {
		return new JwtTokenStore(accessTokenConverter());
	}
	
	@Bean
    public TokenEnhancer tokenEnhancer(){
        return new CustomTokenEnhacer();
    }
}
