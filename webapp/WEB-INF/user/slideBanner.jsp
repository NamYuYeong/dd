<%@page import="util.ProdSpec"%>
<%@page import="model.CategoryDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.CategoryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />
<style>
.slide-banner{
	width:100%;
	height:480px;
	overflow:hidden;
}
  .swiper {
  	width: 100%;
	height:100%;
  }

  .swiper-slide {
    text-align: center;
    font-size: 18px;
    background: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    
  }

  .swiper-slide img {
    display: block;
    width: 100%;
    height: 100%;
    object-fit: cover;
   
  }
</style>
<div class="slide-banner">	
<div class="swiper mySwiper">
    <div class="swiper-wrapper">
      <div class="swiper-slide"><img src="<c:url value='images/slideimg1.png'/>"></div>
      <div class="swiper-slide"><img src="<c:url value='images/slideimg2.png'/>"></div>
      <div class="swiper-slide"><img src="<c:url value='images/slideimg3.png'/>"></div>
    </div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
    <div class="swiper-pagination"></div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>

<script>
    var swiper = new Swiper(".mySwiper", {
      cssMode: true,
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
      pagination: {
        el: ".swiper-pagination",
      },
      mousewheel: true,
      keyboard: true,
    });
  </script>