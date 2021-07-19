package ptit.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("home")
	public String home(ModelMap model) {

		return "home";
	}
	@RequestMapping("home/login")
	public String login(ModelMap model) {

		return "home/login";
	}
	@RequestMapping("home/profile")
	public String profile(ModelMap model) {

		return "home/profile";
	}
	@RequestMapping("home/question")
	public String question(ModelMap model) {

		return "home/question";
	}
	@RequestMapping("home/test")
	public String test(ModelMap model) {

		return "home/test";
	}
	@RequestMapping("home/account")
	public String account(ModelMap model) {

		return "home/account";
	}
	@RequestMapping("home/history")
	public String history(ModelMap model) {

		return "home/history";
	}
	@RequestMapping("home/forgot")
	public String forgot(ModelMap model) {

		return "home/forgot";
	}
	@RequestMapping("home/index")
	public String index(ModelMap model) {

		return "home/index";
	}
	@RequestMapping("home/quiz/{ID}")
	public String quiz(ModelMap model) {

		return "home/quiz";
	}
	@RequestMapping("home/practice/{ID}")
	public String practice(ModelMap model) {

		return "home/practice";
	}
	@RequestMapping("home/testlist")
	public String testlist(ModelMap model) {

		return "home/testlist";
	}
	@RequestMapping("home/result={ID}/{RS}")
	public String result(ModelMap model) {

		return "home/result";
	}
	@RequestMapping("home/favorite")
	public String favorite(ModelMap model) {

		return "home/favorite";
	}
	@RequestMapping("home/review/{ID}")
	public String review(ModelMap model) {

		return "home/review";
	}
	@RequestMapping("home/changepw")
	public String changepw(ModelMap model) {

		return "home/changepw";
	}
	//Insert Question
	@RequestMapping("home/types/type1")
	public String type1(ModelMap model) {

		return "home/types/type1";
	}
	@RequestMapping("home/types/type2")
	public String type2(ModelMap model) {

		return "home/types/type2";
	}
	@RequestMapping("home/types/type3")
	public String type3(ModelMap model) {

		return "home/types/type3";
	}
	@RequestMapping("home/types/type3-add")
	public String type3add(ModelMap model) {

		return "home/types/type3-add";
	}
	@RequestMapping("home/types/type4")
	public String type4(ModelMap model) {

		return "home/types/type4";
	}
	@RequestMapping("home/types/type4-add")
	public String type4add(ModelMap model) {

		return "home/types/type4-add";
	}
	@RequestMapping("home/types/type5")
	public String type5(ModelMap model) {

		return "home/types/type5";
	}
	@RequestMapping("home/types/type6")
	public String type6(ModelMap model) {

		return "home/types/type6";
	}
	@RequestMapping("home/types/type6-add")
	public String type6add(ModelMap model) {

		return "home/types/type6-add";
	}
	@RequestMapping("home/types/type7")
	public String type7(ModelMap model) {

		return "home/types/type7";
	}
	@RequestMapping("home/types/type7-add")
	public String type7add(ModelMap model) {

		return "home/types/type7-add";
	}
	@RequestMapping("home/types/type8")
	public String type8(ModelMap model) {

		return "home/types/type8";
		
	}
	@RequestMapping("home/types/type9")
	public String type9(ModelMap model) {

		return "home/types/type9";
	}
	@RequestMapping("home/types/type10")
	public String type10(ModelMap model) {

		return "home/types/type10";
	}
	@RequestMapping("home/types/type10-add")
	public String type10add(ModelMap model) {

		return "home/types/type10-add";
	}
	@RequestMapping("home/types/type11")
	public String type11(ModelMap model) {

		return "home/types/type11";
	}
	//Update Question
	@RequestMapping("home/update/updatequestion")
	public String updatequestion(ModelMap model) {

		return "home/update/updatequestion";
	}
	@RequestMapping("home/update/type1/{ID}")
	public String updatequestiontype1(ModelMap model) {

		return "home/update/type1";
	}
	@RequestMapping("home/update/type2/{ID}")
	public String updatequestiontype2(ModelMap model) {

		return "home/update/type2";
	}
	@RequestMapping("home/update/type3/{ID}")
	public String updatequestiontype3(ModelMap model) {

		return "home/update/type3";
	}
	@RequestMapping("home/update/type4/{ID}")
	public String updatequestiontype4(ModelMap model) {

		return "home/update/type4";
	}
	@RequestMapping("home/update/type5/{ID}")
	public String updatequestiontype5(ModelMap model) {

		return "home/update/type5";
	}
	@RequestMapping("home/update/type6/{ID}")
	public String updatequestiontype6(ModelMap model) {

		return "home/update/type6";
	}
	@RequestMapping("home/update/type7/{ID}")
	public String updatequestiontype7(ModelMap model) {

		return "home/update/type7";
	}
	@RequestMapping("home/update/type8/{ID}")
	public String updatequestiontype8(ModelMap model) {

		return "home/update/type8";
	}
	@RequestMapping("home/update/type9/{ID}")
	public String updatequestiontype9(ModelMap model) {

		return "home/update/type9";
	}
	@RequestMapping("home/update/type10/{ID}")
	public String updatequestiontype10(ModelMap model) {

		return "home/update/type10";
	}
	@RequestMapping("home/update/type11/{ID}")
	public String updatequestiontype11(ModelMap model) {

		return "home/update/type11";
	}
	//Insert Test
	@RequestMapping("home/test-management/test-insert")
	public String testinsert(ModelMap model) {

		return "home/test-management/test-insert";
	}
	@RequestMapping("home/test-management/test-insert-add")
	public String testinsertadd(ModelMap model) {

		return "home/test-management/test-insert-add";
	}
	@RequestMapping("home/test-management/test-update")
	public String testupdate(ModelMap model) {

		return "home/test-management/test-update";
	}
	@RequestMapping("home/test-management/test-update-add/{ID}")
	public String testupdateadd(ModelMap model) {

		return "home/test-management/test-update-add";
	}
}
