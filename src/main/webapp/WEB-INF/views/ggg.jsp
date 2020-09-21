<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- Five -->
					</header>
						<p>
						고객님께서 선택하신 상권은 <span class="purple_span">${requestScope.changeCodeName.getChange_coname() }</span> 입니다. 고객님께서 선택하신 상권을 분석한 결과
						<c:if test="${requestScope.change_id.getChange_id() eq 1}">
						<span class="purple_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 단계에 해당합니다. 
						이것은 현재 가장 정체되고 있는 상권을 나타내는 것으로 다른 상권을 선택하시는 것을 권유합니다.
						</c:if>
						<c:if test="${requestScope.change_id.getChange_id() eq 2}">
						<span class="purple_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 단계에 해당합니다. 
						이것은 현재 축소되고 있는 상권을 나타내는 것으로 다른 상권을 선택하는 것을 고려해보셔야 할 것 같습니다.
						</c:if>
						<c:if test="${requestScope.change_id.getChange_id() eq 3}">
						<span class="purple_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 단계에 해당합니다. 
						이것은 확장되고 있는 상권을 나타내는 것으로 앞으로 성공할 가능성이 높기 때문에 긍정적으로 고려해보셔야 할 것 같습니다.
						</c:if>
						<c:if test="${requestScope.change_id.getChange_id() eq 4}">
						<span class="purple_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 단계에 해당합니다. 
						이것은 현재 다이나믹하게 확장되는 것을 나타내는 것으로 고객님의 안목이 아주 높으십니다. 매우 긍정적으로 검토하시면 될 것 같습니다.</c:if>
						그러나 이것은 <span class="purple_span">${requestScope.area_coname} </span>상권의 평균적인 상태를 나타내는 것으로 고객님께서 선택하신 서비스 업종에 따라 
						분석 결과가 달라질 수 있습니다. 보다 더 자세한 사항은 아래에서 설명드리도록 하겠습니다.						
						</p>
						<ul class="actions">
							<li><a href="#6_art" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#4_art" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#6_art" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Six -->
					</header>
						<p>
						<span class="other_span">${requestScope.serviceCodeName.getServiceCodeName()}</span> 업종이 운영되는 영업 개월 평균은 <span class="other_span">${ requestScope.oper_month_avg }</span>이고 폐업 개월 평균은 <span class="other_span">${requestScope.close_month_avg }</span> 입니다. 이것은 <c:if test="${ requestScope.oper_month.getOper_month() gt requestScope.oper_month_avg}">
						골목상권의 평균 영업 개월 수인 <span class="other_span">${requestScope.oper_month_avg}</span> 보다 큽니다.
						</c:if>
						<c:if test="${ requestScope.oper_month.getOper_month() le requestScope.oper_month_avg}">
						골목상권의 평균 영업 개월 수인 <span class="other_span">${requestScope.oper_month_avg}</span> 보다 작습니다.
						</c:if>
						<c:if test="${requestScope.close_month.getClose_month() gt requestScope.close_month_avg}">
						또한, 골목상권의 평균 폐업 개월 수인 <span class="other_span">${requestScope.close_month_avg}</span> 보다 큽니다.
						</c:if>
						<c:if test="${requestScope.close_month.getClose_month() le requestScope.close_month_avg}">
						또한, 골목상권의 평균 폐업 개월 수인 <span class="other_span">${requestScope.close_month_avg}</span> 보다 작습니다.
						</c:if>
						</p>
						<ul class="actions">
							<li><a href="#7_art" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#5_art" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#7_art" class="scrolly next disabled"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>
			
		<!-- 7_art-->
						</header>
						<p>
						<span class="green_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 상권의 총 직장인구 수는 <span class="green_span"> ${requestScope.all_job_num.getAll_job_num()}</span> 입니다.
						<c:if test="${requestScope.all_job_num.getAll_job_num() gt requestScope.all_job_num_avg}">
						이것은 골목상권의 평균 총 직장인구 수인 <span class="green_span"> ${requestScope.all_job_num_avg}</span> 보다 크므로, 평균보다 직장인구 수가 많다고 볼 수 있습니다.
						그러므로 창업을 할 때 직장 고객들을 대상으로 마케팅을 진행하는 것이 좋습니다.
						</c:if>
						<c:if test="${requestScope.all_job_num.getAll_job_num() le requestScope.all_job_num_avg}">
						이것은 골목상권의 평균 총 직장인구 수인<span class="green_span"> ${requestScope.all_job_num_avg}</span> 보다 작으므로, 평균보다 직장인구 수가 적다고 볼 수 있습니다.
						그러므로 창업을 할 때 직장 고객들 보다는 다른 고객들을 우선적으로 고려해 마케팅을 진행하는 것이 좋습니다.
						</c:if>				
						
						</p>
						<ul class="actions">
							<li><a href="#8_art" class="button alt scrolly big"">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#6_art" class="prev disabled"><span class="icon fa-chevron-up"></span></a>
						<a href="#8_art" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Two -->
						</header>
						<p>
						<span class="other_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 상권의 총 상주인구 수는 <span class="other_span">${requestScope.all_living_num.getAll_living_num()}</span> 입니다.
						<c:if test="${requestScope.all_living_num.getAll_living_num() gt requestScope.all_living_num_avg}">
						이것은 골목상권의 평균 총 상주인구 수인 <span class="other_span">${requestScope.all_living_num_avg}</span>보다 크므로, 평균보다 상주인구 수가 많다고 볼 수 있습니다.
						
						</c:if>
						<c:if test="${requestScope.all_living_num.getAll_living_num() le requestScope.all_living_num_avg}">
						이것은 골목상권의 평균 총 상주인구 수인 <span class="other_span">${requestScope.all_living_num_avg}</span>  보다 작으므로, 평균보다 상주인구 수가 적다고 볼 수 있습니다.
						그러므로 창업을 할 때 상주인구 고객들 보다는 다른 고객들을 우선적으로 고려해 마케팅을 진행하는 것이 좋습니다.
						</c:if>
						</p>									
						<ul class="actions">
							<li><a href="#9_art" class="button alt scrolly big"">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#7_art" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#9_art"" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Three -->
						</header>
						<p>
						<span class="blue_span">${requestScope.areaCodeName.getAreaCodeName()}</span> 상권의 아파트 단지수는 <span class="blue_span">${requestScope.apart_num.getApart_num()}</span>입니다.
						<c:if test="${requestScope.apart_num.getApart_num() gt requestScope.apart_num_avg}">
						이것은 골목상권의 평균 총 아파트 단지 수인 <span class="blue_span">${requestScope.apart_num_avg}</span> 보다 크므로, 아파트 단지 수가 평균보다 많다고 볼 수 있습니다.
						그러므로 창업을 할 때 아파트 거주 고객들을 대상으로 마케팅을 진행하는 것이 좋습니다.						
						</c:if>
						<c:if test="${requestScope.apart_num.getApart_num() le requestScope.apart_num_avg}">
						이것은 골목상권의 평균 총 아파트 단지 수인 <span class="blue_span">${requestScope.apart_num_avg}</span> 보다 작으므로, 아파트 단지 수가 평균보다 적다고 볼 수 있습니다.
						그러므로 창업을 할 때 아파트 거주 고객들 보다는 다른 고객들을 우선적으로 고려해 마케팅을 진행하는 것이 좋습니다.
						</c:if>						
						</p>	
						<ul class="actions">
							<li><a href="#four" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#two" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#four" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>

		<!-- Four -->

					</header>
						<p>
						<span id="s_color">${requestScope.areaCodeName.getAreaCodeName()}</span> 상권의 점포수는 <span id="s_color">${requestScope.store_num.getStore_num()}개</span> 이고,
						고객님이 선택하신 업종과 유사한 업종의 점포수는 <span id="s_color">${requestScope.sim_store_num.getSim_store_num()}개</span> 입니다.
						<span id="s_color">${requestScope.areaCodeName.getAreaCodeName()}</span> 상권의 개업률은 <span id="s_color">${requestScope.start_rate.getStart_rate()}%</span> 이고,
						 개업 점포 수는 <span id="s_color">${requestScope.start_store_num.getStart_store_num()}개</span> 입니다. 
						또한, <span id="s_color">${requestScope.areaCodeName.getAreaCodeName()}</span> 상권의 폐업률은 <span id="s_color">${requestScope.close_rate.getClose_rate()}%</span> 이고,
						 폐업 점포 수는 <span id="s_color">${requestScope.close_store_num.getClose_store_num()}개</span> 입니다.
						
						</p>
							<ul class="actions">
							<li><a href="#five" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#three" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#five" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>
			
			
			
			
					<!-- Five -->

					</header>
						<p>
						<span class="purple_span">${requestScope.areaCodeName.getAreaCodeName()}</span>상권의 폐업률 <span class="purple_span">${requestScope.close_rate.getClose_rate()}%</span>은 폐업률의 평균인 						
						<c:if test="${requestScope.close_rate.getClose_rate() gt requestScope.close_rate_avg}">
						<span class="purple_span"> ${requestScope.close_rate_avg}%</span> 보다 크므로, 폐업률이 평균보다 높다고 할 수 있습니다. 따라서 폐업률을 기준으로 봤을 때 , 다른 상권을 선택하시는 것을 추천합니다.
						</c:if>
						<c:if test="${requestScope.close_rate.getClose_rate() le requestScope.close_rate_avg}">
						<span class="blue_span"> ${requestScope.close_rate_avg}%</span> 보다 작으므로, 폐업률이 평균보다 낮다고 할 수 있습니다. 따라서 패업률을 기준으로 봤을때, 현재 상권으로 선택하시는 것을 추천합니다.
						</c:if>
						</p>
						<ul class="actions">
							<li><a href="#6_art" class="button alt">Read More</a></li>
						</ul>
					</div>
					<div class="postnav">
						<a href="#4_art" class="scrolly prev"><span class="icon fa-chevron-up"></span></a>
						<a href="#6_art" class="scrolly next"><span class="icon fa-chevron-down"></span></a>
					</div>
				</div>
			</article>
</body>
</html>