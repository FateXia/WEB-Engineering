package Action;
import java.util.*;
import com.opensymphony.xwork2.*;
public class GetMyCourseAction extends BaseAction{
	public Map getCourse(){
		String uid = (String)getSession().get("uid");	//�õ���½�û���ID
		String sql = "select dtg.TGID tgid,TGName gname from "+
			"DY_Topic_Group dtg,DY_TU dt where dt.TGID="+
			"dtg.TGID and dt.UID="+uid;		//�õ��û�ѡ���б��SQL���
		return dbu.getCourse(sql);
	}
	@Override
	public String execute()throws Exception{
		return SUCCESS;
	}
}