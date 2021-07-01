package com.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.io.Serializable;
import java.util.List;

@Setter @Getter @ToString
public class Book implements Serializable {
    private Integer bid;
    private String name;
    private String type;
    private String writer;
    private String pub;
}
