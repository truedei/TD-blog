package com.truedei.blog.entity;

/**
 * Created by weizp-a on 2018/8/6.
 */

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import org.apache.ibatis.session.RowBounds;

import java.util.List;

@ApiModel
public class PageBean<T>
{

    public static final Integer MAX_PAGE_SIZE = 500;// 每页最大记录数限制

    @ApiModelProperty(hidden=true)
    private Integer searchMaxRecord = null; //用于search时返回最大的记录数，默认是100

    @ApiModelProperty(hidden=true)
    private Integer start = 0;// 当前记录数

    @ApiModelProperty(dataType = "Integer",example = "1",value="当前页码")
    private Integer pageNumber = 1; // 当前页码

    @ApiModelProperty(dataType = "Integer",example = "10",value="每页记录数")
    private Integer pageSize = 10; // 每页记录数

    @ApiModelProperty(hidden=true)
    private Integer totalCount = 0; // 总记录数

    @ApiModelProperty(hidden=true)
    private Integer pageCount = 0; // 总页数

    @ApiModelProperty(hidden=true)
    private Integer offset = 0; //分页偏移量

    @ApiModelProperty(hidden=true)
    private Integer end = 0; //sorted set 查询截止值：pageNumber*pageSize - 1

    @ApiModelProperty(hidden=true)
    private T dto; // 查询条件对象

    @ApiModelProperty(hidden=true)
    private List<T> data; // 查询结果数据data

    @ApiModelProperty(hidden=true)
    private String orderBy;// 排序字段

    @ApiModelProperty(hidden=true)
    private OrderType orderType = OrderType.desc;// 排序方式


    public PageBean() {
        this.start = 0;
        this.pageSize = 10;
        this.pageCount = 0;
        this.pageCount = 0;
        this.pageNumber = 1;
    }

    public PageBean(T dto) {
        this.start = 0;
        this.pageSize = 10;
        this.pageCount = 0;
        this.pageCount = 0;
        this.pageNumber = 1;
        this.dto = dto;

    }

    public PageBean(Integer start, Integer limit) {
        this.start = start;
        this.pageSize = limit;
        this.pageCount = 0;
        this.pageCount = 0;
        this.pageNumber = 1;
    }

    // 排序方式
    public enum OrderType {
        asc, desc
    }

    public Integer getPageNumber() {
        return pageNumber;
    }

    public Integer getStart() {
        return this.start;
    }

    public void setPageNumber(Integer pageNumber) {
        if (pageNumber < 1) {
            pageNumber = 1;
        }
        this.pageNumber = pageNumber;
        this.start = pageSize * (pageNumber - 1);

    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
        this.start = pageSize * (pageNumber - 1);
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
        this.pageCount  = this.totalCount % this.getPageSize() ==0 ? this.totalCount / this.getPageSize() : this.totalCount / this.getPageSize()  + 1;
    }

    public Integer getPageCount() {
        return this.pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public void setStart(Integer start) {
        this.start = start;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public T getDto() {
        return dto;
    }

    public void setDto(T dto) {
        this.dto = dto;
    }

    public String getOrderBy() {
        return orderBy;
    }

    public void setOrderBy(String orderBy) {
        this.orderBy = orderBy;
    }

    public OrderType getOrderType() {
        return orderType;
    }

    public void setOrderType(OrderType orderType) {
        this.orderType = orderType;
    }

    public Integer getOffset() {
        return pageSize * (pageNumber - 1);
    }

    public Integer getEnd() {
        return pageSize * pageNumber - 1;
    }
    public Integer getSearchMaxRecord() {
        return searchMaxRecord;
    }

    public void setSearchMaxRecord(Integer searchMaxRecord) {
        this.searchMaxRecord = searchMaxRecord;
    }
    @Override
    public String toString() {
        return "PageBean{" +
                "pageNumber=" + pageNumber +
                ", pageSize=" + pageSize +
                ", pageCount=" + pageCount +
                ", searchMaxRecord=" + searchMaxRecord +
                ", dto=" + dto +
                ", orderBy='" + orderBy + '\'' +
                ", orderType=" + orderType +
                '}';
    }
}
