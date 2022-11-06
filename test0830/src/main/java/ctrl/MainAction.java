package ctrl;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.BoardDAO;
import board.BoardSet;
import board.BoardVO;

public class MainAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		BoardDAO dao=new BoardDAO();
		BoardVO vo=new BoardVO();
		int cnt;
		boolean flag=true;
		if(request.getParameter("cnt")==null){ // main페이지 첫 진입
			cnt=2; // 초기 상태에서 보여줄 게시물의 갯수
			vo.setCnt(cnt);
		}else{ // main페이지에서 더보기 요청
			cnt=Integer.parseInt(request.getParameter("cnt"));
			vo.setCnt(cnt);
		}
		
		ArrayList<BoardSet> datas=dao.selectAll(vo);
		vo.setCnt(cnt+1);
		ArrayList<BoardSet> datasNext=dao.selectAll(vo);
		request.setAttribute("datas", datas);
		request.setAttribute("cnt", cnt);
		if(datas.size()!=datasNext.size()){ // main에서 보낸 cnt의 값과 글 갯수가 같다면,
		request.setAttribute("more", flag);
		}else{
			flag=false;
			request.setAttribute("more",flag);
		}
		ActionForward forward=new ActionForward();
		forward.setPath("/main.jsp");
		forward.setRedirect(false);
		return forward;
	}
	
}


 
 

