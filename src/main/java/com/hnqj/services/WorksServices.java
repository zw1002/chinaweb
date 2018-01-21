package com.hnqj.services;

import com.hnqj.core.PageData;

import com.hnqj.model.Works;

import javax.annotation.Resource;
import com.hnqj.dao.DaoSupportImpl;
import org.springframework.stereotype.Service;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import java.util.List;
@Service("works")
public class WorksServices {

protected final Log logger = LogFactory.getLog(getClass());

	@Resource(name = "daoSupportImpl")

	private DaoSupportImpl daoSupport; 

	public int addWorks(PageData pageData) {
	 logger.info("增加Works");
	 int iFlag =0; 
	 try { 
		iFlag = (int) daoSupport.insert("WorksMapper.addWorks",pageData);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 iFlag=0; 
	}
	 return iFlag; 
	}
	public int delWorksByFid(String fid) {
	 logger.info("删除Works");
	 int iFlag =0; 
	 try { 
		iFlag = (int) daoSupport.delete("WorksMapper.deleteWorksByFid",fid);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 iFlag=0; 
	}
	 return iFlag; 
	}
	public int updateWorks(PageData pageData) {
	 logger.info("修改Works");
	 int iFlag =0; 
	 try { 
		iFlag = (int) daoSupport.update("WorksMapper.updateWorks",pageData);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 iFlag=0; 
	}
	 return iFlag; 
	}
	public Works getWorksforId(String fid) {
	 logger.info("通过ID查询Works");
	Works	works=null;
	 try { 
		works = (Works) daoSupport.findForObject("WorksMapper.selectByPrimaryKey",fid);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 works=null; 
	}
	 return works; 
	}
	public List<Works> getAllWorks(PageData pageData) {
	 logger.info("分页查询Works");
	List<Works>	worksList=null;
	 try { 
		worksList = (List<Works>) daoSupport.findForList("WorksMapper.getAllWorks",pageData);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 worksList=null; 
	}
	 return worksList; 
	}
	public List<Works> selectWorksList() {
	 logger.info("查询所有Works");
	List<Works>	worksList=null;
	 try { 
		worksList = (List<Works>) daoSupport.findForList("WorksMapper.selectWorksList",null);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 worksList=null; 
	}
	 return worksList; 
	}

	public List<Works> getWorksForTypeAndCount(PageData pageData) {
		logger.info("根据类别和个数查询Works");
		List<Works>	worksList=null;
		try {
			worksList = (List<Works>) daoSupport.findForList("WorksMapper.getWorksForTypeAndCount",pageData);
		}catch (Exception e){
			e.printStackTrace();
			worksList=null;
		}
		return worksList;
	}

	public List<Works> getWorksForMerchId(PageData pageData) {
		logger.info("会员作品推荐");
		List<Works>	worksList=null;
		try {
			worksList = (List<Works>) daoSupport.findForList("WorksMapper.getWorksForMerchId",pageData);
		}catch (Exception e){
			e.printStackTrace();
			worksList=null;
		}
		return worksList;
	}

	public List<Works> getWorksForUserId(PageData pageData) {
		logger.info("会员空间获取个人作品");
		List<Works>	worksList=null;
		try {
			worksList = (List<Works>) daoSupport.findForList("WorksMapper.getWorksForUserId",pageData);
		}catch (Exception e){
			e.printStackTrace();
			worksList=null;
		}
		return worksList;
	}

	public List<Works> getWorksForUserBestSellers(PageData pageData) {
		logger.info("会员近三个月热卖");
		List<Works>	worksList=null;
		try {
			worksList = (List<Works>) daoSupport.findForList("WorksMapper.getWorksForUserBestSellers",pageData);
		}catch (Exception e){
			e.printStackTrace();
			worksList=null;
		}
		return worksList;
	}

	public List<Works> getWorksForUserIdAndTime(PageData pageData) {
		logger.info("会员最新作品");
		List<Works>	worksList=null;
		try {
			worksList = (List<Works>) daoSupport.findForList("WorksMapper.getWorksForUserIdAndTime",pageData);
		}catch (Exception e){
			e.printStackTrace();
			worksList=null;
		}
		return worksList;
	}

	public List<Works> serchWorks(PageData pageData) {
		logger.info("作品搜索");
		List<Works>	worksList=null;
		try {

			worksList = (List<Works>) daoSupport.findForList("WorksMapper.serchWorks",pageData);
		}catch (Exception e){
			e.printStackTrace();
			worksList=null;
		}
		return worksList;
	}
}
