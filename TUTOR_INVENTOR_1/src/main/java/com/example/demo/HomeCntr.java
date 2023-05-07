package com.example.demo;



import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import com.example.demo.model.contact_form_1;
import com.example.demo.model.parentreg;
import com.example.demo.model.sendrequest_tutor;

import com.example.demo.model.add_book;
import com.example.demo.model.admin;

import com.example.demo.service.admin_ser;
import com.example.demo.service.book_ser;
import com.example.demo.service.contact_form_ser;
import com.example.demo.service.parent_reg_ser;
import com.example.demo.service.request_send_tr;
import com.example.demo.service.tutor_reg_ser;
import com.example.demo.model.tutorreg;

@Controller
public class HomeCntr {
	@Autowired
	
	parent_reg_ser ss;
	
	@Autowired
	tutor_reg_ser st;
	
	@Autowired
	contact_form_ser cs;
	
	@Autowired
	admin_ser as;
	
	@Autowired
	book_ser bs;
	
	@Autowired
	request_send_tr rt;
	
	
	
	
	
	@GetMapping("/")
	public String StartForm() {

		return "welcome";
	}
	@GetMapping("/login_parent")
	public String parent_log() {

		return "login_parent";

	}
		
	@GetMapping("/login_tutor")
	public String tutor_log() {

		return "login_tutor";

	}
		
		
		
		@GetMapping("/admin_login")
		public String admin() {
			return "admin_login";

		}
		
		@GetMapping("/reg_tutor")
		public String tuto() {
			return "reg_tutor";

			
		}
		@GetMapping("/reg_parent")
		public String para() {
			return "reg_parent";

			
		}
		
		
		
		@PostMapping("/reg")
		public String registrationForm(@ModelAttribute("s1") parentreg s1) {

			ss.reg_info(s1);

			return "account_success";
		}
		
		/*session for register parent*/
		
		 @GetMapping("/reg")
			public String reg(@ModelAttribute("k")  parentreg k, ModelMap model,HttpSession session) {
				if (session.getAttribute("parent")==null) {
					return"redirect:/login_parent";
					
				}
				
				
				return "parent_admin_dash";
				
		 }
		
		
		/*end session for register*/
		
		@PostMapping("/reg_tutor1")
		public String registration_tutor(@ModelAttribute("s1") tutorreg s1) {

			st.tutor_info(s1);

			return "account_success_1";
		}
		 
		
	
		/*session for register tutor*/
		
		 @GetMapping("/reg_tutor1")
			public String reg_tut(@ModelAttribute("k")  tutorreg k, ModelMap model,HttpSession session) {
				if (session.getAttribute("tutor")==null) {
					return"redirect:/login_tutor";
					
				}
				
				
				return "tutor_admin_dash";
		 }
		/*end session for register*/
		
		//when username and password same then login for parent
		@PostMapping("/loginvalidparent")
		public String loginvalidate(@ModelAttribute("tparent") parentreg tparent,HttpSession session,Model mo) {
			try {
				parentreg parentlog = ss.login(tparent.getEmail(), tparent.getPass());
				if (parentlog != null) {
					
					 session.setAttribute("parent_id", parentlog.getId());
					 session.setAttribute("email", parentlog.getEmail());
					session.setAttribute("parent", parentlog);
					return "redirect:/parent_admin_dash";
				}
			} catch (Exception e) {
				  mo.addAttribute("error", e.getMessage());
				  return "login_parent";
			}
			
			return "redirect:/login_parent";

		}
		 
		@GetMapping("/parent_admin_dash")
			public String parent_das(@ModelAttribute("pp")  parentreg pp, ModelMap model,HttpSession session) {
			List<parentreg> parent = ss.allparent(pp);
			model.addAttribute("parent", parent);
				if (session.getAttribute("parent")==null) {
					
					return"redirect:/login_parent";
					
				}
				

				
				return "parent_admin_dash";
				
		 }
		
		@GetMapping("/parentlogout")
		public String parentlogout(HttpSession session) {
			
			session.removeAttribute("parent");
			session.invalidate();
			return "redirect:/";
			
		}
		
		
		@PostMapping("/loginvalidtutor")
		public String logintutor(@ModelAttribute("ttutor") tutorreg ttutor,HttpSession session,Model mo) {
			try {
				
				tutorreg tutorlog=st.login_tutor(ttutor.getEmail(), ttutor.getPass());
				
				
				if(tutorlog!=null) {
					 session.setAttribute("tutor_id", tutorlog.getId());
					 
					session.setAttribute("tutor", tutorlog);
					return "tutor_admin_dash";
				}
				
			} catch (Exception e) {
				 mo.addAttribute("error", e.getMessage());
				  return "login_tutor";
			}
			return "login_tutor";
			
		}
		 @GetMapping("/tutor_admin_dash")
			public String tutor(@ModelAttribute("k")  tutorreg k, ModelMap model,HttpSession session) {
				if (session.getAttribute("tutor")==null) {
					return"redirect:/login_tutor";
					
				}
				
				
				return "tutor_admin_dash";
		 }
		
