
package com.lms.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.lms.domain.LabListVO;
import com.lms.dto.AuthDTO;
import com.lms.service.LabListService;
import com.lms.service.UserService;

@Controller
@RequestMapping("/main/*")
public class LabListController {

   private static final Logger logger = LoggerFactory.getLogger(LabListController.class);
   private static final String LAB = "lab";

   @Inject
   private UserService userService;

   @Inject
   private LabListService service;

   /*// 메인에서 신청팝업창
   @RequestMapping(value = "/labJoin", method = RequestMethod.GET)
   public void labJoinGET(LabListVO labList, Model model) throws Exception {
      model.addAttribute("joinTime", service.getTime());
      logger.info("labJoin get..............");

   }

   // 신청팝업창에서 값입력
   @RequestMapping(value = "/labJoin", method = RequestMethod.POST)
   public String labJoinPOST(LabListVO labList, Model model, RedirectAttributes rttr) throws Exception {

      logger.info("labJoin..............신청");
      logger.info(labList.toString());

      service.labJoin(labList);

      // addFlashAttribute ==> 휘발성
      rttr.addFlashAttribute("result", "신청되었습니다.");
      // redirect:/ /는 homeController에서 @RequestMapping(value = "/") 과 같다.
      return "redirect:/";

   }*/
   
      // 메인에서 참여팝업창
      @RequestMapping(value = "/labApply", method = RequestMethod.GET)
      public void labApplyGET(LabListVO labList, Model model) throws Exception {
         model.addAttribute("applyTime", service.getTime());
         logger.info("labJoin get..............");

      }

      // 참여팝업창에서 값입력
      @RequestMapping(value = "/labApply", method = RequestMethod.POST)
      public String labApplyPOST(LabListVO labList, Model model, RedirectAttributes rttr, HttpServletRequest request) throws Exception {

         logger.info("labApply..............참여");
         logger.info(labList.toString());
         
         service.labApply(labList);
         
         
         AuthDTO dto =  userService.checkAuth(labList.getUserNo());
         //참여중인 학생
         
         //세션열기
         HttpSession session = request.getSession();
         session.setAttribute(LAB, dto);
         
         logger.info("LAB : " + session.getAttribute(LAB));
         
         rttr.addFlashAttribute("result", "참여되었습니다.");
         
         
         return "redirect:/";

      }
      
      
      // 메인에서 반납팝업창
      @RequestMapping(value = "/labReturn", method = RequestMethod.GET)
      public void labReturnGET(@RequestParam("myLabListNo") String myLabListNo, @RequestParam("myLabNo") String myLabNo , LabListVO labList, Model model) throws Exception {
      model.addAttribute("returnTime", service.getTime());
         logger.info("labJoin get..............");
      }
      
      // 반납팝업창에서 반납하기(종료시간 확인 후)
      @RequestMapping(value = "/labReturn", method = RequestMethod.POST)
      public String labReturnPOST(LabListVO labList, RedirectAttributes rttr) throws Exception{
         
         service.labReturn(labList);
         rttr.addFlashAttribute("result", "반납되었습니다.");
         
         return "redirect:/";
      }
   
}