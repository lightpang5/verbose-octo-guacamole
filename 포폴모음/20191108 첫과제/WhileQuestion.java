import java.util.Scanner;
class WhileQuestion 
{
	public static void main(String[] args) 
	{
		Scanner sc = new Scanner(System.in);
		//Q1
		System.out.print("Q1.����� �츦 �˷��帳�ϴ� ������ �¾ ������ �Է��ϼ���.");
		int year = sc.nextInt();
		int dd = year%12;
		switch(dd){
			case 4 : System.out.println("��");
			break;
			case 5 : System.out.println("��");
			break;
			case 6 : System.out.println("ȣ����");
			break;
			case 7 : System.out.println("�䳢");
			break;
			case 8 : System.out.println("��");
			break;
			case 9 : System.out.println("��");
			break;
			case 10 : System.out.println("��");
			break;
			case 11 : System.out.println("��");
			break;
			case 0 : System.out.println("������");
			break;
			case 1 : System.out.println("��");
			break;
			case 2 : System.out.println("��");
			break;
			case 3 : System.out.println("����");
			break;
		}
		//Q2    1 3 5 7 9 11 13 15 17 19 ... Ȧ�� 
		System.out.println("Q2�Դϴ� �ƹ� ���ڳ� �Է��ϸ� �����մϴ�.");
		int Q = sc.nextInt();
		System.out.println("Q2 �Դϴ�. Ȧ���� 3�� ¦�� ����� ���� ����մϴ�.");
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
		System.out.println("Q3�Դϴ� �ƹ� ���ڳ� �Է��ϸ� �����մϴ�.");
		 Q = sc.nextInt();
		System.out.println("Q3 �Դϴ�. 1~100 �׸��� 100~1 �� ������� ����մϴ�.");
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
		System.out.println("Q3�Դϴ� �ƹ� ���ڳ� �Է��ϸ� �����մϴ�.");
		Q = sc.nextInt();
		int gugu1,gugu2;
		System.out.println("Q4 �Դϴ�.2,4,6,8���� �ش��ϴ� �ܱ����� ���մϴ�.");
		for(gugu1 = 1; gugu1<=9; gugu1++)//gu=1~9
		{
			for(gugu2 = 1; gugu2<=gugu1; gugu2++){
				if(gugu1%2==0){
					System.out.println(gugu1+" * "+gugu2+"="+gugu1*gugu2);
				}
			}
		}
	
		//Q5 ���̽��� While ���̴�! Keypoint ! While ���� ���� ���ϴ� ��Ȳ �� �߸��� ��Ȳ�� �ƴ� �� ���� �����ش�. 
				//for���� ���� ���� �߸��� ��Ȳ�� ������ �𸣹Ƿ� �����ֱ� ������� While ���� ���°� �̵� !
		System.out.println("Q5�Դϴ� �ƹ� ���ڳ� �Է��ϸ� �����մϴ�.");
		Q = sc.nextInt();
		System.out.println("Q5�Դϴ�. �� ���� ������ ������ ������ �������� ����մϴ�."+"\t�� ���ڸ� �Է����ּ���.");
		int n1,n2;
		int n3;
		int gu, gu2;
		n1 = sc.nextInt();
		n2 = sc.nextInt();
		while(true){
			if((n1<1||n1>9)||(n2<1||n2>9)||(n1>n2)){
				System.out.println("�� ���ڸ� �ٽ� �Է����ּ���..");
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
		/* �������� Ǯ���� ��

		int in = sc.nextInt();
		int in = sc.nextInt();

		while(in <0||in2<0||in>in2||in>9||in2>9) >>>> while (���ǽ�) while ���� true �̸� ����ؼ� ������ ������ 1~9 ���� ���� �ƴ϶�� ����ؼ� �ݺ�
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
		System.out.println("Q6�Դϴ�. 1���� �Է¹��� ���ڱ��� �հ踦 ����մϴ�."+"\t 1���� ū ���ڸ� �Է����ּ���.");
		dan = sc.nextInt();
		while(dan==1){
			System.out.println("1���� �� ū ���ڸ� �Է��ϼ���");
			dan = sc.nextInt();
		}
		for(int i=1;i<=dan;i++){
			dansum+=i;
		}
		System.out.println("1���� �Է¹��� ������ �հ�� : "+dansum);
		
		//  Q7
		int snum1;
		int snum2;
		int numsum=0;
		System.out.println("Q7�Դϴ�. �� ���ڻ����� �հ踦 ����մϴ�."+"\t ù��° ���ڰ� �� ũ���� �μ��� �Է����ּ���.");
		snum1 = sc.nextInt();
		snum2 = sc.nextInt();
		while(snum1<snum2){
			System.out.println("ù��° ���ڰ� �� ũ�� �Է��ϼ���");
			snum1 = sc.nextInt();
			snum2 = sc.nextInt();
		}
		for(int i=snum1;i>=snum2;i--){
			numsum+=i;
		}
		System.out.println("�� ���ڻ����� �հ�� : "+numsum);
	
		//Q8
		int znum1;
		int znum2;
		int znumsum=0;
		System.out.println("Q8�Դϴ�. �� ���ڻ����� �հ踦 ����մϴ�."+"\t ���� �ΰ��� �Է����ּ���.");
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
				System.out.println("�ý����� �����մϴ�");	
		}
		else if(znum1>=znum2){
			for(int i=znum1;i>=znum2;i--){
				znumsum+=i;
			}
			System.out.println("�� ���ڻ����� �հ�� : "+znumsum);
		}
		else if(znum1<znum2) {
			for(int i=znum2;i>=znum1;i--){
				znumsum+=i;
			}
			System.out.println("�� ���ڻ����� �հ�� : "+znumsum);
		}
	}
}

