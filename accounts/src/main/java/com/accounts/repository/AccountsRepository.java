package com.accounts.repository;


import com.accounts.model.Accounts;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AccountsRepository extends JpaRepository<Accounts, Long> {
    public Accounts findByCustomerId(Long id);

    List<Accounts>findAllByCustomerId(Long id);
}
