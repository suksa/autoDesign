<?php
if (!defined('_GNUBOARD_')) exit; // 개별 페이지 접근 불가

if(defined('G5_THEME_PATH')) {
    require_once(G5_THEME_PATH.'/index.php');
    return;
}

include_once(G5_MOBILE_PATH.'/head.php');
?>

<!-- cover -->
    
    <div class="cover"></div>
    
    <!-- cover end -->
             
	<!-- header -->
	<header>
	    <div class="site-wrapper">
   <a href="#navigation" title="navigation menu" aria-label="navigation menu" id="m_menu"> </a>
		
	<nav id="navigation" role="navigation">
	    <div class="nav_logo">
	        <img src="<?=G5_MOBILE_URL?>/assets/img/nav_logo.png" alt="" />
	    </div>
	    
	    <div class="nav_quick">
	        <ul>
	            <li><a href="#"><img src="<?=G5_MOBILE_URL?>/assets/img/nav_menu01.png"</a></li>
	            <li><a href="#"><img src="<?=G5_MOBILE_URL?>/assets/img/nav_menu02.png"</a></li>
	            <li><a href="#"><img src="<?=G5_MOBILE_URL?>/assets/img/nav_menu03.png"</a></li>
	        </ul>
	    </div>
	    
	    <div id="accordion">
		    <h3><a href="#">알림공개</a></h3>
            <div>
                <ul>
                    <li><a href="#">할인정보</a></li>
                    <li><a href="#">회사정보</a></li>
                </ul>
            </div>

            <h3><a href="#">레슨공개</a></h3>
            <div>
            </div>

            <h3><a href="#">요원공개</a></h3>
            <div>
            </div>

            <h3><a href="#">커뮤니티</a></h3>
            <div>
                <ul>
                    <li><a href="#">출고후기</a></li>
                    <li><a href="#">질문답변</a></li>
                </ul>
            </div>

            <h3><a href="#">상세견적</a></h3>
            <div>
            </div>
        </div>
	</nav>