		/* this mapping is admin*/
		
		@PostMapping("/admin_1")
		public String adminlogin(@ModelAttribute("s") admin s, HttpSession session,@RequestParam("email")String email,@RequestParam("pass")String pass) {
		 
		   
		    if (email.equals("email")&&pass.equals("pass")) {
		      // Add session attribute for logged-in user
		      session.setAttribute("admins",email);
		      return "redirect:/admin_home";
		    }
		    
		 

		  return "admin_login";
		}
		
		@GetMapping("/admin_logout")
		public String adminlogou(HttpSession session) {
		  // Remove session attribute and invalidate session
		  session.removeAttribute("admins");
		  session.invalidate();
		  return "admin_login";
		}
		
	
		
		/*end admin mapping*/
		
		/*tutor edit mapping for tutor_admin page*/
		@GetMapping("/tutor_admin")
		public String tutoradmin(@ModelAttribute("er") tutorreg er, ModelMap model,HttpSession session) {
			List<tutorreg> tutor =st.allparent(er);
			model.addAttribute("tutor", tutor);
			if (session.getAttribute("admins")==null) {
				return"redirect:/admin_login";
				
			}
			return "tutor_admin";

		}
		@GetMapping("/edit_tutor")
		public String edit_tutor(@RequestParam("id") Integer id,ModelMap model) {
			tutorreg tutor=st.edit_tutor(id) ;
			model.addAttribute("tutor_ed", tutor);
			
			
			return "edit_tutor";
			
		}
		@PostMapping("/ed_tutor")
		public String editmethod(@ModelAttribute("t") tutorreg t) {
			st.savededit(t);
			
			
			return "redirect:/tutor_admin";
			
		}
		@GetMapping("/delete_tutorfirst")
		public String deleteparent(@RequestParam("id") Integer id) {
			st.delete_tutor(id);
			return"redirect:/tutor_admin" ;
			
		}
	
		
		
		/* endtutor edit mapping for tutor_admin page*/
	
		/*parent edit mapping for tutor_admin page*/
		
		@GetMapping("/parent_Admin_edit")
		public String parentadmin_edit(@ModelAttribute("ar") parentreg ar, ModelMap model,HttpSession session) {
			List<parentreg> parent = ss.allparent(ar);
			model.addAttribute("parent", parent);
			if (session.getAttribute("admins")==null) {
				
				
				return"redirect:/admin_login";
				
			}
			return "parent_Admin_edit";

		}
		
		
		
		@GetMapping("/edit_parent")
		public String edit_parent(@RequestParam("id") Integer id,ModelMap model) {
			parentreg parent=ss.edit_parent(id);
			model.addAttribute("parent_ed", parent);
			
			
			return "edit_parent";
			
		}
		@PostMapping("/ed_parent")
		public String editparent(@ModelAttribute("p") parentreg t) {
			ss.savededitparent(t);
			
			
			return "redirect:/parent_Admin_edit";
			
		}
		
		/*profile edit for parent page */
		
		@GetMapping("/edit_profile")
		public String edit_prof(@RequestParam("email") String email,ModelMap model) {
			
		
			
			parentreg parent=ss.edit_parentprofile(email);
			model.addAttribute("parent_ed", parent);
		
			
			return "edit_profile";
			
		}
		@PostMapping("/ed_prof")
		public String editpart(@ModelAttribute("p") parentreg p) {
			ss.savededitparent(p);
			
			
			return "redirect:/parent_admin_dash";
			
		}
		
		/*end profile edit for parent page */
		
		
		/*profile edit for tutor page */
		
		@GetMapping("/tutorprofile")
		public String edit_tutorprofile(@RequestParam("id") Integer id,ModelMap model) {
			tutorreg tutor=st.edit_tutor(id) ;
			model.addAttribute("tutor_ed", tutor);
			
			
			return "tutorprofile";
			
		}
		@PostMapping("/ed_tut")
		public String edittutorprofile(@ModelAttribute("t") tutorreg t) {
			st.savededit(t);
			
			
			return "redirect:/tutor_admin_dash";
			
		}
		
