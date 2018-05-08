package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import util.StringUtil;
import dao.CategoryGrammarDao;
import dao.ExaminationDao;
import dao.GrammarDao;
import dao.MemberDao;
import dao.VocaburalyDao;
import dao.VocaburalysDao;
import entity.CategoryVocabulary;
import entity.Vocabulary;
import entity.categorygrammar;
import entity.grammar;
import entity.member;

@Controller
public class PublicIndexController {
	@Autowired
	private ExaminationDao examinationDao;
	@Autowired
	private MemberDao memberDao;
	
	@Autowired
	private StringUtil stringUtil;
	
	@Autowired
	private VocaburalyDao categoryVocabulary;
	
	@Autowired
	private VocaburalysDao vocaburalysDao;
	
	@Autowired
	private CategoryGrammarDao categoryGrammarDao;
	
	@Autowired
	private GrammarDao grammarDao;
	
	@RequestMapping("")
	public String index(ModelMap modelMap,HttpSession session,HttpServletRequest request){
		modelMap.addAttribute("listexamlistening",examinationDao.getExaminationListenLimit());
		modelMap.addAttribute("listexamreading",examinationDao.getExaminationReadingLimit());
		modelMap.addAttribute("listexamsumary",examinationDao.getExaminationSumaryLimit());
		modelMap.addAttribute("categoryvocabulary",categoryVocabulary.getcategoryvocabularyLimit());
		modelMap.addAttribute("categorygrammar",categoryGrammarDao.getcategorygrammarLimit());
		session.setAttribute("newmember",memberDao.getAllItemsLimit());
		session.setAttribute("allmember", memberDao.countItem());
		return "public.index.home";
	}
	
	@RequestMapping("{id}")
	public String indexss(ModelMap modelMap,HttpSession session,HttpServletRequest request,@PathVariable("id") String id){
		modelMap.addAttribute("listexamlistening",examinationDao.getExaminationListenLimit());
		modelMap.addAttribute("listexamreading",examinationDao.getExaminationReadingLimit());
		modelMap.addAttribute("listexamsumary",examinationDao.getExaminationSumaryLimit());
		modelMap.addAttribute("categoryvocabulary",categoryVocabulary.getcategoryvocabularyLimit());
		modelMap.addAttribute("categorygrammar",categoryGrammarDao.getcategorygrammarLimit());
		session.setAttribute("newmember",memberDao.getAllItemsLimit());
		session.setAttribute("allmember", memberDao.countItem());
		return "public.index.home";
	}
	
	@RequestMapping("/public")
	public String indexs(ModelMap modelMap,HttpSession session,HttpServletRequest request){
		modelMap.addAttribute("listexamlistening",examinationDao.getExaminationListenLimit());
		modelMap.addAttribute("listexamreading",examinationDao.getExaminationReadingLimit());
		modelMap.addAttribute("listexamsumary",examinationDao.getExaminationSumaryLimit());
		modelMap.addAttribute("categoryvocabulary",categoryVocabulary.getcategoryvocabularyLimit());
		modelMap.addAttribute("categorygrammar",categoryGrammarDao.getcategorygrammarLimit());
		session.setAttribute("newmember",memberDao.getAllItemsLimit());
		session.setAttribute("allmember", memberDao.countItem());
		return "public.index.home";
	}
	
	@RequestMapping("/public/vocabulary")
	public String vocabulary(ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			List<CategoryVocabulary> list = categoryVocabulary.getAll();
			modelMap.addAttribute("cateVocal", list);
			return "public.index.vocabulary";
		}
		return "redirect:/";
	}
	
	@RequestMapping("/public/vocabulary/{id}")
	public String readedit(@PathVariable("id") String categoryvocabularyid, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			List<Vocabulary> list = vocaburalysDao.getItem(categoryvocabularyid);
			modelMap.addAttribute("vocal", list);
			CategoryVocabulary listCate = categoryVocabulary.getItem(categoryvocabularyid);
			modelMap.addAttribute("cateVocal", listCate);
			return "public.index.vocabulary.detail";
		}
		return "redirect:/";
	}
	@RequestMapping("/public/grammar")
	public String grammar(ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			List<categorygrammar> list = categoryGrammarDao.getAll();
			modelMap.addAttribute("categram", list);
			return "public.index.categorygrammar";
		}
		return "redirect:/";
	}
	
	
	@RequestMapping("/public/grammar/{categorygrammarid}")
	public String detail(@PathVariable("categorygrammarid") String categorygrammarid, ModelMap modelMap,HttpSession session){
		member member = (entity.member) session.getAttribute("objmember");
		if (member != null){
			List<grammar> list = grammarDao.getItem(categorygrammarid);
			modelMap.addAttribute("grammar", list);
			categorygrammar objcate  = categoryGrammarDao.getItem(categorygrammarid);
			modelMap.addAttribute("cateGrammar", objcate);
			return "public.index.categorygrammar.detail";
		}
		return "redirect:/";
	}
}
