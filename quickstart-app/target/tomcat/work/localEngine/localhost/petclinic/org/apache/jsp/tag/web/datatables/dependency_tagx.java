package org.apache.jsp.tag.web.datatables;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class dependency_tagx
    extends javax.servlet.jsp.tagext.SimpleTagSupport
    implements org.apache.jasper.runtime.JspSourceDependent {


  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList(3);
    _jspx_dependants.add("/WEB-INF/tags/jquery/form/dependency.tagx");
    _jspx_dependants.add("/WEB-INF/tags/jquery/util/panel.tagx");
    _jspx_dependants.add("/WEB-INF/tags/jquery/form/fields/reference.tagx");
  }

  private JspContext jspContext;
  private java.io.Writer _jspx_sout;
  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public void setJspContext(JspContext ctx) {
    super.setJspContext(ctx);
    java.util.ArrayList _jspx_nested = null;
    java.util.ArrayList _jspx_at_begin = null;
    java.util.ArrayList _jspx_at_end = null;
    this.jspContext = new org.apache.jasper.runtime.JspContextWrapper(ctx, _jspx_nested, _jspx_at_begin, _jspx_at_end, null);
  }

  public JspContext getJspContext() {
    return this.jspContext;
  }
  private java.lang.String id;
  private java.util.Collection dependencies;
  private java.lang.String label;
  private java.lang.Boolean render;
  private java.lang.Boolean openPane;
  private java.lang.String z;

  public java.lang.String getId() {
    return this.id;
  }

  public void setId(java.lang.String id) {
    this.id = id;
    jspContext.setAttribute("id", id);
  }

  public java.util.Collection getDependencies() {
    return this.dependencies;
  }

  public void setDependencies(java.util.Collection dependencies) {
    this.dependencies = dependencies;
    jspContext.setAttribute("dependencies", dependencies);
  }

  public java.lang.String getLabel() {
    return this.label;
  }

  public void setLabel(java.lang.String label) {
    this.label = label;
    jspContext.setAttribute("label", label);
  }

  public java.lang.Boolean getRender() {
    return this.render;
  }

  public void setRender(java.lang.Boolean render) {
    this.render = render;
    jspContext.setAttribute("render", render);
  }

  public java.lang.Boolean getOpenPane() {
    return this.openPane;
  }

  public void setOpenPane(java.lang.Boolean openPane) {
    this.openPane = openPane;
    jspContext.setAttribute("openPane", openPane);
  }

  public java.lang.String getZ() {
    return this.z;
  }

  public void setZ(java.lang.String z) {
    this.z = z;
    jspContext.setAttribute("z", z);
  }

  public Object getDependants() {
    return _jspx_dependants;
  }

  private void _jspInit(ServletConfig config) {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(config.getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) config.getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
  }

  public void doTag() throws JspException, java.io.IOException {
    PageContext _jspx_page_context = (PageContext)jspContext;
    HttpServletRequest request = (HttpServletRequest) _jspx_page_context.getRequest();
    HttpServletResponse response = (HttpServletResponse) _jspx_page_context.getResponse();
    HttpSession session = _jspx_page_context.getSession();
    ServletContext application = _jspx_page_context.getServletContext();
    ServletConfig config = _jspx_page_context.getServletConfig();
    JspWriter out = jspContext.getOut();
    _jspInit(config);
    jspContext.getELContext().putContext(JspContext.class,jspContext);
    if( getId() != null ) 
      _jspx_page_context.setAttribute("id", getId());
    if( getDependencies() != null ) 
      _jspx_page_context.setAttribute("dependencies", getDependencies());
    if( getLabel() != null ) 
      _jspx_page_context.setAttribute("label", getLabel());
    if( getRender() != null ) 
      _jspx_page_context.setAttribute("render", getRender());
    if( getOpenPane() != null ) 
      _jspx_page_context.setAttribute("openPane", getOpenPane());
    if( getZ() != null ) 
      _jspx_page_context.setAttribute("z", getZ());

    try {
      if (_jspx_meth_form_005fdependency_005f0(_jspx_page_context))
        return;
    } catch( Throwable t ) {
      if( t instanceof SkipPageException )
          throw (SkipPageException) t;
      if( t instanceof java.io.IOException )
          throw (java.io.IOException) t;
      if( t instanceof IllegalStateException )
          throw (IllegalStateException) t;
      if( t instanceof JspException )
          throw (JspException) t;
      throw new JspException(t);
    } finally {
      jspContext.getELContext().putContext(JspContext.class,super.getJspContext());
      ((org.apache.jasper.runtime.JspContextWrapper) jspContext).syncEndTagFile();
    }
  }

  private boolean _jspx_meth_form_005fdependency_005f0(PageContext _jspx_page_context)
          throws Throwable {
    JspWriter out = _jspx_page_context.getOut();
    //  form:dependency
    org.apache.jsp.tag.web.jquery.form.dependency_tagx _jspx_th_form_005fdependency_005f0 = new org.apache.jsp.tag.web.jquery.form.dependency_tagx();
    org.apache.jasper.runtime.AnnotationHelper.postConstruct(_jsp_annotationprocessor, _jspx_th_form_005fdependency_005f0);
    _jspx_th_form_005fdependency_005f0.setJspContext(_jspx_page_context);
    _jspx_th_form_005fdependency_005f0.setParent(new javax.servlet.jsp.tagext.TagAdapter((javax.servlet.jsp.tagext.SimpleTag) this ));    // /WEB-INF/tags/datatables/dependency.tagx(11,131) name = z type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_form_005fdependency_005f0.setZ((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${z}", java.lang.String.class, (PageContext)this.getJspContext(), null, false));
    // /WEB-INF/tags/datatables/dependency.tagx(11,131) name = openPane type = java.lang.Boolean reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_form_005fdependency_005f0.setOpenPane((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${openPane}", java.lang.Boolean.class, (PageContext)this.getJspContext(), null, false));
    // /WEB-INF/tags/datatables/dependency.tagx(11,131) name = render type = java.lang.Boolean reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_form_005fdependency_005f0.setRender((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${render}", java.lang.Boolean.class, (PageContext)this.getJspContext(), null, false));
    // /WEB-INF/tags/datatables/dependency.tagx(11,131) name = label type = java.lang.String reqTime = true required = false fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_form_005fdependency_005f0.setLabel((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${label}", java.lang.String.class, (PageContext)this.getJspContext(), null, false));
    // /WEB-INF/tags/datatables/dependency.tagx(11,131) name = dependencies type = java.util.Collection reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_form_005fdependency_005f0.setDependencies((java.util.Collection) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${dependencies}", java.util.Collection.class, (PageContext)this.getJspContext(), null, false));
    // /WEB-INF/tags/datatables/dependency.tagx(11,131) name = id type = java.lang.String reqTime = true required = true fragment = false deferredValue = false expectedTypeName = java.lang.String deferredMethod = false methodSignature = null
    _jspx_th_form_005fdependency_005f0.setId((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${id}", java.lang.String.class, (PageContext)this.getJspContext(), null, false));
    _jspx_th_form_005fdependency_005f0.doTag();
    org.apache.jasper.runtime.AnnotationHelper.preDestroy(_jsp_annotationprocessor, _jspx_th_form_005fdependency_005f0);
    return false;
  }
}
