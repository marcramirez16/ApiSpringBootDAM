package com.dam2.bitacora.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestController;

import com.dam2.bitacora.entity.Users;
import com.dam2.bitacora.service.UsersService;

//EN ESTA CLASSE ESTARAN TODOS LOS METODOS UTILES PARA EDITAR EDITAR USUARIOS Y DIRIGRLOS A LAS BD O AL CONTRARIO

@RestController //indica que la classe maneja solicitudes http y sus datos devolveran datos en lenguaje de marcas json
//ESTA CLASSE MANEJA LAS PETICIONES HTTP
public class ApiController {

    //objeto para guardar el usuario
    @Autowired //inyeccion de dependencias
    private UsersService usersService; //objeto de la interfaz UsersService "tendra los atributos de la classe User desde userdao..."
    
// metodo para retornar usuario
    @GetMapping("/users") //GetMapping devuelve una lista de
    public List<Users> findAllUsers() {
        return usersService.findAll(); //metodo para retornar
    }
    
// guardar nuevo usuario
    @PostMapping("/users")
    @ResponseStatus(HttpStatus.CREATED)
    public Users createUser(@RequestBody Users newUser) { //pasar nuevo usuario
        return usersService.save(newUser); //metodo para guardar un nuevo usuario
    }

// borrar usuario
    @DeleteMapping("/users/{id}")
    public ResponseEntity<String> deleteUser(@PathVariable Long id) { //pasar id
        Users user = usersService.findById(id); //crear objeto del usuario creado
        if (user == null) {
            return ResponseEntity.notFound().build(); //si  no se encuentra el usuario devuelve mensaje
        }

        usersService.deleteById(id); //borrar usuario por su id

        return ResponseEntity.ok("Deleted user id - " + id);
    }

// devolver usuario por su id
    @GetMapping("/users/{id}")
    public ResponseEntity<Users> findUserById(@PathVariable Long id) { //pasar id
        Users user = usersService.findById(id); //buscar por id
        if (user == null) {
            return ResponseEntity.notFound().build(); //mandar mensaje si no existe
        }
        return ResponseEntity.ok(user); //retornar mensaje y usuario
    }

//actualizar usuario pr su id
    @PutMapping("/users/{id}")
    public ResponseEntity<Users> updateUser(@PathVariable Long id, @RequestBody Users updatedUser) { //pasar id y nuevos datos usuario
        Users existingUser = usersService.findById(id); //buscar pod id
        if (existingUser == null) {
            return ResponseEntity.notFound().build(); //si no existe mandar error
        }
        
        existingUser.setUsername(updatedUser.getUsername()); //cambiar valor
        existingUser.setBirthday(updatedUser.getBirthday()); //cambiar valor
        existingUser.setMail(updatedUser.getMail());         //cambiar valor
        existingUser.setPassword(updatedUser.getPassword()); //cambiar valor
        existingUser.setProfilePhoto(updatedUser.getProfilePhoto()); //cambiar valor

        usersService.save(existingUser); //guardar usuario
        
        return ResponseEntity.ok(existingUser); //retornar mensaje y usuario nuevo
    }

//actualizar biographya del usuario
    @PutMapping("/users/{id}/biography")
    public ResponseEntity<Users> updateBiography(@PathVariable Long id, @RequestBody Users updatedUser) { //pasar id y usuario con biografia nueva
        System.out.println("Received request to update biography for user id: " + id);
        Users existingUser = usersService.findById(id); //buscar usuario por su id
        if (existingUser == null) {
            return ResponseEntity.notFound().build(); //mandar mensaje de error
        }
        
        existingUser.setBiography(updatedUser.getBiography()); //actualizar la biografia

        usersService.save(existingUser); //actualizar el usuario
        
        return ResponseEntity.ok(existingUser); //retornar mensaje y usuario nuevo
    }

}