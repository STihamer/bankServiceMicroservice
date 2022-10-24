package com.accounts.service.client;

import com.accounts.model.Cards;
import com.accounts.model.Customer;

import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

public interface CardsFeignClient {
    @RequestMapping(method = RequestMethod.POST, value ="myCards", consumes = "application/json")
    List<Cards> getCardDetails(@RequestBody Customer customer);
}