		/*end profile edit for tutor page */
		
		@GetMapping("/delete_parentfirst")
		public String deletetutor(@RequestParam("id") Integer id) {
			ss.delete_parent(id);
			return "redirect:/parent_Admin_edit" ;
			
		}
		
		/*end parent edit mapping for tutor_admin page*/
		
		@GetMapping("/tutorlogout")
		public String tutorlogout(HttpSession session) {
			session.removeAttribute("tutor");
			session.invalidate();
			
			return "redirect:/";
			
		}
		
		
		@GetMapping("/contact_form")
		public String contact(HttpSession session) {
			
			if(session.getAttribute("parent")== null) {
				return "redirect:/login_parent";
			}
			return "contact_form";
			 
		 }
		 @PostMapping("/contact")
		 public String contactus(@ModelAttribute("s1") contact_form_1 s1) {
			cs.contact_for(s1);
			return "contact_form";
			 
		 }
		 
		 /*book add database picture*/
		 
		 @PostMapping("/book_upload")
			public String uploadfile(@RequestParam("file") MultipartFile file, @ModelAttribute("eb") add_book eb) {

				try {
					String filename = file.getOriginalFilename();
					String path = "C:/TUTOR_INVENTOR/TUTOR_INVENTOR_1/Imagesave";
					byte[] filedata = file.getBytes();

					BufferedOutputStream bout = new BufferedOutputStream(new FileOutputStream(path + "/" + filename));
					bout.write(filedata);
					bout.flush();
					bout.close();

					eb.setFilename(filename);
					bs.upload_file(eb);

				
					return "redirect:/add_book";
				} catch (Exception e) {
					e.printStackTrace();
					return "Error uploading file: " + e.getMessage();

				}

			}

			
		 
		 /*end*/
		 
		 /*display data admin page*/
		 @GetMapping("/admin_home")
			public String admindashboard(ModelMap model, HttpSession session) {
			  // Check if session attribute exists
			  if (session.getAttribute("admins") == null) {
			    // User is not logged in, redirect to login page
			    return "redirect:/admin_login";
			  }

			  long totalparent = ss.totalparent();
			  
			  long totaltutor = st.totaltutor();
			 
			  long totalebook=bs.totalebook();
			  model.addAttribute("totalparent", totalparent);
			  model.addAttribute("totaltutor", totaltutor);
			  model.addAttribute("totalebook", totalebook);
			
			  return "admin_home";
			}
		 
		 
		 
		 
		/* @GetMapping("/parent_admin_dash")
			public String parentadmin(@ModelAttribute("pp") parentreg pp, ModelMap model,HttpSession session) {
				
				
				// Check if session attribute exists
				  if (session.getAttribute("admins") == null) {
				    // User is not logged in, redirect to login page
				    return "redirect:/admin_login";
				  }
				
				List<parentreg> parent = ss.allparent(pp);
				model.addAttribute("parent", parent);

				return "parent_admin_dash";

			}*/ 
		 
		 /*display ebook list and dowonload*/
		 @GetMapping("/ebook_list")
			public String ebook_list(@ModelAttribute("tu") add_book tu, ModelMap model,HttpSession session) {
				if (session.getAttribute("parent")==null) {
					return"redirect:/login_parent";
					
				}
				List<add_book> ebook_list = bs.ebooklist(tu);
				model.addAttribute("ebook_list", ebook_list);

				return "ebook_list";
		 }
		 
		 /*ebook list for tutuor*/
		 @GetMapping("/ebooklist_tutor")
			public String ebooklist_tutor(@ModelAttribute("tu") add_book tu, ModelMap model,HttpSession session) {
				if (session.getAttribute("tutor")==null) {
					return"redirect:/login_tutor";
					
				}
				List<add_book> ebook_list = bs.ebooklist(tu);
				model.addAttribute("ebook_list", ebook_list);

				return "ebooklist_tutor";
		 }
		 /* end ebook list for tutuor*/
		 
		 
		 
		 @GetMapping("/downloadebook")
			public void downloadFile(@RequestParam("name") String name, HttpServletResponse response) throws IOException {
			    String filePath = "C:/TUTOR_INVENTOR/TUTOR_INVENTOR_1/Imagesave/" + name;
			    File file = new File(filePath);

			    response.setContentType("application/octet-stream");
			    String extension = FilenameUtils.getExtension(name);
			    response.setHeader("Content-Disposition", "attachment; filename=\"" + name + "." + extension);
			    response.setContentLength((int) file.length());

			    InputStream inputStream = new BufferedInputStream(new FileInputStream(file));
			    OutputStream outputStream = response.getOutputStream();
			    byte[] buffer = new byte[1024];
			    int bytesRead;
			    while ((bytesRead = inputStream.read(buffer)) != -1) {
			        outputStream.write(buffer, 0, bytesRead);
			    }
			    outputStream.flush();
			    inputStream.close();
			}
			
		
		 /* end display ebook list and dowonload*/
		 
