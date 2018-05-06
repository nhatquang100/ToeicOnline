<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/templates/taglib.jsp"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<div class="content">
	<div class="content-box">
		<div class="header">
			<div class="h3-container">
				<h3 class="title_link">
					<a href="#">Từ vựng TOEIC </a> » <a href="/category/5">600
						TỪ VỰNG THÔNG DỤNG CHO KỲ THI TOEIC</a>
				</h3>
				
			</div>
		</div>

		<div class="box-body">
			<div class="img"
				style="background: url(/upload/2016/05/9106.jpg); background-size: cover;"></div>
			<div class="info">
				<h3>Chủ Đề : ${cateVocal.categoryVocabularyName }</h3>
				<!-- <div class="meter">
					<span style="width: 0%"></span>
				</div>
				<i class="fa fa-plus-square"></i> Mức độ hoàn thành: <b>0%</b><br>
				<i class="fa fa-plus-square"></i> Tổng số câu hỏi: <b>54</b><br>
				<i class="fa fa-plus-square"></i> Tổng số câu hỏi đã hoàn thành: <b>0</b><br>
				<a class="button" id="exam-lnk" href="/do-exam/56">Học ngay</a> -->
			</div>
		</div>
		<div class="infobox">
			<div
				class="content-box vip-upgrade ui-accordion ui-widget ui-helper-reset"
				id="accordion" role="tablist">

				<h3
					class="ui-accordion-header ui-state-default ui-accordion-header-active ui-state-active ui-corner-top ui-accordion-icons"
					role="tab" id="ui-id-8" aria-controls="ui-id-9"
					aria-selected="true" aria-expanded="true" tabindex="0">
					<span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-s"></span>Danh
					sách từ mới
				</h3>
					<h2 style="color: red">Vocaburaly</h2>
					<table class="table">
						<thead>
							<tr>
								<th>Word</th>
								<th>Transcription</th>
								<th>Vietnamese Equivalents</th>
							</tr>
						</thead>
						
						<tbody>
						<c:forEach items="${vocal}" var="vocalDetail">
							<tr class="active">
								<td>${vocalDetail.vocabularyname }</td>
								<td>${vocalDetail.spelling }</td>
								<td>${vocalDetail.vocabularymean }</td>
							</tr>
						</c:forEach>
						</tbody>
					</table>


				<%-- 	<div
					class="box-body ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active"
					id="ui-id-9" aria-labelledby="ui-id-8" role="tabpanel"
					aria-hidden="false" style="display: block;">
					<img src="${pageContext.request.contextPath}/templates/public/images/vocabulary/contact.png" alt="contact" style="width: 100%">
				</div> --%>

				<!-- <h3
					class="ui-accordion-header ui-state-default ui-corner-all ui-accordion-icons"
					role="tab" id="ui-id-10" aria-controls="ui-id-11"
					aria-selected="false" aria-expanded="false" tabindex="-1">
					<span class="ui-accordion-header-icon ui-icon ui-icon-triangle-1-e" hidden = "hidden"></span>Word
					Family
				</h3>
				<div
					class="box-body ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom"
					id="ui-id-11" aria-labelledby="ui-id-10" role="tabpanel"
					aria-hidden="true" style="display: none;">
					<img src="/templates/public/images/vocabulary/contact.png" style="width: 100%">
				</div> -->

			</div>
		</div>
		<script>
			$(function() {
				$("#accordion").accordion({
					active : 0,
					heightStyle : "content",
				});
			});
		</script>
	</div>
	<!-- <div class="content-box comment-box" hidden="hidden">
		<div class="comment-header">
			<h3>Bình luận (10)</h3>
		</div>
		<div class="comment-new">
			<div class="img">
				<img width="100%"
					src="/upload/avatars/16d57655e6d391c337f0ee829b25541d">
			</div>
			<form class="form new_comment" id="exam-comment">
				<textarea id="question" name="content"
					placeholder="Bình luận của bạn"></textarea>
				<input type="hidden" name="section" id="form-section"
					value="comment"> <input type="hidden" name="reply_for"
					id="form-reply_for" value="0"> <input type="hidden"
					name="cat" id="form-cat" value="56"> <input type="submit"
					value="Gửi">
			</form>
		</div>
		<div class="clearboth">&nbsp;</div>
		<div class="comment-body">
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/2f4b02ae2e890e35fc830e9128867c20">
				</div>
				<div class="comment-item">
					<span class="chat-user">nguyen thức</span>
					<p class="chat-content">Có 1 câu hỏi nghĩa của agreement: gợi ý
						là (n., a) mutual arrangement, a unit . Theo tôi nghĩ ở đây phải
						là unity chứ không phải là unit...Đề nghị ad xem lại.</p>
					<p class="chat-time">2017-11-01 01:40:16</p>
					<button class="reply-for" reply-for="602" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/a70fc20e1efd03c13db52360dc2ce689">
				</div>
				<div class="comment-item">
					<span class="chat-user">Toan Nguyen huu</span>
					<p class="chat-content">
						k có nghĩa tiếng việt à ad <br>
					</p>
					<p class="chat-time">2017-08-27 21:54:39</p>
					<button class="reply-for" reply-for="513" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/fdae952276fa6a91946a07157831d267">
				</div>
				<div class="comment-item">
					<span class="chat-user">Tran Loc</span>
					<p class="chat-content">Bạn ơi, đáp án phải chuẩn chứ. Trả lời
						abide by mà đáp án lại ghi abideby thì sao mà củng cố ngữ pháp
						vững cho học sinh được</p>
					<p class="chat-time">2016-09-10 11:16:19</p>
					<button class="reply-for" reply-for="171" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/0b99dc2df441b8325c970ec1caf57206">
				</div>
				<div class="comment-item">
					<span class="chat-user">huonglien le</span>
					<p class="chat-content">grammar</p>
					<p class="chat-time">2016-09-10 11:16:03</p>
					<button class="reply-for" reply-for="168" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/3f7ce7fe93fab83e7c5729b60b7a367e">
				</div>
				<div class="comment-item">
					<span class="chat-user">Minh Nguyễn</span>
					<p class="chat-content">
						cho mình hỏi, toeic123 có trên app ko ạ <br>
					</p>
					<p class="chat-time">2016-09-10 11:15:54</p>
					<button class="reply-for" reply-for="166" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/0b99dc2df441b8325c970ec1caf57206">
				</div>
				<div class="comment-item">
					<span class="chat-user">huonglien le</span>
					<p class="chat-content">muốn tải bài về thì làm thế nào ?</p>
					<p class="chat-time">2016-08-24 00:35:32</p>
					<button class="reply-for" reply-for="141" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
				<div class="chat-item-reply">
					<div class="img">
						<img width="100%"
							src="/upload/avatars/7ae2e547b71e9e62cf15a24030f8a98d.png">
					</div>
					<div class="comment-item">
						<span class="chat-user">Admin <span class="vip">VIP</span></span>
						<p class="chat-content">Dạ. Bạn muốn tải bài về gì ạ?</p>
						<p class="chat-time">2016-08-24 01:19:41</p>
					</div>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/4c057ed0f36efafe0aa3e11c1e91b83d">
				</div>
				<div class="comment-item">
					<span class="chat-user">Diệu Linh Lê</span>
					<p class="chat-content">
						bó tay quá đi thôi <br>chả hiểu gì hết
					</p>
					<p class="chat-time">2016-08-24 00:35:13</p>
					<button class="reply-for" reply-for="130" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
				<div class="chat-item-reply">
					<div class="img">
						<img width="100%"
							src="/upload/avatars/7ae2e547b71e9e62cf15a24030f8a98d.png">
					</div>
					<div class="comment-item">
						<span class="chat-user">Admin <span class="vip">VIP</span></span>
						<p class="chat-content">Dạ. Đây là nghĩa tiếng anh của các từ
							TOEIC. Mình có thể ấn "Học Ngay" Để học từng từ bạn nhé</p>
						<p class="chat-time">2016-08-24 01:19:40</p>
					</div>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/37b41c1ee3989e1213389997cf04c251.jpg">
				</div>
				<div class="comment-item">
					<span class="chat-user"> Trang-g Trần-n</span>
					<p class="chat-content">Cho mình hỏi mình nạp VIP thông qua
						chuyển khoản được không.</p>
					<p class="chat-time">2016-08-13 01:23:31</p>
					<button class="reply-for" reply-for="109" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
				<div class="chat-item-reply">
					<div class="img">
						<img width="100%"
							src="/upload/avatars/4c057ed0f36efafe0aa3e11c1e91b83d">
					</div>
					<div class="comment-item">
						<span class="chat-user">Diệu Linh Lê</span>
						<p class="chat-content">ko biết</p>
						<p class="chat-time">2016-08-24 00:35:15</p>
					</div>
				</div>
				<div class="clearboth">&nbsp;</div>
				<div class="chat-item-reply">
					<div class="img">
						<img width="100%"
							src="/upload/avatars/7ae2e547b71e9e62cf15a24030f8a98d.png">
					</div>
					<div class="comment-item">
						<span class="chat-user">Admin <span class="vip">VIP</span></span>
						<p class="chat-content">Dạ được bạn nhé. Trong phần nạp VIP có
							phương thức 2: Thanh toán qua chuyển khoản ngân hàng ạ</p>
						<p class="chat-time">2016-08-13 01:22:51</p>
					</div>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/15beaa909c2cb9cae0c1ff016d1b5a5b.jpg">
				</div>
				<div class="comment-item">
					<span class="chat-user">Nguyễn Thị Thùy Dung</span>
					<p class="chat-content">Website rất hay. Cảm ơn BQT nhé !</p>
					<p class="chat-time">2016-08-13 01:16:37</p>
					<button class="reply-for" reply-for="110" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
				<div class="chat-item-reply">
					<div class="img">
						<img width="100%"
							src="/upload/avatars/7ae2e547b71e9e62cf15a24030f8a98d.png">
					</div>
					<div class="comment-item">
						<span class="chat-user">Admin <span class="vip">VIP</span></span>
						<p class="chat-content">Dạ cảm ơn bạn. Website sẽ cố gắng nâng
							cấp thêm nhiều tài liệu để phục vụ mọi người tốt hơn trong thời
							gian tới</p>
						<p class="chat-time">2016-08-13 01:22:53</p>
					</div>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
			<div class="chat-item">
				<div class="img">
					<img width="100%"
						src="/upload/avatars/76ac05d743058a4de1715e6942cdab13.jpg">
				</div>
				<div class="comment-item">
					<span class="chat-user"> Hoa Lê</span>
					<p class="chat-content">Ad cho mình hỏi làm sao kiểm tra biết
						mình đã Nạp VIP hay chưa</p>
					<p class="chat-time">2016-08-13 01:16:35</p>
					<button class="reply-for" reply-for="111" section="comment">Trả
						lời</button>
				</div>
				<div class="clearboth">&nbsp;</div>
				<div class="chat-item-reply">
					<div class="img">
						<img width="100%"
							src="/upload/avatars/7ae2e547b71e9e62cf15a24030f8a98d.png">
					</div>
					<div class="comment-item">
						<span class="chat-user">Admin <span class="vip">VIP</span></span>
						<p class="chat-content">Bạn ấn vào PROFILE có thông tin tài
							khoản và ngày hết hạn bạn nhé</p>
						<p class="chat-time">2016-08-13 01:22:54</p>
					</div>
				</div>
				<div class="clearboth">&nbsp;</div>
			</div>
		</div>
		<div class="spacing"></div>
		<div class="paging">
			<ul class="pagination-sm pagination" id="paging-56"></ul>
		</div>
		<script>
			$('#paging-56').twbsPagination({
				totalPages : 0,
				visiblePages : 3,
				href : '/exam/56?page={{number}}',
				next : '',
				last : '»',
				first : '',
				prev : '',
				onPageClick : function(event, page) {
					//
				}
			});
		</script>
	</div> -->
</div>
<script>
	$('#paging-56').twbsPagination({
		totalPages : 0,
		visiblePages : 3,
		href : '/exam/56?page={{number}}',
		next : '',
		last : '»',
		first : '',
		prev : '',
		onPageClick : function(event, page) {
			//
		}
	});
</script>