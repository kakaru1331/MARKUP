        var campsiteGroup;
	    var comforts;
	    var activity;
	    
	    <c:forEach items="${list}" var="list">
		    campsiteGroup = '${list.campsite_group}';
		    comforts = '${list.comforts}';
		    activity = '${list.activity}';
	    </c:forEach>
	    
	   
	    function setCampsiteGroup(str) {	    	
	    	if (str.includes("오토캠핑")) {
	    		var ac1 = document.querySelector('#cg1');
	    		ac1.setAttribute("checked", '');
	    	}
	    	
			if (str.includes("백팩킹")) {
				var ac2 = document.querySelector('#cg2');
	    		ac2.setAttribute("checked", '');
	    	}
			
			if (str.includes("글램핑")) {
				var ac3 = document.querySelector('#cg3');
	    		ac3.setAttribute("checked", '');
	    	}
	    
			if (str.includes("카라반")) {
				var ac2 = document.querySelector('#cg4');
	    		ac4.setAttribute("checked", '');				
	    	}
	    }
	    
	    
	    function setComforts(str) {
			if (str.includes("샤워실")) {
				var comforts1 = document.querySelector('#comforts1');
				comforts1.setAttribute("checked", '');
	    	}
			
			if (str.includes("화장실")) {
				var comforts2 = document.querySelector('#comforts2');
				comforts2.setAttribute("checked", '');
	    	}
			
			if (str.includes("매점")) {
				var comforts3 = document.querySelector('#comforts3');
				comforts3.setAttribute("checked", '');
	    	}
			
			if (str.includes("흡연실")) {
				var comforts4 = document.querySelector('#comforts4');
				comforts4.setAttribute("checked", '');
	    	}
			
			if (str.includes("수영장")) {
				var comforts5 = document.querySelector('#comforts5');
				comforts5.setAttribute("checked", '');
	    	}	
	    }
	    
	    function setActivity(str) {
			if (str.includes("낚시")) {
				var activity1 = document.querySelector('#activity1');
				activity1.setAttribute("checked", '');
	    	}
			
			if (str.includes("등산")) {
				var activity1 = document.querySelector('#activity2');
				activity2.setAttribute("checked", '');
	    	}
			
			if (str.includes("스키")) {
				var activity1 = document.querySelector('#activity3');
				activity3.setAttribute("checked", '');
	    	}
			
			if (str.includes("계곡")) {
				var activity1 = document.querySelector('#activity4');
				activity4.setAttribute("checked", '');
	    	}
			
			if (str.includes("해수욕")) {
				var activity1 = document.querySelector('#activity5');
				activity5.setAttribute("checked", '');
	    	}
	    }
	    
	    window.document.onload = setCampsiteGroup(campsiteGroup);
	    window.document.onload = setComforts(comforts);
	    window.document.onload = setActivity(activity);