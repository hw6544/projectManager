package com.bf.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bf.aop.LogAspect;
import com.bf.main.service.MainService;

/**
 * @Date 2018. 2. 4.
 * @Author 박성호
 * @Description
 */
@Controller
public class MainController {
	@Autowired
	private MainService mainService;

	/**
	 * 메인 > 전체분야 > 카테고리 페이지
	 */
	@RequestMapping(value = "/categoryAll/categoryAll.do")
	public String categorytAll(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("categorytAll()");
		return "categoryAll/categoryAll.main";
	}

	/**
	 * 메인 > 검색창 폼 > 검색 결과 페이지
	 */
	@RequestMapping(value = "/main/mainSearch.do", method = RequestMethod.POST)
	public String mainSearch(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("mainSearch()");
		return "main/mainSearch.main";
	}

	/**
	 * 메인 > 로그인
	 */
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String login(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "categoryAll/categoryAll.main";
	}
	
	/**
	 * 헤더 > 카트
	 */
	@RequestMapping(value="/cart/cart.do", method=RequestMethod.GET)
	public String cart(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "cart/cart.main";
	}
	
	/**
	 * 헤더 > 위시리스트
	 */
	@RequestMapping(value="/cart/wishlist.do", method=RequestMethod.GET)
	public String wishlist(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "cart/wishlist.main";
	}
	
	/**
	 * 헤더 > 카트 > 구매
	 */
	@RequestMapping(value="/order/order.do", method=RequestMethod.GET)
	public String order(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "order/order.main";
	}
	
	/**
	 * 헤더 > 카트 > 구매 완료
	 */
	@RequestMapping(value="/order/orderOk.do", method=RequestMethod.GET)
	public String orderOk(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "order/orderOk.main";
	}
	
	/**
	 * 선물 메인
	 */
	@RequestMapping(value="/present/present.do", method=RequestMethod.GET)
	public String present(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "present/present.main";
	}
	
	/**
	 * 선물 완료
	 */
	@RequestMapping(value="/present/presentOk.do", method=RequestMethod.GET)
	public String presentOk(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "present/presentOk.main";
	}
	
	/**
	 * 선물 결제
	 */
	@RequestMapping(value="/present/presentPay.do", method=RequestMethod.GET)
	public String presentPay(HttpServletRequest request, HttpServletResponse response) {
		LogAspect.info("login()");
		request.getSession().setAttribute("userInfoId", "manager");
		return "present/presentPay.main";
	}
	
}