		 /*end display*/
		 /*session apply for add_book*/
		 @GetMapping("/add_book")
			public String addebok(HttpSession session) {
				if (session.getAttribute("admins")==null) {
					return"redirect:/admin_login";
					
				}
				
				return "add_book";

			}
		 
		/*session end*/
		 /*tutor request search /tutor list teacher in parent page*/
		 @GetMapping("/list_searching_tutor")
			public String tutor_list(HttpSession session) {
				if(session.getAttribute("parent")==null) {
					return"redirect:/login_parent";
					
				}
				return "list_searching_tutor";

			}
		
		 @PostMapping("/search_valid")
			public String search(@RequestParam(required = false) String state, @RequestParam(required = false) String city,
					 ModelMap model,HttpSession session) {
				if(session.getAttribute("parent")==null) {
					return"redirect:/login_parent";
					
				}
				List<tutorreg> list_searching_tutor = st.tut_search(state, city);
				model.addAttribute("list_searching_tutor", list_searching_tutor);
				return "list_searching_tutor";
			}

		 /* end tutor request search teacher in parent page*/
		 
		 /* start send request message to the tutor code */
		 @GetMapping("/send_tutorrequest")
			public String requestsend(@RequestParam("id") Integer id,ModelMap model,tutorreg tm,HttpSession session) {
				tutorreg rt= st.sendd_request(id);
				model.addAttribute("tm", rt);
				
				if (session.getAttribute("parent")==null) {
					return"redirect:/login_parent";
					
				}
				return "send_tutorrequest";
				
			}
			
		 @PostMapping("/request1")
			public String sendrequest(@RequestParam("id") int id,@ModelAttribute("reqq") sendrequest_tutor reqq,tutorreg tm,HttpSession session) {
				
			 
				reqq.setTutor(tm);
				rt.request_1(reqq);
				if (session.getAttribute("parent")==null) {
					return"redirect:/login_parent";
					
				}
				
				return "parent_admin_dash";
				
			}
		 
		 /* End send request message to the tutor code */
		 
		 @GetMapping("/tutor_request")
			public String tutorreq(HttpSession session) {
				if (session.getAttribute("tutor")==null) {
					return"redirect:/login_tutor";
					
				}
				
				return "tutor_request";
				
			}
		 
		 @PostMapping("/see")
			public String requestlist(@RequestParam Integer id,ModelMap model,HttpSession session) {
				
				if (session.getAttribute("tutor")==null) {
					return"redirect:/login_tutor";
					
				}
				
				List<sendrequest_tutor> rr= rt.getRequestDemosByTutorId(id);
				model.addAttribute("req", rr);
				
				
				return "parent_request_list";
				
				
				
			}
		 @GetMapping("/parent_request_list")
		 public String reqq(HttpSession session) {
			 if (session.getAttribute("tutor")==null) {
					return"redirect:/login_tutor";
					
				}
			return "parent_request_list";
			 
		 }
		 /*password for parent first is seen password then new password mapping page*/
		 
		 @GetMapping("/forgotpasswordparent")
		 public String forgotpasswordparent() {
			return "forgotpasswordparent";
			 
		 }
		 
		 @GetMapping("/forgotpasswordtutor")
		 public String forgotpasswordtutor() {
			return "forgotpasswordtutor";
			 
		 }
		 @PostMapping("/password_parent")
		 public String parentpass(@ModelAttribute("ps") parentreg ps,ModelMap model) {
			try {
				parentreg password_parent= ss.password_parentfind(ps.getEmail());
				if(password_parent!=null) {
					model.addAttribute("password_parent", password_parent);
					return "parentpasswordshow";
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			 
			 
			return "forgotpasswordparent";
			 
		 }
		 
		 
		 @PostMapping("/password_tutor")
		 public String tutorpass(@ModelAttribute("ps") tutorreg ps,ModelMap model) {
			try {
				tutorreg password_tutor= st.password_tutorfind(ps.getEmail());
				if(password_tutor!=null) {
					model.addAttribute("password_tutor", password_tutor);
					return "tutorpasswordshow";
				}
				
			} catch (Exception e) {
				// TODO: handle exception
			}
			 
			 
			return "forgotpasswordtutor";
			 
		 }
}
