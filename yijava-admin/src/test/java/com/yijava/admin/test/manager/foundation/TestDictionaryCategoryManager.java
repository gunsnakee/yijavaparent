package com.yijava.admin.test.manager.foundation;

import static org.junit.Assert.assertEquals;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.yijava.admin.entity.foundation.DictionaryCategory;
import com.yijava.admin.service.foundation.SystemDictionaryManager;
import com.yijava.admin.test.manager.ManagerTestCaseSupport;

/**
 * 测试字典类别管理所有方法
 * 
 * @author vincent
 *
 */
public class TestDictionaryCategoryManager extends ManagerTestCaseSupport {

	@Autowired
	private SystemDictionaryManager systemDictionaryManager;
	
	@Test
	public void testSaveDictionaryCategory() {
		DictionaryCategory category = new DictionaryCategory();
		category.setCode("test");
		category.setName("测试");
		category.setRemark("*");
		
		int beforeRow = countRowsInTable("TB_DICTIONARY_CATEGORY");
		systemDictionaryManager.saveDictionaryCategory(category);
		int afterRow = countRowsInTable("TB_DICTIONARY_CATEGORY");
		
		assertEquals(afterRow, beforeRow + 1);
	}

	@Test
	public void testDeleteDictionaryCategory() {
		
		int beforeRow = countRowsInTable("TB_DICTIONARY_CATEGORY");
		List<String> ids = new ArrayList<String>();
		ids.add("SJDK3849CKMS3849DJCK2039ZMSK0015");
		systemDictionaryManager.deleteDictionaryCategory(ids);
		int afterRow = countRowsInTable("TB_DICTIONARY_CATEGORY");
		
		assertEquals(beforeRow, afterRow + 1);
	}

	@Test
	public void testGetAllParentDictionaryCategories() {
		List<DictionaryCategory> result = systemDictionaryManager.getAllParentDictionaryCategories();
		assertEquals(3, result.size());
	}

	@Test
	public void testGetAllDictionaryCategories() {
		List<DictionaryCategory> result = systemDictionaryManager.getAllDictionaryCategories();
		assertEquals(4, result.size());
	}

}
