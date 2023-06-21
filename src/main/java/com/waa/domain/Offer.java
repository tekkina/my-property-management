package com.waa.domain;

import lombok.Data;
import lombok.Builder;
import jakarta.persistence.*;
import java.time.LocalDateTime;
import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;


@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "offers_table")
public class Offer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;
    @OneToOne
    private User customer;
    private double price;
    private LocalDateTime postedDateTime;
    @Enumerated(EnumType.STRING)
    private OfferStatus offerStatus;

}