</div>
   
		<div class="tel">
			<div class="nav_menu_inner">
                <button onclick="document.location.href='tel:1800-4605'" />
                <a href="tel:1800-4605">1800-4605</a>
            </div>
        </div>
        <div class="nav_menu top_menu">
            <div class="nav_menu_inner">
                <div class="container_1">
                    <div class="logo">
                        <h1><a href="#" target="_self" class="top_logo"></a></h1>	
                    </div>
                </div>
                <div class="container_2">						
                    <p>There is no substitable estimates<span>대체할 수 있는 견적서가 없다</span></p>
                </div>
                <div class="container_3">
                    <a class="nav_btn" >
                        <a href="#">
                           <img src="<?=G5_MOBILE_URL?>/assets/img/mobile_btn.png" alt="#" />
                        </a>
                    </a>
                    <div class="pm2_wrap">
                        <div id="pm2" class="basic">
                            <ul class="dep1">
                                <li>
                                    <a href="#" target="_self">알림공개</a>
                                </li>
                                <li>
                                    <a href="#" target="_self">레슨공개</a>
                                </li>
                                <li>
                                    <a href="#" target="_self">요원공개</a>
                                </li>
                                <li>
                                    <a href="#" target="_self">커뮤니티</a>
                                </li>
                                <li>
                                    <a href="#" target="_self">상세견적</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </header>
		<!-- //header END -->
		

		<!-- QUICK MENU -->
		<div id="STATICMENU">
			<ul> 
				<li class="top_view_">
					<a href="#">
						<img src="<?=G5_MOBILE_URL?>/assets/img/quick05.jpg" alt="top">
					</a>
				</li>
			</ul>
		</div>
		<!-- QUICK MENU END-->
		
		<!-- menu -->
        
        <div class="middle_menu">
            <div id="menutab">
                <ul>
                    <li>
                        <a href="#">알림공개</a>

                        <ul>
                            <li><a href="#">할인정보</a></li>
                            <li><a href="#">회사정보</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">레슨공개</a>

                        <ul>
                        </ul>
                    </li>

                    <li>
                        <a href="#">요원공개</a>

                        <ul>
                        </ul>
                    </li>

                    <li>
                        <a href="#">커뮤니티</a>

                        <ul>
                            <li><a href="#">출고후기</a></li>
                            <li><a href="#">질문답변</a></li>
                        </ul>
                    </li>

                    <li>
                        <a href="#">상세견적</a>

                        <ul>
                        </ul>
                    </li>
                </ul>
            </div><!--#menutab-->
        </div>
        <!-- menu END-->


		<!-- main slide -->
		<section id="banner">
			<div class="rolling_list">
				<div class="slide_wrap slide_num1">
				</div>
				<div class="slide_wrap slide_num2">
				</div>
				<div class="slide_wrap slide_num3">
				</div>
				<div class="slide_wrap slide_num4">
				</div>
			</div>
		</section>
		<!-- //! main slide END -->
            
        <div id="nav_bg"></div>

		<!-- board -->
		<section id="board">
			<div class="container">
				<div class="Board_01">
					<h3><span>오토디자인</span> 알림공개<a href="#">더보기 ></a></h3>
					<div class="tabs">
						<div class="tabs-header">
							<div class="border"></div>
							<ul>
								<li class="active"><a href="#tab-1" tab-id="1">할인정보</a></li>
								<li><a href="#tab-2" tab-id="2">회사정보</a></li>
							</ul>
						</div>
						<div class="tabs-content">
							<div tab-id="1" class="tab active">
								<a href="#">
									<dl>
										<dd>[오토디자인] 최저가 보상</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 06월] 최저가 보상</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 10월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 9월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 8월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 7월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
							</div>
							<div tab-id="2" class="tab">
								<a href="#">
									<dl>
										<dd>[오토디자인] 최저가 보상</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 06월] 최저가 보상</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 10월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 9월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 8월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
								<a href="#">
									<dl>
										<dd>[오토디자인 7월 특가 프로모션] Vol. 1</dd>
										<dt>19-07-15</dt>
									</dl>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="Board_02">
					<h3><span>오토디자인</span> 레슨공개<a href="#">더보기 ></a></h3>
					<ul>
						<li>
							<img src="<?=G5_MOBILE_URL?>/assets/img/board_thumb01.jpg" alt="레슨공개 썸네일">
							<a href=#><p class="tit">신차 장기렌트는 무엇일까?</p></a>
							<p class="date">2017-01-01</p>
							<p class="view">조회수 : 263</p>
						</li>
						<li>
							<img src="<?=G5_MOBILE_URL?>/assets/img/board_thumb02.jpg" alt="레슨공개 썸네일">
							<a href=#><p class="tit">신차 장기렌트는 무엇일까?</p></a>
							<p class="date">2017-01-01</p>
							<p class="view">조회수 : 263</p>
						</li>
					</ul>
				</div>
				<div class="Board_03">
					<h3>실시간 상담신청</h3>
					<div>
						<dl>
							<dt>19-07-15</dt>
							<dd>강문*</dd>
							<dt>벤츠E200</dt>
							<dd>상담중</dd>
						</dl>
						<dl>
							<dt>19-07-15</dt>
							<dd>이성*</dd>
							<dt>올뉴카니발</dt>
							<dd>상담중</dd>
						</dl>
						<dl>
							<dt>19-07-15</dt>
							<dd>장성*</dd>
							<dt>쏘나타LPG</dt>
							<dd>접수</dd>
						</dl>
						<dl>
							<dt>19-07-15</dt>
							<dd>양종*</dd>
							<dt>니로</dt>
							<dd>접수</dd>
						</dl>
						<dl>
							<dt>19-07-15</dt>
							<dd>유태*</dd>
							<dt>말리부</dt>
							<dd>상담중</dd>
						</dl>
						<dl>
							<dt>19-07-15</dt>
							<dd>김영*</dd>
							<dt>올뉴K7</dt>
							<dd>접수</dd>
						</dl>
						<dl>
							<dt>19-07-15</dt>
							<dd>박혜*</dd>
							<dt>프라이드</dt>
							<dd>상담중</dd>
						</dl>
					</div>
				</div>
			</div>
		</section>
		<!-- board END -->



		<!-- COUNSULT -->
		<section id="consult">
			<div class="container">
				<div class="inner_650">
					<img src="<?=G5_MOBILE_URL?>/assets/img/main_banner_text.png" alt="속 시원한 진짜 맞춤형 비교견적서">
					<p>자동차 세일즈 토탈솔루션! <b>오토디자인</b></p>
					<form action="#">
						<fieldset>
							<div>
								<label for="name">이름</label>
								<input type="text" name id="name">
							</div>
							<div>
								<label for="phone">연락처</label>
								<input type="text" name id="phone">
							</div>
							<div>						
								<label for="area">상담내용</label>
								<input type="text" name id="area">
							</div>
							<div>
								<label for="model">차종</label>
								<input type="text" name id="model">
							</div>
							<div>
								<input type="button" value="간편상담 신청">
							</div>	
							<div class="privacy">
								<input type="checkbox" value="None" name id="privacy" checked/>
								<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span></label>	
							</div>
						</fieldset>
					</form>
					<iframe src="https://player.vimeo.com/video/351150804" width="100%" height="80%" frameborder="0" allow="autoplay; fullscreen" allowfullscreen></iframe>
				</div>
			</div>
		</section>
		<!-- COUNSULT END -->

		<!-- REVIEW -->
		<section id="review">
			<div class="container">
				<h2 class="main_title">오토디자인 <strong>고객만족후기</strong></h2>
				<ul>
					<li>
						<figure>
							<img src="<?=G5_MOBILE_URL?>/assets/img/main_review_thumb_01.jpg" alt="고객만족 리뷰 썸네일01">
							<figcaption>
								<p>벤츠 E300</p>
								<dl>
									<dt>계약일</dt>
									<dd>2016-06-09 / 광주 서구</dd>
								</dl>
								<dl>
									<dt>담당자</dt>
									<dd>영업 3팀</dd>
								</dl>
								<dl>
									<dt>서류수령</dt>
									<dd>박성훈 팀장</dd>
								</dl>
								<dl>
									<dt>계약차량</dt>
									<dd>벤츠 E300</dd>
								</dl>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="<?=G5_MOBILE_URL?>/assets/img/main_review_thumb_02.jpg" alt="고객만족 리뷰 썸네일02">
							<figcaption>
								<p>그랜저 IG</p>
								<dl>
									<dt>계약일</dt>
									<dd>2016-06-09 / 광주 서구</dd>
								</dl>
								<dl>
									<dt>담당자</dt>
									<dd>영업 3팀</dd>
								</dl>
								<dl>
									<dt>서류수령</dt>
									<dd>박성훈 팀장</dd>
								</dl>
								<dl>
									<dt>계약차량</dt>
									<dd>벤츠 E300</dd>
								</dl>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="<?=G5_MOBILE_URL?>/assets/img/main_review_thumb_03.jpg" alt="고객만족 리뷰 썸네일03">
							<figcaption>
								<p>SM6</p>
								<dl>
									<dt>계약일</dt>
									<dd>2016-06-09 / 광주 서구</dd>
								</dl>
								<dl>
									<dt>담당자</dt>
									<dd>영업 3팀</dd>
								</dl>
								<dl>
									<dt>서류수령</dt>
									<dd>박성훈 팀장</dd>
								</dl>
								<dl>
									<dt>계약차량</dt>
									<dd>벤츠 E300</dd>
								</dl>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="<?=G5_MOBILE_URL?>/assets/img/main_review_thumb_04.jpg" alt="고객만족 리뷰 썸네일04">
							<figcaption>
								<p>올뉴 K3</p>
								<dl>
									<dt>계약일</dt>
									<dd>2016-06-09 / 광주 서구</dd>
								</dl>
								<dl>
									<dt>담당자</dt>
									<dd>영업 3팀</dd>
								</dl>
								<dl>
									<dt>서류수령</dt>
									<dd>박성훈 팀장</dd>
								</dl>
								<dl>
									<dt>계약차량</dt>
									<dd>벤츠 E300</dd>
								</dl>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="<?=G5_MOBILE_URL?>/assets/img/main_review_thumb_05.jpg" alt="고객만족 리뷰 썸네일05">
							<figcaption>
								<p>티볼리아머</p>
								<dl>
									<dt>계약일</dt>
									<dd>2016-06-09 / 광주 서구</dd>
								</dl>
								<dl>
									<dt>담당자</dt>
									<dd>영업 3팀</dd>
								</dl>
								<dl>
									<dt>서류수령</dt>
									<dd>박성훈 팀장</dd>
								</dl>
								<dl>
									<dt>계약차량</dt>
									<dd>벤츠 E300</dd>
								</dl>
							</figcaption>
						</figure>
					</li>
					<li>
						<figure>
							<img src="<?=G5_MOBILE_URL?>/assets/img/main_review_thumb_06.jpg" alt="고객만족 리뷰 썸네일06">
							<figcaption>
								<p>싼타페 TM</p>
								<dl>
									<dt>계약일</dt>
									<dd>2016-06-09 / 광주 서구</dd>
								</dl>
								<dl>
									<dt>담당자</dt>
									<dd>영업 3팀</dd>
								</dl>
								<dl>
									<dt>서류수령</dt>
									<dd>박성훈 팀장</dd>
								</dl>
								<dl>
									<dt>계약차량</dt>
									<dd>벤츠 E300</dd>
								</dl>
							</figcaption>
						</figure>
					</li>
				</ul>
				<a href="#"><span>더보기</span></a>
			</div>
		</section>
		<!-- REVIEW END -->

		<!-- WEEKLY_BEST -->
		<section id="weekly_best">
			<div class="container">
				<h2 class="main_title">오토디자인 <strong>주간인기차종</strong></h2>
				<ul>
					<li class="Top First">
						<a href="#First" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb01.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best01.png" alt="주간인기차종 베스트1">
								<img src="<?=G5_MOBILE_URL?>/assets/img/crown.png" alt="">
								<figcaption>
									<p class="model_name">싼타페 TM<span>2.0.2WD 모던 5인승</span></p>
									<p class="fee">월렌탈료 <span>333,008</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="First"></a>
						<div class="popup First">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb01.jpg" alt="주간인기차종 베스트1">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>싼타페TM</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>333,008원</dd>
										</dl>
                                    </div>
									<div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : 산타페 TM</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>
					</li>
					<!-- //First END -->
					<li class="Top Second ">
						<a href="#Second" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb02.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best02.png" alt="주간인기차종 베스트2">
								<img src="<?=G5_MOBILE_URL?>/assets/img/crown.png" alt="">
								<figcaption>
									<p class="model_name">그렌저 IG<span>2.4 모던</span></p>
									<p class="fee">월렌탈료 <span>328,900</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="Second"></a>
						<div class="popup Second">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb02.jpg" alt="주간인기차종 베스트2">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>그렌저 IG</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>328,900원</dd>
										</dl>
                                    </div>
                                    <div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : 그렌저 IG</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>				
					</li>
					<!-- //Second END -->
					<li class="Top Third">
						<a href="#Third" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb03.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best03.png" alt="주간인기차종 베스트3">
								<img src="<?=G5_MOBILE_URL?>/assets/img/crown.png" alt="">
								<figcaption>
									<p class="model_name">카니발<span>더뉴카니발 R2.2 럭셔리 9인승</span></p>
									<p class="fee">월렌탈료 <span>348,800</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="Third"></a>
						<div class="popup Third">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb03.jpg" alt="주간인기차종 베스트3">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>카니발</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>348,800원</dd>
										</dl>
                                    </div>
                                    <div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : 카니발</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>
					</li>
					<!-- //Third END -->
					<li class="Bottom Fourth">
						<a href="#Fourth" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb04.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best04.png" alt="주간인기차종 베스트4">
								<figcaption>
									<p class="model_name">아반떼 AD<span>아반떼AD 1.6 스타일</span></p>
									<p class="fee">월렌탈료 <span>229,000</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="Fourth"></a>
						<div class="popup Fourth">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb04.jpg" alt="주간인기차종 베스트4">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>아반떼 AD</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>229,000원</dd>
										</dl>
                                    </div>
                                    <div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : 아반떼 AD</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>
					</li>
					<!-- //Fourth END -->
					<li class="Bottom Fifth">
						<a href="#Fifth" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb05.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best05.png" alt="주간인기차종 베스트5">
								<figcaption>
									<p class="model_name">벤츠 E Class<span>벤츠 E Class E200 AVANTTGARDE</span></p>
									<p class="fee">월렌탈료 <span>714,200</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="Fifth"></a>
						<div class="popup Fifth">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb05.jpg" alt="주간인기차종 베스트5">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>벤츠 E Class</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>714,200원</dd>
										</dl>
                                    </div>
                                    <div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : 벤츠 E Class</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>
					</li>
					<!-- //Fifth END -->
					<li class="Bottom Sixth">
						<a href="#Sixth" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb06.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best06.png" alt="주간인기차종 베스트6">
								<figcaption>
									<p class="model_name">KONA<span>코나 1.6 2WD 스마트</span></p>
									<p class="fee">월렌탈료 <span>255,600</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="Sixth"></a>
						<div class="popup Sixth">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb06.jpg" alt="주간인기차종 베스트6">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>KONA</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>255,600원</dd>
										</dl>
                                    </div>
                                    <div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : KONA</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>
					</li>
					<!-- //Sixth END -->
					<li class="Bottom Seventh">
						<a href="#Seventh" id="login_pop">
							<figure>
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb07.jpg" alt="주간인기차종 베스트1 썸네일">
								<img src="<?=G5_MOBILE_URL?>/assets/img/main_best07.png" alt="주간인기차종 베스트7">
								<figcaption>
									<p class="model_name">제네시스 G80<span>제네시스 G80 3.3 GDI 럭셔리 2WD</span></p>
									<p class="fee">월렌탈료 <span>229,000</span>원</p>
								</figcaption>
							</figure>
						</a>
						<a href="#x" class="overlay" id="Seventh"></a>
						<div class="popup Seventh">
							<div class="cont">
								<div>
									<div>
										<img src="<?=G5_MOBILE_URL?>/assets/img/main_best_thumb07.jpg" alt="주간인기차종 베스트7">
									</div>
									<div>
										<h5><span>[장기렌트] 7월 무보증 특가</span>제네시스 G80</h5>
										<dl>
											<dt>신차가격</dt>
											<dd>31,120,000원</dd>
										</dl>
										<dl>
											<dt>월납입료</dt>
											<dd>229,000원</dd>
										</dl>
                                    </div>
                                    <div>
										<p>세부조건</p>
										<ul>
											<li>[이번달특가] ‘오토디자인’에서만 가능한 자체 할인 행사</li>
											<li>- 차종 : 제네시스 G80</li>
											<li>- 컬러 : 선택가능</li>
											<li>- 차량가 : 31,120,000 원 </li>
											<li>- 개월수 : 48개월</li>
											<li>- 보증금/선수금 : 0%</li>
											<li>- 주행거리 : 20,000km</li>
										</ul>
									</div>
								</div>
								<div>
									<p>이벤트 특가<br />견적문의</p>
									<form action="#">
										<fieldset>
											<label for="name">이름</label>
											<input type="text" name id="name">
											<label for="phone">연락처</label>
											<input type="text" name id="phone">
											<label for="model">차종</label>
											<input type="text" name id="model">										
											<input type="button" value="견적문의">
										</fieldset>
									</form>		
									<div class="privacy">										
										<input type="checkbox" value="None" name id="privacy" checked/>
										<label for="privacy" class="checkbox"><span>개인정보취급방침 동의</span><br /><a href="#">[상세보기]</a></label>
									</div>						
								</div>
							</div>
							<a class="close" href="#close"></a>
						</div>
					</li>
					<!-- //Seventh END -->
				</ul>
			</div>
		</section>
		<!-- WEEKLY_BEST END -->

		<!-- COOPERATION -->
		<section id="cooperation">
			<div class="container">
				<h2><span>신차장기렌트사 21개 / 리스사 15개</span>국내최다 파트너쉽 협력사<b>어떤 차종이라도 괜찮습니다.</b></h2>
				<div class="rolling_list">
					<div class="slide_wrap slide_num1">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo01.jpg" alt="로고1">
					</div>
					<div class="slide_wrap slide_num2">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo02.jpg" alt="로고2">
					</div>
					<div class="slide_wrap slide_num3">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo03.jpg" alt="로고3">
					</div>
					<div class="slide_wrap slide_num4">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo04.jpg" alt="로고4">
					</div>
					<div class="slide_wrap slide_num1">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo05.jpg" alt="로고5">
					</div>
					<div class="slide_wrap slide_num2">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo06.jpg" alt="로고6">
					</div>
					<div class="slide_wrap slide_num3">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo07.jpg" alt="로고7">
					</div>
					<div class="slide_wrap slide_num4">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo08.jpg" alt="로고8">
					</div>
					<div class="slide_wrap slide_num1">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo09.jpg" alt="로고9">
					</div>
					<div class="slide_wrap slide_num2">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo10.jpg" alt="로고10">
					</div>
					<div class="slide_wrap slide_num3">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo11.jpg" alt="로고11">
					</div>
					<div class="slide_wrap slide_num4">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo12.jpg" alt="로고12">
					</div>
					<div class="slide_wrap slide_num1">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo13.jpg" alt="로고13">
					</div>
					<div class="slide_wrap slide_num2">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo14.jpg" alt="로고14">
					</div>
					<div class="slide_wrap slide_num3">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo15.jpg" alt="로고15">
					</div>
					<div class="slide_wrap slide_num4">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo16.jpg" alt="로고16">
					</div>
					<div class="slide_wrap slide_num1">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo17.jpg" alt="로고17">
					</div>
					<div class="slide_wrap slide_num2">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo18.jpg" alt="로고18">
					</div>
					<div class="slide_wrap slide_num3">
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper_logo/logo19.jpg" alt="로고19">
					</div>
				</div>
				<ul>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_01.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_02.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_03.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_04.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_05.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_06.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_07.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_08.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_09.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_10.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_11.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_12.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_13.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_14.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_15.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_16.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_17.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_18.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_19.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_20.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_21.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_22.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_23.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_24.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_25.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_26.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_27.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_28.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_29.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_30.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_31.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/logo_32.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/no_img.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/no_img.jpg" alt="브랜드 로고">
					</li>
					<li>
						<img src="<?=G5_MOBILE_URL?>/assets/img/cooper2_logo/no_img.jpg" alt="브랜드 로고">
					</li>
				</ul>
			</div>
		</section>
		<!-- COOPERATION END-->

		<!-- FOOTER -->
		<footer>
			<div class="container">
				<div class="foot_logo">
					<img src="<?=G5_MOBILE_URL?>/assets/img/foot_logo.png" alt="푸터 로고">
				</div>
				<div >
					<p>법인상호 : 오토디자인플러스 | 대표 : 박호성 | 사업장 소재지 : 서울특별시 강남구 헌릉로745길 25 A동 지층105호 | 대표번호 : 1800-4605 | 사업자등록번호 : 721-40-00501 | 통신판매업신고 : 2019-서울강남-01900 호 | 개인정보관련 문의 : auto-design@naver.com<br>Copyright &copy; AutoDesign., Ltd. All right reserved.</p>
				</div>
				<div class="hidden_footer">
				    <p>법인상호 : 오토디자인플러스 | 대표 : 박호성<br />
                       사업장 소재지 : 서울특별시 강남구 헌릉로745길 25 A동 지층105호 | 대표번호 : 1800-4605<br />
                       사업자등록번호 : 721-40-00501 | 통신판매업신고 : 2019-서울강남-01900 호<br />
                       개인정보관련 문의 : auto-design@naver.com<br />Copyright &copy; AutoDesign., Ltd. All right reserved.
				    </p>
				</div>
				<div>
					<a href="#"></a>
					<a href="#"></a>
				</div>
			</div>
		</footer>
		<!-- FOOTER END-->






		<!-- JavaScript Libraries -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

		<script src="<?=G5_MOBILE_URL?>/assets/js/jquery.bxslider.min.js"></script> 
		<script src="<?=G5_MOBILE_URL?>/assets/js/all_bottom_script.js"></script> 
		<script src="<?=G5_MOBILE_URL?>/assets/js/swiper.js"></script>
		<script src="<?=G5_MOBILE_URL?>/assets/js/script.js"></script>
		
		<script src="<?=G5_MOBILE_URL?>/assets/js/jquery-ui.min.js"></script>



		<script>
            
 
		$(document).ready(function() {
				$("#menutab li").hover(function () {
                    $(this).find("ul>li").stop().slideToggle(200);
                });	


                $("a[href='#navigation']").click(function() {
					$(".cover").css( "display" , "block"  );
					$("body").css({ "overflow": "hidden", "position" : "fixed"});  
				});
            
				$(".cover").click(function() {
                    $("nav[role='navigation']").stop().css( {"transform" : "translateZ(0)" , "transform" : "translateX(100%)"});
                    $("body").css({ "overflow": "auto", "position" : "static"});
                    $(".cover").css( "display" , "none" );
				});

        });



        </script>
          
          
          
        
        <script>
        var Nav = function($) {  
          return {    
            init: function() {
              this.cacheDom();
              this.setupAria();
              this.bindEvents();
            },    
            cacheDom: function() {
              this.$site = $('.site-wrapper');
              this.$navBtn = this.$site.find('[href="#navigation"]');
              this.$navBtnExpanded = this.$site.find('[aria-expanded]');
              this.$nav = $('#navigation');
              this.$navFirstLink = this.$nav.find('li:first-child a');
              this.$navLastLink = this.$nav.find('li:last-child a');
              this.$content = this.$site.find('.content');
            },    
            bindEvents: function() {
              this.$navBtn.on('click', this.toggleMenu.bind(this));
              this.$navBtnExpanded.on('keydown', this.setFocus.bind(this));
              this.$navFirstLink.on('keydown', this.returnFocusFirst.bind(this));
              this.$navLastLink.on('keydown', this.returnFocusLast.bind(this));
            },    
            setupAria: function() {
              this.$navBtn.attr({
                      'role': 'button',
                      'aria-controls': 'navigation',
                      'aria-expanded': 'false'
                    });      
              this.$site.attr({
                      'data-nav-visible': 'false'
                    });
            },    
            toggleMenu: function() {
              var self = $(event.currentTarget);
              event.preventDefault();    
                    self.attr('aria-expanded') === 'true' ? this.closeMenu() : this.openMenu();
            },    
            openMenu: function() {
              this.$site.attr({
                      'data-nav-visible': 'true'
                    });
              this.$navBtn.attr({
                'aria-expanded': 'true'
              });
            },    
            closeMenu: function() {
              this.$site.attr({
                      'data-nav-visible': 'false'
                    });
              this.$navBtn.attr({
                'aria-expanded': 'false'
              });
            },    
            returnFocusFirst: function() {
              if (event.keyCode === 9) {
                if (event.shiftKey) {
                  event.preventDefault();
                  this.$navBtn.focus();
                }
              }
            },    
            returnFocusLast: function() {
              if (event.keyCode === 9) {
                if (!event.shiftKey) {
                  event.preventDefault();
                  this.$navBtn.focus();
                }
              }
            },    
            setFocus: function() {
              var self = $(event.target);
              if (event.keyCode === 9) {
                if (self.attr('aria-expanded') == 'true') {
                  if (!event.shiftKey) {
                    event.preventDefault();
                    this.$navFirstLink.focus();
                  } else {
                    if (event.shiftKey) {
                      event.preventDefault();
                      this.$content.focus();
                    }
                  }
                }
              }
            }
          }

        }(jQuery);
        Nav.init();
        </script> 
            
        
        <script>

			/* 네비게이션 */
			var slideSubmenu = new SlideSubmenu($('#pm2'));

			function SlideSubmenu($this){
				$('#pm2').on('mouseenter', function(){
					$('#pm2').find('div').stop().css('height','auto').slideDown('fast');
				});

				$('.nav_btn').on('click', function(){
					$('#pm2').find('div').stop().css('height','auto').slideDown('fast');
				});

				$('.top_menu').on('mouseleave', function(){
					$('#pm2').find('div').stop().css('height','auto').slideUp('fast');
				});
			}



			jQuery(function($){
				$('.sa-tableHeader > tbody tr:first-child').each(function(){
					var theadTh = $(this).closest('table').find('thead th');
					$(this).children().each(function(idx){
						$(this).attr('data-cell-header', theadTh.eq(idx).text());
					});
				});
			});
			var slider = $('#banner .rolling_list').bxSlider({
				mode: 'horizontal'	
				,auto: true			
				,autoHover: false		
				,controls: true	
				,pager: false			
				,autoControls: false  
				,pause:5000   
				,autoDelay:0 
				,touchEnabled:true
				,pagerCustom: '.pager_right'
			});

			jQuery(function($){
				$('.sa-tableHeader > tbody tr:first-child').each(function(){
					var theadTh = $(this).closest('table').find('thead th');
					$(this).children().each(function(idx){
						$(this).attr('data-cell-header', theadTh.eq(idx).text());
					});
				});
			});
			var slider = $('#cooperation .rolling_list').bxSlider({
				mode: 'horizontal'		
				,moveSlides: 1		
				,auto: true			
				,autoHover: false		
				,maxSlides: 3		
				,slideWidth: 200
				,controls: true		
				,pager: false			
				,autoControls: false     
				,pause:1000  
				,autoDelay:0  
				,touchEnabled:true
				,pagerCustom: '.pager_right'
			});



			
			$( '#STATICMENU ul li.top_view_' ).click( function() {
				$( 'html, body' ).animate( { scrollTop : 0 }, 800 );
				return false;
			} );


		</script>
		
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script> 
		<script type="text/javascript">
			$(document).ready(function () {
				var activePos = $('.tabs-header .active').position();
				function changePos() {
					activePos = $('.tabs-header .active').position();
					$('.border').stop().css({
						left: activePos.left,
						width: $('.tabs-header .active').width()
					});
				}
				changePos();
				var tabHeight = $('.tab.active').height();

				function animateTabHeight() {
					tabHeight = $('.tab.active').height();
					$('.tabs-content').stop().css({
						height: 100 + '%'
					});
				}
				animateTabHeight();
				function changeTab() {
					var getTabId = $('.tabs-header .active a').attr('tab-id');
					$('.tab').stop().fadeOut(300, function () {
						$(this).removeClass('active');
					}).hide();

					$('.tab[tab-id=' + getTabId + ']').stop().fadeIn(300, function () {
						$(this).addClass('active');
						animateTabHeight();
					});
				}
				$('.tabs-header a').on('click', function (e) {
					e.preventDefault();
					var tabId = $(this).attr('tab-id');
					$('.tabs-header a').stop().parent().removeClass('active');
					$(this).stop().parent().addClass('active');
					changePos();
					tabCurrentItem = tabItems.filter('.active');
					$('.tab').stop().fadeOut(300, function () {
						$(this).removeClass('active');
					}).hide();
					$('.tab[tab-id="' + tabId + '"]').stop().fadeIn(300, function () {
						$(this).addClass('active');
						animateTabHeight();
					});
				});
				var tabItems = $('.tabs-header ul li');
				var tabCurrentItem = tabItems.filter('.active');
				$('#next').on('click', function (e) {
					e.preventDefault();
					var nextItem = tabCurrentItem.next();
					tabCurrentItem.removeClass('active');
					if (nextItem.length) {
						tabCurrentItem = nextItem.addClass('active');
					} else {
						tabCurrentItem = tabItems.first().addClass('active');
					}
					changePos();
					changeTab();
				});
				$('#prev').on('click', function (e) {
					e.preventDefault();
					var prevItem = tabCurrentItem.prev();
					tabCurrentItem.removeClass('active');
					if (prevItem.length) {
						tabCurrentItem = prevItem.addClass('active');
					} else {
						tabCurrentItem = tabItems.last().addClass('active');
					}
					changePos();
					changeTab();
				});
			});
		</script>



		<script type="text/javascript">
			var stmnLEFT = 10;
			var stmnGAP1 = 0; 
			var stmnGAP2 = 650; 
			var stmnBASE = 650; 
			var stmnActivateSpeed = 15;
			var stmnScrollSpeed = 10;
			var stmnTimer;  
			function RefreshStaticMenu() { 
				var stmnStartPoint, stmnEndPoint; 
				stmnStartPoint = parseInt(document.getElementById('STATICMENU').style.top, 10); 
				stmnEndPoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + stmnGAP2; 
				if (stmnEndPoint < stmnGAP1) stmnEndPoint = stmnGAP1; 
				if (stmnStartPoint != stmnEndPoint) { 
					stmnScrollAmount = Math.ceil( Math.abs( stmnEndPoint - stmnStartPoint ) / 15 ); 
					document.getElementById('STATICMENU').style.top = parseInt(document.getElementById('STATICMENU').style.top, 10) + ( ( stmnEndPoint<stmnStartPoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px'; 
					stmnRefreshTimer = stmnScrollSpeed; 
				}
				stmnTimer = setTimeout("RefreshStaticMenu();", stmnActivateSpeed); 
			} 
			function InitializeStaticMenu() {
				document.getElementById('STATICMENU').style.right = stmnLEFT + 'px'; 
				document.getElementById('STATICMENU').style.top = document.body.scrollTop + stmnBASE + 'px'; 
				RefreshStaticMenu();
			}
		</script>

<?php
include_once(G5_MOBILE_PATH.'/tail.php');
?>