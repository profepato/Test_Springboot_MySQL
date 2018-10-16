package org.prez.springmysql.model;

import org.springframework.data.repository.CrudRepository;


// This will be AUTO IMPLEMENTED by Spring into a Bean called userRepository
// CRUD refers Create, Read, Update, Delete

public interface UsuarioRepository extends CrudRepository<Usuario, Integer> {

}
