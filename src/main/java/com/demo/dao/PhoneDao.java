package com.demo.dao;

import com.demo.entity.BrandEntity;
import com.demo.entity.PhoneEntity;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import java.util.List;

public class PhoneDao {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("persistence");

    public void insertPhone(PhoneEntity phone){
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(phone);
        em.getTransaction().commit();
        em.close();
    }

    public void insertBrand(BrandEntity brand){
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(brand);
        em.getTransaction().commit();
        em.close();
    }

    public List<PhoneEntity> getAllPhone(){
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        List<PhoneEntity> list = em.createQuery("select c from PhoneEntity c", PhoneEntity.class).getResultList();
        em.getTransaction().commit();
        em.close();
        return list;
    }

    public List<BrandEntity> getAllBrand(){
        EntityManager em = emf.createEntityManager();
        em.getTransaction().begin();
        List<BrandEntity> list = em.createQuery("select c from BrandEntity c", BrandEntity.class).getResultList();
        if (list.size() == 0) {
            BrandEntity brand = new BrandEntity("Apple");
            insertBrand(brand);
            brand = new BrandEntity("Samsung");
            insertBrand(brand);
            brand = new BrandEntity("Nokia");
            insertBrand(brand);
            brand = new BrandEntity("Others");
            insertBrand(brand);
            em = emf.createEntityManager();
            em.getTransaction().begin();
            list = em.createQuery("select c from BrandEntity c", BrandEntity.class).getResultList();
        }
        em.getTransaction().commit();
        em.close();
        return list;
    }

}
