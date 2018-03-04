package com.hnqj.services;

import com.hnqj.core.PageData;

import com.hnqj.model.Graph;

import javax.annotation.Resource;
import com.hnqj.dao.DaoSupportImpl;
import org.springframework.stereotype.Service;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import java.util.List;
@Service("graph")
public class GraphServices {

protected final Log logger = LogFactory.getLog(getClass());

	@Resource(name = "daoSupportImpl")

	private DaoSupportImpl daoSupport; 

	public int addGraph(PageData pageData) {
	 logger.info("增加Graph");
	 int iFlag =0; 
	 try { 
		iFlag = (int) daoSupport.insert("GraphMapper.addGraph",pageData);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 iFlag=0; 
	}
	 return iFlag; 
	}
	public int delGraphByFid(String fid) {
	 logger.info("删除Graph");
	 int iFlag =0; 
	 try { 
		iFlag = (int) daoSupport.delete("GraphMapper.deleteGraphByFid",fid);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 iFlag=0; 
	}
	 return iFlag; 
	}
	public int updateGraph(PageData pageData) {
	 logger.info("修改Graph");
	 int iFlag =0; 
	 try { 
		iFlag = (int) daoSupport.update("GraphMapper.updateGraph",pageData);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 iFlag=0; 
	}
	 return iFlag; 
	}
	public Graph getGraphforId(String fid) {
	 logger.info("通过ID查询Graph");
	Graph	graph=null;
	 try { 
		graph = (Graph) daoSupport.findForObject("GraphMapper.getGraphForId",fid);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 graph=null; 
	}
	 return graph; 
	}
	public List<Graph> getAllGraph(PageData pageData) {
	 logger.info("分页查询Graph");
	List<Graph>	graphList=null;
	 try { 
		graphList = (List<Graph>) daoSupport.findForList("GraphMapper.getAllGraph",pageData);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 graphList=null; 
	}
	 return graphList; 
	}
	public List<Graph> selectGraphList() {
	 logger.info("查询所有Graph");
	List<Graph>	graphList=null;
	 try { 
		graphList = (List<Graph>) daoSupport.findForList("GraphMapper.selectGraphList",null);
	 }catch (Exception e){ 
	 e.printStackTrace(); 
	 graphList=null; 
	}
	 return graphList; 
	}

	public List<Graph> getGraphByUserId(String userid) {
		logger.info("查询个人所有Graph");
		List<Graph>	graphList=null;
		try {
			graphList = (List<Graph>) daoSupport.findForList("GraphMapper.getGraphByUserId",userid);
		}catch (Exception e){
			e.printStackTrace();
			graphList=null;
		}
		return graphList;
	}
}
