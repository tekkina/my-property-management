package com.waa.repository;

import com.waa.domain.Property;
import com.waa.domain.request.PropertyCriteriaRequest;
import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;
import jakarta.persistence.criteria.CriteriaBuilder;
import jakarta.persistence.criteria.CriteriaQuery;
import jakarta.persistence.criteria.Predicate;
import jakarta.persistence.criteria.Root;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
@RequiredArgsConstructor
public class PropertyCriteriaRepository {
    private final EntityManager entityManager;
    public List<Property> findAllByCriteria(PropertyCriteriaRequest propertyCriteriaRequest){
        CriteriaBuilder criteriaBuilder = entityManager.getCriteriaBuilder();
        CriteriaQuery<Property> criteriaQuery = criteriaBuilder.createQuery(Property.class);
        List<Predicate> predicates = new ArrayList<>();
        Root<Property> root = criteriaQuery.from(Property.class);
        if (propertyCriteriaRequest.description() != null){
            Predicate descriptionPredicate = criteriaBuilder.like(root.get("description"),"%" + propertyCriteriaRequest.description() + "%");
            predicates.add(descriptionPredicate);
        }
        if (propertyCriteriaRequest.minPrice() != null) {
            Predicate minPricePredicate = criteriaBuilder.greaterThanOrEqualTo(root.get("price"), propertyCriteriaRequest.minPrice());
            predicates.add(minPricePredicate);
        }
        if (propertyCriteriaRequest.maxPrice() != null) {
            Predicate maxPricePredicate = criteriaBuilder.lessThanOrEqualTo(root.get("price"), propertyCriteriaRequest.maxPrice());
            predicates.add(maxPricePredicate);
        }
        criteriaQuery.where(criteriaBuilder.and(predicates.toArray(new Predicate[0])));
        TypedQuery<Property> query = entityManager.createQuery(criteriaQuery);
        return query.getResultList();
    }

}