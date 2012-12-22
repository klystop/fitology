// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.klystop.fitology.domain;

import com.klystop.fitology.domain.Topping;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import org.springframework.transaction.annotation.Transactional;

privileged aspect Topping_Roo_Jpa_ActiveRecord {
    
    @PersistenceContext
    transient EntityManager Topping.entityManager;
    
    public static final EntityManager Topping.entityManager() {
        EntityManager em = new Topping().entityManager;
        if (em == null) throw new IllegalStateException("Entity manager has not been injected (is the Spring Aspects JAR configured as an AJC/AJDT aspects library?)");
        return em;
    }
    
    public static long Topping.countToppings() {
        return entityManager().createQuery("SELECT COUNT(o) FROM Topping o", Long.class).getSingleResult();
    }
    
    public static List<Topping> Topping.findAllToppings() {
        return entityManager().createQuery("SELECT o FROM Topping o", Topping.class).getResultList();
    }
    
    public static Topping Topping.findTopping(Long id) {
        if (id == null) return null;
        return entityManager().find(Topping.class, id);
    }
    
    public static List<Topping> Topping.findToppingEntries(int firstResult, int maxResults) {
        return entityManager().createQuery("SELECT o FROM Topping o", Topping.class).setFirstResult(firstResult).setMaxResults(maxResults).getResultList();
    }
    
    @Transactional
    public void Topping.persist() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.persist(this);
    }
    
    @Transactional
    public void Topping.remove() {
        if (this.entityManager == null) this.entityManager = entityManager();
        if (this.entityManager.contains(this)) {
            this.entityManager.remove(this);
        } else {
            Topping attached = Topping.findTopping(this.id);
            this.entityManager.remove(attached);
        }
    }
    
    @Transactional
    public void Topping.flush() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.flush();
    }
    
    @Transactional
    public void Topping.clear() {
        if (this.entityManager == null) this.entityManager = entityManager();
        this.entityManager.clear();
    }
    
    @Transactional
    public Topping Topping.merge() {
        if (this.entityManager == null) this.entityManager = entityManager();
        Topping merged = this.entityManager.merge(this);
        this.entityManager.flush();
        return merged;
    }
    
}
