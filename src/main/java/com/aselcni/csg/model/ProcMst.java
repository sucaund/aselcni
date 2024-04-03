package com.aselcni.csg.model;

import lombok.Data;

@Data
public class ProcMst {
	private String procCd; // PROC_CD에 해당하는 필드
    private String procNm; // PROC_NM에 해당하는 필드
    private String remark; // REMARK에 해당하는 필드
    private Integer useFlag; // USE_FLAG에 해당하는 필드, tinyint는 Java에서 Integer로 매핑
    private String procEmpId; // PROC_EMP_ID에 해당하는 필드
    private String procRegdate; // PROC_REGDATE에 해당하는 필드
    private String procUpdate; // PROC_UPDATE에 해당하는 필드
    private Integer procDeleteChk; // PROC_DELETE_CHK에 해당하는 필드, tinyint는 Java에서 Integer로 매핑

}
