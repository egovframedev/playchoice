<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<jsp:include page="header.jsp"></jsp:include>
<div id="wrapper">
	<!-- end header -->
	<section id="featured"> <!-- start slider --> <!-- Slider -->
	<div id="nivo-slider">
		<div class="nivo-slider">
			<!-- Slide #1 image -->
			<img
				src="${pageContext.request.contextPath}/resources/img/slides/nivo/bg-1.jpg"
				alt="" title="#caption-1" />
			<!-- Slide #2 image -->
			<img
				src="${pageContext.request.contextPath}/resources/img/slides/nivo/bg-2.jpg"
				alt="" title="#caption-2" />
			<!-- Slide #3 image -->
			<img
				src="${pageContext.request.contextPath}/resources/img/slides/nivo/bg-3.jpg"
				alt="" title="#caption-3" />
		</div>
		<div class="container">
			<div class="row">
				<div class="span12">
					<!-- Slide #1 caption -->
					<div class="nivo-caption" id="caption-1">
						<div>
							<h2>
								여기에는<strong>뭘쓸까요!</strong>
							</h2>
							<p>써야하는 내용이 뭐가될지 궁금함!</p>
							<a href="#" class="btn btn-theme">지금 알아보기!</a>
						</div>
					</div>
					<!-- Slide #2 caption -->
					<div class="nivo-caption" id="caption-2">
						<div>
							<h2>
								쌀쌀한 날씨에 맞는<strong>연극추천!</strong>
							</h2>
							<p>계절에 맞는 연극으로 따뜻한 감성 느끼시길 바랄게요!</p>
							<a href="#" class="btn btn-theme">지금 알아보기!</a>
						</div>
					</div>
					<!-- Slide #3 caption -->
					<div class="nivo-caption" id="caption-3">
						<div>
							<h2>
								<strong>타임 특가</strong>프로모션!
							</h2>
							<p>타임 세일 최저가 티켓! 오직 연극어때에서만!</p>
							<a href="#" class="btn btn-theme">지금 알아보기!</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end slider --> </section>
	<section class="callaction">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="big-cta">
					<div class="cta-text">
						<h3>
							<strong>오늘, 내일 티켓 예매</strong>로 보다 저렴하게!
						</h3>
					</div>
					<div class="cta floatright">
						<a class="btn btn-large btn-theme btn-rounded" href="play/playlist">예매하러 <!-- href="#" -->
							가기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="row">
					<div class="span6">
						<div class="box aligncenter">
							<div class="aligncenter icon">
								<i class="icon-briefcase icon-circled icon-64 active"></i>
							</div>
							<div class="text">
								<h3>
									<strong>오늘 티켓(11/11)</strong>
								</h3>
								<p>
									오늘 당장 저렴하게 이용할 수 있는<br>
								</p>
								<p>마감 임박 할인 오늘 티켓</p>
								<a href="play/playlist">예매하러 가기</a>
							</div>
						</div>
					</div>
					<div class="span6">
						<div class="box aligncenter">
							<div class="aligncenter icon">
								<i class="icon-desktop icon-circled icon-64 active"></i>
							</div>
							<div class="text">
								<h3>
									<strong>타임 세일</strong>
								</h3>
								<p>
									한정된 기간, 한정된 수량으로 판매되는<br>
								</p>
								<p>우주 최저가 타임 세일 티켓</p>
								<a href="#">예매하러 가기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- divider -->
		<div class="row">
			<div class="span12">
				<div class="solidline"></div>
			</div>
		</div>
		<!-- end divider -->
		<!-- Portfolio Projects -->
		<div class="row">
			<div class="span12">
				<h4 class="heading">
					Some of recent <strong>works</strong>
				</h4>
				<div class="row">
					<section id="projects">
					<ul id="thumbs" class="portfolio">
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 design" data-id="id-0"
							data-type="web">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The City"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-01-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-01.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 design" data-id="id-1"
							data-type="icon">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The Office"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-02-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-02.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 photography" data-id="id-2"
							data-type="illustrator">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The Mountains"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-03-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-03.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 photography" data-id="id-2"
							data-type="illustrator">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The Mountains"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-04-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-04.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 photography" data-id="id-4"
							data-type="web">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The Sea"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-05-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-05.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 photography" data-id="id-5"
							data-type="icon">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="Clouds"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-06-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-06.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 photography" data-id="id-2"
							data-type="illustrator">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The Mountains"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-07-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-07.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
						<!-- Item Project and Filter Name -->
						<li class="item-thumbs span3 design" data-id="id-0"
							data-type="web">
							<!-- Fancybox - Gallery Enabled - Title - Full Image --> <a
							class="hover-wrap fancybox" data-fancybox-group="gallery"
							title="The Dark"
							href="${pageContext.request.contextPath}/resources/img/works/full/image-08-full.jpg">
								<span class="overlay-img"></span> <span
								class="overlay-img-thumb font-icon-plus"></span>
						</a> <!-- Thumb Image and Description --> <img
							src="img/works/thumbs/image-08.jpg"
							alt="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus quis elementum odio. Curabitur pellentesque, dolor vel pharetra mollis.">
						</li>
						<!-- End Item Project -->
					</ul>
					</section>
				</div>
			</div>
		</div>
		<!-- End Portfolio Projects -->
		<!-- divider -->
		<div class="row">
			<div class="span12">
				<div class="solidline"></div>
			</div>
		</div>
		<!-- end divider -->
	</div>
	</section>
	<section id="bottom">
	<div class="container">
		<div class="row">
			<div class="span12">
				<div class="aligncenter">
					<div id="twitter-wrapper">
						<div id="twitter"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</section>
	<footer>
	<div class="container">
		<div class="row">
			<div class="span3">
				<div class="widget">
					<h5 class="widgetheading">Browse pages</h5>
					<ul class="link-list">
						<li><a href="#">About our company</a></li>
						<li><a href="#">Our services</a></li>
						<li><a href="#">Meet our team</a></li>
						<li><a href="#">Explore our portfolio</a></li>
						<li><a href="#">Get in touch with us</a></li>
					</ul>
				</div>
			</div>
			<div class="span3">
				<div class="widget">
					<h5 class="widgetheading">Important stuff</h5>
					<ul class="link-list">
						<li><a href="#">Press release</a></li>
						<li><a href="#">Terms and conditions</a></li>
						<li><a href="#">Privacy policy</a></li>
						<li><a href="#">Career center</a></li>
						<li><a href="#">Flattern forum</a></li>
					</ul>
				</div>
			</div>
			<div class="span3">
				<div class="widget">
					<h5 class="widgetheading">Flickr photostream</h5>
					<div class="flickr_badge">
						<script type="text/javascript"
							src="http://www.flickr.com/badge_code_v2.gne?count=8&amp;display=random&amp;size=s&amp;layout=x&amp;source=user&amp;user=34178660@N03"></script>
					</div>
					<div class="clear"></div>
				</div>
			</div>
			<div class="span3">
				<div class="widget">
					<h5 class="widgetheading">Get in touch with us</h5>
					<address>
						<strong>Flattern studio, Pte Ltd</strong><br> Springville
						center X264, Park Ave S.01<br> Semarang 16425 Indonesia
					</address>
					<p>
						<i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
						<i class="icon-envelope-alt"></i> email@domainname.com
					</p>
				</div>
			</div>
		</div>
	</div>
	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="span6">
					<div class="copyright">
						<p>
							<span>&copy; Flattern - All right reserved.</span>
						</p>
						<div class="credits">
							<!--
                    All the links in the footer should remain intact.
                    You can delete the links only if you purchased the pro version.
                    Licensing information: https://bootstrapmade.com/license/
                    Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Flattern
                  -->
							Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
						</div>
					</div>
				</div>
				<div class="span6">
					<ul class="social-network">
						<li><a href="#" data-placement="bottom" title="Facebook"><i
								class="icon-facebook icon-square"></i></a></li>
						<li><a href="#" data-placement="bottom" title="Twitter"><i
								class="icon-twitter icon-square"></i></a></li>
						<li><a href="#" data-placement="bottom" title="Linkedin"><i
								class="icon-linkedin icon-square"></i></a></li>
						<li><a href="#" data-placement="bottom" title="Pinterest"><i
								class="icon-pinterest icon-square"></i></a></li>
						<li><a href="#" data-placement="bottom" title="Google plus"><i
								class="icon-google-plus icon-square"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
</div>
<jsp:include page="footer.jsp"></jsp:include>