<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<script>
$(function(){
	$("ul.pagination li.disabled a").click(function(){
		return false;
	});
});

</script>

<nav>
  <ul class="pagination" style="">
    <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
    <!-- 上一页超链 -->
      <a  href="?start=0${page.param}&keyword=${keywords}" aria-label="Previous" >
        <span aria-hidden="true">&laquo;</span>
      </a>
    </li>

    <li <c:if test="${!page.hasPreviouse}">class="disabled"</c:if>>
    <!-- 下一页超链 -->
      <a  href="?start=${page.start-page.count}${page.param}&keyword=${keywords}" aria-label="Previous" >
        <span aria-hidden="true">&lsaquo;</span>
      </a>
    </li>    

    <c:forEach begin="0" end="${page.totalPage-1}" varStatus="status">
    
    	
		    <li <c:if test="${status.index*page.count==page.start}">class="disabled"</c:if>>
		    <!-- 中间页超链 -->
		    	<a  
		    	href="?start=${status.index*page.count}${page.param}&keyword=${keywords}"
		    	<c:if test="${status.index*page.count==page.start}">class="current"</c:if>
		    	>${status.count}</a>
		    </li>
		
    </c:forEach>

    <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
    <!-- 下一页 -->
      <a href="?start=${page.start+page.count}${page.param}&keyword=${keywords}" aria-label="Next">
        <span aria-hidden="true">&rsaquo;</span>
      </a>
    </li>
    <li <c:if test="${!page.hasNext}">class="disabled"</c:if>>
    <!-- 最后一页 -->
      <a href="?start=${page.last}${page.param}&keyword=${keywords}" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
      </a>
    </li>
  </ul>
</nav>
