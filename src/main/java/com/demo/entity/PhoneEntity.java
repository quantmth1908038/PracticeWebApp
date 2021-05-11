package com.demo.entity;

import javax.persistence.*;

@Entity
@Table(name = "phone")
public class PhoneEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;

    @Column(name = "name")
    private String name;

    @Column(name = "brandid")
    private int brandid;

    @Column(name = "price")
    private int price;

    @Column(name = "description")
    private String description;

    @ManyToOne()
    @JoinColumn(name = "brandid", insertable = false, updatable = false)
    private BrandEntity brand;

    public PhoneEntity() {
    }

    public PhoneEntity(String name, int brandid, int price, String description) {
        this.name = name;
        this.brandid = brandid;
        this.price = price;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getBrandid() {
        return brandid;
    }

    public void setBrandid(int brandid) {
        this.brandid = brandid;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public BrandEntity getBrand() {
        return brand;
    }
}
