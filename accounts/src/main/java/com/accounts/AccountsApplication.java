package com.accounts;
import com.accounts.model.Accounts;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

import java.time.LocalDate;

@SpringBootApplication
@RefreshScope //it reloads the properties that got change without de need of restarting service
@EnableFeignClients
public class AccountsApplication {

	public static void main(String[] args) {
		SpringApplication.run(AccountsApplication.class, args);

		Accounts accounts1 = new Accounts();
		accounts1.setAccountType("Economy");
		accounts1.setBranchAddress("New York");
		accounts1.setCreateDt(LocalDate.parse("2022-10-16"));
		accounts1.setAccountNumber(1L);
		accounts1.setCustomerId(1);
	}

}
