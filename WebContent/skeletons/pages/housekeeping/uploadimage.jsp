<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="digiworld.store.*"%>
<jsp:include page="../../header.jsp" />
<jsp:include page="../../navbar.jsp" />    
<% Product product = (Product) session.getAttribute("product"); %>
      <div class="cart-table-area section-padding-100">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-8">
                        <div class="checkout_details_area mt-50 clearfix">
                            <div class="cart-title">
                                <h2>Image Upload (${ product.getName() })</h2>
                            </div>

                            <form action="uploadimage" enctype="multipart/form-data" method="post">
                                <div class="row">
                                   	<div class="col-9 mb-3">
                                        <input class="file" type="file" name="talkPhoto" value="" maxlength="255">
                                    </div>                        
                                    <div class="col-10">
                                      <div class="cart-btn mt-100">
                                      	  <input type="hidden" id="productid" name="productid" value="${ product.getID() }">
                                          <input type="submit" class="btn amado-btn w-60 float-right" value="Edit Product">
                                      </div>
                                    </div>
                                </div>
                            </form>
                        </div>
                        </div>
                    </div>
                </div>
            </div>
<jsp:include page="../../footer.jsp" />