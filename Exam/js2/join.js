
		function jb()
		{
				alert("사용이 가능할껍니다.")
		}
		function email(mail)
		{
			console.log(mail.length);
			for(i=0;i<mail.length;i++)
				{
					if(mail.options[i].selected)
						my_form.em2.value=mail.options[i].value
				}
		}
		function address()
		{
			alert("아직 기능을 사용할 수 없습니다.")
		}
		function sign(mw)
		{
			var id_len = my_form.id.value.length
			var pass_len = my_form.pw.value.length
			var str=" "
			if(mw.fw.checked)
				str +="FW "
			if(mw.mf.checked)
				str +="MF "
			if(mw.df.checked)
				str +="DF "
			if(mw.gk.checked)
				str +="GK "
			for(var i=0; i < mw.gender.length; i++)
				{
					if(mw.gender[i].checked == true)
					{
						var gen = mw.gender[i].value
					}
				}
			for(var j=0; j < mw.team.length; j++)
				{
					if(mw.team[j].checked == true)
					{
						var tm = mw.team[j].value
					}
				}
			if((pass_len >= 4) && (id_len >= 4))
			{
				if(my_form.pw.value!=my_form.pwch.value)
					alert("비밀번호와 비밀번호 확인이 같은지 확인해주세요.")
				else{
				alert("회원가입 성공")
				alert("**입력 정보 출력** \nID : "+my_form.id.value+"\n이름 : "+my_form.name.value+"\n성별 : "+gen+"\n휴대폰 번호 : "+my_form.hp1.value+" - "+my_form.hp2.value+" - "+my_form.hp3.value+"\n이메일 주소 : "+my_form.em1.value+" @ "+my_form.em2.value+"\n주소 : "+my_form.adrnum.value+"\n"+my_form.simpleadr.value+"\n"+my_form.detailadr.value+"\n생년월일 : "+mw.yy.value+"."+mw.mm.value+"."+mw.dd.value+"\n실력 : "+mw.lv.value+"\n소속팀 유무 : "+tm+"\n선호포지션 : "+str+"\n추천인 ID : "+my_form.chuchun.value+"\n비밀번호 확인 질문 : "+my_form.passwd2.value+"\n비밀번호 답변 : "+my_form.passwd2ans.value)
				}
			}
			else
			{
				if(my_form.pw.value!=my_form.pwch.value)
					alert("비밀번호와 비밀번호 확인이 같은지 확인해주세요.")
				else{
				alert("4자 이상의 아이디와 암호만 유효합니다 다시 입력하세요.")
				my_form.id.value=""
				my_form.id.focus()
				my_form.pw.value=""
				my_form.pw.focus()
				}
			}
		}
