package com.mid.mvc.domain;

import lombok.Data;

@Data
public class Criteria {
    private int pageNum;      // 현재 페이지 번호
    private int amount;       // 페이지당 항목 수
    private String keyword;   // 검색어 (선택 사항)

    public Criteria() {
        this(1, 10);  // 기본 생성자로 페이지 번호를 1, 페이지당 항목 수를 10으로 초기화
    }

    public Criteria(int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }

    // Getter 및 Setter 메서드는 필요에 따라 추가할 수 있습니다.

    public int getPageNum() {
        return pageNum;
    }

    public void setPageNum(int pageNum) {
        this.pageNum = pageNum;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
}
