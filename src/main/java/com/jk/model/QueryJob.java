/**
 * Copyright (C), 2018-2018, jk有限公司
 * FileName: QueryJob
 * Author:  常路通
 * Date:     2018/5/15 17:24
 * Description: Job查询类
 * /**
 * Copyright (C), 2015-2018, XXX有限公司
 * FileName: QueryJob
 * Author:   chang
 * Date:     2018/5/15 17:24
 * Description: Job查询类
 * History:
 * <author>          <time>          <version>          <desc>
 * 作者姓名           修改时间           版本号              描述
 */
package com.jk.model;

import java.io.Serializable;
import java.util.List;

/**
 * 〈一句话功能简述〉<br> 
 * 〈Job查询类〉
 *
 * @author chang
 * @create 2018/5/15
 * @since 1.0.0
 */
public class QueryJob implements Serializable{
    private static final long serialVersionUID = 6151305382477082287L;
    private Integer page;
    private Integer total;
    private List<Job> rows;

    public Integer getPage() {
        return page;
    }

    public void setPage(Integer page) {
        this.page = page;
    }

    public Integer getTotal() {
        return total;
    }

    public void setTotal(Integer total) {
        this.total = total;
    }

    public List<Job> getRows() {
        return rows;
    }

    public void setRows(List<Job> rows) {
        this.rows = rows;
    }
}