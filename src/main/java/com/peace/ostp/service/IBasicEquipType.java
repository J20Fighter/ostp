package com.peace.ostp.service;

import java.util.List;
import java.util.Map;

import com.peace.ostp.domain.BasicEquipType;
import com.peace.ostp.domain.User;
import com.peace.ostp.util.Page;


/*import com.extr.domain.Application;
import com.extr.domain.ExamHistory;
import com.extr.domain.Subscribe;
import com.extr.domain.User;
import com.extr.domain.Version;
import com.extr.util.Page;*/

/**
 * @author Ocelot
 * @date 2014年6月8日 下午5:52:55
 */
public interface IBasicEquipType {
	
	int deleteEquipTypeByid(String equiptypeid);

	int insertEquipType(BasicEquipType basicEquipType);

	public BasicEquipType getEquipTypeById(String equiptypeid);
    
    public List<BasicEquipType> getAllEquipType(Page<BasicEquipType> page);

    public int updateEquipType(BasicEquipType basicEquipType);

	public void deleteEquipTypeByIds(String equipTypeIds);

	public List<BasicEquipType> getSearchList(Map<String, Object> map);
}
