/*
 * package com.dining.controller.dining;
 * 
 * import javax.servlet.http.HttpServletRequest; import
 * javax.servlet.http.HttpServletResponse;
 * 
 * import com.dining.common.SuperClass; import
 * com.dining.controller.client.ClientInsertController; import
 * com.dining.controller.client.ClientLoginController; import
 * com.dining.model.bean.Client; import com.dining.model.dao.ClientDao;
 * 
 * public class DiningInsertController extends SuperClass{ private final String
 * PREFIX = "mainpage/";
 * 
 * @Override public void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws Exception { super.doGet(request, response);
 * 
 * // 라디오 버튼과 체크 박스는 데이터 베이스에서 읽어 동적으로 채웁니다.
 * 
 * FillItemDao fdao = new FillItemDao(); List<FillItem> genderList =
 * fdao.getDataList("members", "gender"); List<FillItem> marriageList =
 * fdao.getDataList("members", "marriage"); List<FillItem> hobbyList =
 * fdao.getDataList("members", "hobby");
 * 
 * request.setAttribute("genderList", genderList);
 * request.setAttribute("marriageList", marriageList);
 * request.setAttribute("hobbyList", hobbyList);
 * 
 * 
 * super.gotoPage(PREFIX + "main.jsp"); }
 * 
 * @Override public void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws Exception { super.doPost(request, response);
 * 
 * if (clientinfo != null) {
 * 
 * ClientDao dao = new ClientDao(); Client bean = new Client();
 * 
 * bean.setC_id(request.getParameter("C_id"));
 * bean.setPassword(request.getParameter("Password"));
 * bean.setName(request.getParameter("Name"));
 * bean.setGender(request.getParameter("Gender"));
 * bean.setEmail(request.getParameter("Email"));
 * bean.setBirthday(request.getParameter("Birthday"));
 * bean.setTelephone(request.getParameter("Telephone"));
 * 
 * }else { alert('클라이언트 회원가입을 먼저 진행하셔야 합니다.'); super.gotoPage(); }
 * 
 * // int cnt = dao.insertData(bean);
 * 
 * if(cnt == 1){ // 인서트 성공 // 로그인 컨트롤러의 doPost() 메소드를 호출하면 가입과 동시에 로그인하는 효과를
 * 봅니다. super.gotoPage(PREFIX + "main.jsp");
 * 
 * }else{ // 인서트 실패 new DiningInsertController().doGet(request, response); } } }
 * 
 * }
 */
