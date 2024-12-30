package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class ServiceStructure_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("    <meta charset=\"UTF-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <!-- SEO Meta Tags -->\n");
      out.write("    <meta name=\"description\" content=\"Your description\">\n");
      out.write("    <meta name=\"author\" content=\"Your name\">\n");
      out.write("\n");
      out.write("    <!-- OG Meta Tags to improve the way the post looks when you share the page on Facebook, Twitter, LinkedIn -->\n");
      out.write("\t<meta property=\"og:site_name\" content=\"\" /> <!-- website name -->\n");
      out.write("\t<meta property=\"og:site\" content=\"\" /> <!-- website link -->\n");
      out.write("\t<meta property=\"og:title\" content=\"\"/> <!-- title shown in the actual shared post -->\n");
      out.write("\t<meta property=\"og:description\" content=\"\" /> <!-- description shown in the actual shared post -->\n");
      out.write("\t<meta property=\"og:image\" content=\"\" /> <!-- image link, make sure it's jpg -->\n");
      out.write("\t<meta property=\"og:url\" content=\"\" /> <!-- where do you want your post to link to -->\n");
      out.write("\t<meta name=\"twitter:card\" content=\"summary_large_image\"> <!-- to have large image post format in Twitter -->\n");
      out.write("\n");
      out.write("    <!-- Webpage Title -->\n");
      out.write("    <title>User</title>\n");
      out.write("    <style>\n");
      out.write("       \n");
      out.write("\n");
      out.write("        form {\n");
      out.write("            background-color: #1c262f;\n");
      out.write("            padding: 60px;\n");
      out.write("            border-radius: 8px;\n");
      out.write("            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);\n");
      out.write("            width: 400px;\n");
      out.write("            height: 400px;\n");
      out.write("            justify-content: space-between;\n");
      out.write("            display:flex;\n");
      out.write("            flex-direction:column;\n");
      out.write("        \n");
      out.write("        }\n");
      out.write("\n");
      out.write("        h3 {\n");
      out.write("            text-align: center;\n");
      out.write("            color: #fffdfd;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        label {\n");
      out.write("            display: block;\n");
      out.write("            margin: 10px 0 5px;\n");
      out.write("            color: #ffffff;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        input {\n");
      out.write("            width: 100%;\n");
      out.write("            padding: 8px;\n");
      out.write("            margin-top: -25px;\n");
      out.write("            box-sizing: border-box;\n");
      out.write("            background: #1a1a1b39;\n");
      out.write("            border-radius: 4px;\n");
      out.write("            outline: none;\n");
      out.write("            border: none;\n");
      out.write("            color: azure;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        input:hover{\n");
      out.write("            border: 1px solid whitesmoke;\n");
      out.write("        }\n");
      out.write("       \n");
      out.write("\n");
      out.write("        .error-message {\n");
      out.write("            color: #d9534f;\n");
      out.write("            margin-top: 10px;\n");
      out.write("            text-align: center;\n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("\n");
      out.write("    <!-- Styles -->\n");
      out.write("    <link href=\"https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;700&display=swap\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"./css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"./css/fontawesome-all.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"./css/aos.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"./css/swiper.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"./css/style.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("    <!-- Favicon -->\n");
      out.write("    <link rel=\"icon\" href=\"./assets/images/favicon.png\">\n");
      out.write("\n");
      out.write("</head> \n");
      out.write("<body style=\"background:#1c262f;\">\n");
      out.write("\n");
      out.write("    <!-- Navigation -->\n");
      out.write("    <nav id=\"navbar\" class=\"navbar navbar-expand-lg fixed-top navbar-dark\" aria-label=\"Main navigation\">\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <!-- Image Logo -->\n");
      out.write("            <!-- <a class=\"navbar-brand logo-image\" href=\"index.html\"><img src=\"images/logo.svg\" alt=\"alternative\"></a> -->\n");
      out.write("\n");
      out.write("            <!-- Text Logo - Use this if you don't have a graphic logo -->\n");
      out.write("            <a class=\"navbar-brand logo-text\" href=\"index.jsp\">E Notes</a>\n");
      out.write("\n");
      out.write("            <button class=\"navbar-toggler p-0 border-0\" type=\"button\" id=\"navbarSideCollapse\" aria-label=\"Toggle navigation\">\n");
      out.write("                <span class=\"navbar-toggler-icon\"></span>\n");
      out.write("            </button>\n");
      out.write("\n");
      out.write("            <div class=\"navbar-collapse offcanvas-collapse\" id=\"navbarsExampleDefault\" >\n");
      out.write("                <ul class=\"navbar-nav ms-auto navbar-nav-scroll\">\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link active\" aria-current=\"page\" href=\"#header\">Home</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Userindex.jsp#about\">About</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Userindex.jsp#services\">Services</a>\n");
      out.write("                    </li>\n");
      out.write("                     \n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Userindex.jsp#plans\">Plans</a>\n");
      out.write("                    </li>\n");
      out.write("                    <li class=\"nav-item\">\n");
      out.write("                        <a class=\"nav-link\" href=\"Userindex.jsp#contact\">Contact</a>\n");
      out.write("                    </li>\n");
      out.write("                      <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" id=\"dropdown01\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\" href=\"#\">Manage Notes</a>\n");
      out.write("                        \n");
      out.write("                        <ul class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\n");
      out.write("                            \n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"ServiceProviderAddNotes.jsp\">Add Notes</a></li>\n");
      out.write("                            <li><div class=\"dropdown-divider\"></div></li>\n");
      out.write("                            \n");
      out.write("                            ");

                                String id =request.getParameter("id");
                                System.out.println(id);
                          String name =request.getParameter("name");
        System.out.println(name);
        
                     out.print("<a class='dropdown-item' href=ServiceProviderViewNotes.jsp?id="+id+">View Notes</a>");
                      session.setAttribute("name", name);
          
      out.write("\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                    <li class=\"nav-item dropdown\">\n");
      out.write("                        <a class=\"nav-link dropdown-toggle\" id=\"dropdown01\" data-bs-toggle=\"dropdown\" aria-expanded=\"false\" href=\"#\">Account</a>\n");
      out.write("                        \n");
      out.write("                        <ul class=\"dropdown-menu\" aria-labelledby=\"dropdown01\">\n");
      out.write("                            \n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"UserChngPass.jsp\">Change Password</a></li>\n");
      out.write("                            <li><div class=\"dropdown-divider\"></div></li>\n");
      out.write("                            \n");
      out.write("                            <li><a class=\"dropdown-item\" href=\"logoutservice\">Logout</a></li>\n");
      out.write("                        </ul>\n");
      out.write("                    </li>\n");
      out.write("                    \n");
      out.write("                </ul>\n");
      out.write("                <span class=\"nav-item social-icons\">\n");
      out.write("                    <span class=\"fa-stack\">\n");
      out.write("                        <a href=\"#your-link\">\n");
      out.write("                            <i class=\"fas fa-circle fa-stack-2x\"></i>\n");
      out.write("                            <i class=\"fab fa-facebook-f fa-stack-1x\"></i>\n");
      out.write("                        </a>\n");
      out.write("                    </span>\n");
      out.write("                    <span class=\"fa-stack\">\n");
      out.write("                        <a href=\"#your-link\">\n");
      out.write("                            <i class=\"fas fa-circle fa-stack-2x\"></i>\n");
      out.write("                            <i class=\"fab fa-twitter fa-stack-1x\"></i>\n");
      out.write("                        </a>\n");
      out.write("                    </span>\n");
      out.write("                </span>\n");
      out.write("            </div> <!-- end of navbar-collapse -->\n");
      out.write("        </div> <!-- end of container -->\n");
      out.write("    </nav> <!-- end of navbar -->\n");
      out.write("    <!-- end of navigation -->\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Back To Top Button -->\n");
      out.write("    <button onclick=\"topFunction()\" id=\"myBtn\">\n");
      out.write("        <img src=\"assets/images/up-arrow.png\" alt=\"alternative\">\n");
      out.write("    </button>\n");
      out.write("    <!-- end of back to top button -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Scripts -->\n");
      out.write("    <script src=\"./js/bootstrap.min.js\"></script><!-- Bootstrap framework -->\n");
      out.write("    <script src=\"./js/purecounter.min.js\"></script> <!-- Purecounter counter for statistics numbers -->\n");
      out.write("    <script src=\"./js/swiper.min.js\"></script><!-- Swiper for image and text sliders -->\n");
      out.write("    <script src=\"./js/aos.js\"></script><!-- AOS on Animation Scroll -->\n");
      out.write("    <script src=\"./js/script.js\"></script>  <!-- Custom scripts -->\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
