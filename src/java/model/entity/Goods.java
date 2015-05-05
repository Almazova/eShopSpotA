/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.entity;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author asus
 */
@Entity
@Table(name = "goods")
@NamedQueries({
    @NamedQuery(name = "SELECT_BY_CATEGORY",
            query = "from model.entity.Goods g where g.category.nameCategory = :nameCategory"),
    @NamedQuery(name = "SELECT_BY_ONE_CLUB_AND_CATEGORY",
            query = "from model.entity.Goods g where g.club.nameClub = :nameClub1 and g.category.nameCategory = :nameCategory"),
    @NamedQuery(name = "SELECT_BY_TWO_CLUB_AND_CATEGORY",
            query = "from model.entity.Goods g where (g.club.nameClub = :nameClub1 or"
                    + " g.club.nameClub = :nameClub2) and g.category.nameCategory = :nameCategory"),
    @NamedQuery(name = "SELECT_BY_THREE_CLUB_AND_CATEGORY",
            query = "from model.entity.Goods g where (g.club.nameClub = :nameClub1 or"
                    + " g.club.nameClub = :nameClub2 or g.club.nameClub = :nameClub3) and"
                    + " g.category.nameCategory = :nameCategory")
//    
//    @NamedQuery(name = "HQL_SELECT_BETWEEN", query = "from Tea where number between :a and :b"),
//    @NamedQuery(name = "HQL_SELECT_AMOUNT", query = "select count(*)from Tea where name =:name"),
//    @NamedQuery(name = "HQL_SELECT_BETWEEN_PRICE", query = "from Tea where number >:a and price <:price"),
//    @NamedQuery(name = "HQL_SELECT_BY_TYPE", query = "select tea from Tea as tea left join tea.typeTea as "
//            + "typeTea where typeTea.typeTeaName = :typeTea"),
//    @NamedQuery(name = "HQL_SELECT_AMOUNT_BT_TYPE", query = "select sum(tea.number) from Tea as tea left join "
//            + "tea.typeTea as typeTea where typeTea.typeTeaName = :typeTea"),
})
public class Goods implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "goods_id")
    private Long goodsId;
    
    @Column(name = "name_goods")
    private String nameGoods;
    
    @Column(name = "price_goods")
    private long priceGoods;
    
    @Column(name = "information")
    private String information;
    
    @Column(name = "image")
    private String image;
    
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "category_id")
    private Category category;
     
    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "club_id")
    private Club club;

 
    public Goods() {
    }

    public Goods(String nameGoods, long priceGoods, String infomation, String image, Category category, Club club) {
        this.nameGoods = nameGoods;
        this.priceGoods = priceGoods;
        this.information = infomation;
        this.image = image;
        this.category = category;
        this.club = club;
    }

  
    

    public Long getGoodsId() {
        return goodsId;
    }

    public void setGoodsId(Long goodsId) {
        this.goodsId = goodsId;
    }

    public String getNameGoods() {
        return nameGoods;
    }

    public void setNameGoods(String nameGoods) {
        this.nameGoods = nameGoods;
    }

    public long getPriceGoods() {
        return priceGoods;
    }

    public void setPriceGoods(long priceGoods) {
        this.priceGoods = priceGoods;
    }

    public String getInfomation() {
        return information;
    }

    public void setInfomation(String infomation) {
        this.information = infomation;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }
    
       public Club getClub() {
        return club;
    }

    public void setClub(Club club) {
        this.club = club;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 59 * hash + (this.goodsId != null ? this.goodsId.hashCode() : 0);
        hash = 59 * hash + (this.nameGoods != null ? this.nameGoods.hashCode() : 0);
        hash = 59 * hash + (int) (this.priceGoods ^ (this.priceGoods >>> 32));
        hash = 59 * hash + (this.information != null ? this.information.hashCode() : 0);
        hash = 59 * hash + (this.image != null ? this.image.hashCode() : 0);
        hash = 59 * hash + (this.category != null ? this.category.hashCode() : 0);
        hash = 59 * hash + (this.club != null ? this.club.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Goods other = (Goods) obj;
        if (this.goodsId != other.goodsId && (this.goodsId == null || !this.goodsId.equals(other.goodsId))) {
            return false;
        }
        if ((this.nameGoods == null) ? (other.nameGoods != null) : !this.nameGoods.equals(other.nameGoods)) {
            return false;
        }
        if (this.priceGoods != other.priceGoods) {
            return false;
        }
        if ((this.information == null) ? (other.information != null) : !this.information.equals(other.information)) {
            return false;
        }
        if ((this.image == null) ? (other.image != null) : !this.image.equals(other.image)) {
            return false;
        }
        if (this.category != other.category && (this.category == null || !this.category.equals(other.category))) {
            return false;
        }
        if (this.club != other.club && (this.club == null || !this.club.equals(other.club))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Goods{" + "goodsId=" + goodsId + ", nameGoods=" + nameGoods + ", priceGoods=" + priceGoods + ", infomation=" + information + ", image=" + image + ", category=" + category + ", club=" + club + '}';
    }

    
    

}
