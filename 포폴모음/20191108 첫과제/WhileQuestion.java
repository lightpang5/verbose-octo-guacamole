import java.util.Scanner;
class WhileQuestion 
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		//Q1
		System.out.print("Q1.당신의 띠를 알려드립니다 본인이 태어난 연도를 입력하세요.");
		int year = sc.nextInt();
		int dd = year%12;
		switch(dd){
			case 4 : System.out.println("쥐");
			break;
			case 5 : System.out.println("소");
			break;
			case 6 : System.out.println("호랑이");
			break;
			case 7 : System.out.println("토끼");
			break;
			case 8 : System.out.println("용");
			break;
			case 9 : System.out.println("뱀");
			break;
			case 10 : System.out.println("말");
			break;
			case 11 : System.out.println("양");
			break;
			case 0 : System.out.println("원숭이");
			break;
			case 1 : System.out.println("닭");
			break;
			case 2 : System.out.println("개");
			break;
			case 3 : System.out.println("돼지");
			break;
		}
		//Q2    1 3 5 7 9 11 13 15 17 19 ... 홀수 
		System.out.println("Q2입니다 아무 숫자나 입력하면 진행합니다.");
		int Q = sc.nextInt();
		System.out.println("Q2 입니다. 홀수와 3의 짝수 배수의 합을 출력합니다.");
		int num=1;
		int sum=0;
		while(sum<1000){
		
			if(num%2==1||num%6==0){
				sum+=num;
			}
			num++;
		}
		System.out.println(sum);
		
		//Q3
		System.out.println("Q3입니다 아무 숫자나 입력하면 진행합니다.");
		 Q = sc.nextInt();
		System.out.println("Q3 입니다. 1~100 그리고 100~1 을 순서대로 출력합니다.");
		int revnum =1;
		int loop=0;
		int reverse=1;
		while(loop<200){
			if(revnum<=100){
				System.out.print(revnum+"\t");
			revnum++;
			}
			else{
				System.out.print(revnum-reverse+"\t");
				reverse++;
			}
			loop++;
		}
		System.out.println("");
		//Q4
		System.out.println("Q3입니다 아무 숫자나 입력하면 진행합니다.");
		Q = sc.nextInt();
		int gugu1,gugu2;
		System.out.println("Q4 입니다.2,4,6,8단을 해당하는 단까지만 구합니다.");
		for(gugu1 = 1; gugu1<=9; gugu1++)//gu=1~9
		{
			for(gugu2 = 1; gugu2<=gugu1; gugu2++){
				if(gugu1%2==0){
					System.out.println(gugu1+" * "+gugu2+"="+gugu1*gugu2);
				}
			}
		}
	
		//Q5 베이스는 While 문이다! Keypoint ! While 문은 내가 원하는 상황 즉 잘못된 상황이 아닐 때 까지 돌려준다. 
				//for문은 내가 언제 잘못된 상황이 끝날지 모르므로 정해주기 어려워서 While 문을 쓰는게 이득 !
		System.out.println("Q5입니다 아무 숫자나 입력하면 진행합니다.");
		Q = sc.nextInt();
		System.out.println("Q5입니다. 두 수를 포함한 사이의 수들의 구구단을 출력합니다."+"\t두 숫자를 입력해주세요.");
		int n1,n2;
		int n3;
		int gu, gu2;
		n1 = sc.nextInt();
		n2 = sc.nextInt();
		while(true){
			if((n1<1||n1>9)||(n2<1||n2>9)||(n1>n2)){
				System.out.println("두 숫자를 다시 입력해주세요..");
				n1 = sc.nextInt();
				n2 = sc.nextInt();
			}
		//
			for(gu = n1; gu<=n2; gu++)//gu=1~9	
			{
				for(gu2 = 1; gu2<=9; gu2++){
					System.out.print(gu+" * "+gu2+" = "+gu*gu2+"\t");	
				}
				System.out.println(" ");
			}
			break;
		} 
		/* 선생님이 풀으신 답

		int in = sc.nextInt();
		int in = sc.nextInt();

		while(in <0||in2<0||in>in2||in>9||in2>9) >>>> while (조건식) while 안이 true 이면 계속해서 돌리기 때문에 1~9 사이 수가 아니라면 계속해서 반복
		{
			in = sc.nextInt();
			in2 = sc.nextInt();
		}
		for(int dan=in; dan<= in2; dan++)
		{
			for(int gu = 1; gu<= 9; gu++){
				System.out.println(dan+"*"+gu+"="+(dan*gu));
			}
		}
		*/
		//	Q6
		int dan;
		int dansum=0;
		System.out.println("Q6입니다. 1부터 입력받은 숫자까지 합계를 출력합니다."+"\t 1보다 큰 숫자를 입력해주세요.");
		dan = sc.nextInt();
		while(dan==1){
			System.out.println("1보다 더 큰 숫자를 입력하세요");
			dan = sc.nextInt();
		}
		for(int i=1;i<=dan;i++){
			dansum+=i;
		}
		System.out.println("1부터 입력받은 숫자의 합계는 : "+dansum);
		
		//  Q7
		int snum1;
		int snum2;
		int numsum=0;
		System.out.println("Q7입니다. 두 숫자사이의 합계를 출력합니다."+"\t 첫번째 숫자가 더 크도록 두수를 입력해주세요.");
		snum1 = sc.nextInt();
		snum2 = sc.nextInt();
		while(snum1<snum2){
			System.out.println("첫번째 숫자가 더 크게 입력하세요");
			snum1 = sc.nextInt();
			snum2 = sc.nextInt();
		}
		for(int i=snum1;i>=snum2;i--){
			numsum+=i;
		}
		System.out.println("두 숫자사이의 합계는 : "+numsum);
	
		//Q8
		int znum1;
		int znum2;
		int znumsum=0;
		System.out.println("Q8입니다. 두 숫자사이의 합계를 출력합니다."+"\t 숫자 두개를 입력해주세요.");
		znum1 = sc.nextInt();
		znum2 = sc.nextInt();
		/*swtich(znum1){
			case >=znum2 : for(int i=znum1;i>=znum2;i--){
				znumsum+=i;
			}
			break;
			case <znum2 : for(int i=znum2;i>=znum1;i--){
				znumsum+=i;
			}
			break;
			case 0||((znum1==znum2)&&znum1==0) :
				break;
		}*/
		if(znum1==0||znum2==0){
				System.out.println("시스템을 종료합니다");	
		}
		else if(znum1>=znum2){
			for(int i=znum1;i>=znum2;i--){
				znumsum+=i;
			}
			System.out.println("두 숫자사이의 합계는 : "+znumsum);
		}
		else if(znum1<znum2) {
			for(int i=znum2;i>=znum1;i--){
				znumsum+=i;
			}
			System.out.println("두 숫자사이의 합계는 : "+znumsum);
		}
	}
}

