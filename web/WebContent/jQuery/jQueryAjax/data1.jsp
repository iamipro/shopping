<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

  <c:out value="���ع��� ��λ��� ������ �⵵��"></c:out>

	
	${param.code }
������ ��Ģ

    - ���ø����̼ǿ��� �޶����� �κ��� ã�Ƴ���, �޶����� �ʴ� �κ����κ��� �и��Ѵ�.

    - ������ �ƴ� �������̽��� ���缭 ���α׷����Ѵ�.

    - ��Ӻ��ٴ� ������ Ȱ���Ѵ�.

    - ���� ��ȣ�ۿ��� �ϴ� ��ü ���̿����� �����ϸ� �����ϰ� �����ϴ� �������� ����ؾ� �Ѵ�.

    - Ŭ������ Ȯ�忡 ���ؼ��� ���� �־�� ������ �ڵ� ���濡 ���ؼ��� ���� �־�� �Ѵ�.

       (OCP : Open-Closed Principle)

    - �߻�ȭ�� �Ϳ� �����ϵ��� ������. ����Ŭ������ �����ϵ��� ������ �ʵ��� �Ѵ�.

    - �ּ� ���� ��Ģ - ���� ģ�� ģ���ϰ��� ����϶�.

       (���� �� ������ ��ü�� �޼��常 ȣ���Ѵ�.

         1. ��ü ��ü / 2. �޼��忡 �Ű������� ���޵� ��ü / 3. �� �޼��忡�� �����ϰų� �ν��Ͻ��� ���� ��ü / 4. �� ��ü�� ���ϴ� ���� ���)

    - �渮��� ��Ģ - ���� �������� ������. ���� ���� �帮�ڽ��ϴ�.

    - Ŭ������ �ٲٴ� ������ �� ���� ���̾�� �Ѵ�.

    + ... ���߿� ��� �ٲ� ���ΰ�?







��Ʈ��Ƽ�� ����(Strategy Pattern)

    - �˰������� �����ϰ� ������ ĳ��ȭ�Ͽ� ��ȯ�ؼ� ����� �� �ֵ��� �����.

    - �˰������� ����ϴ� Ŭ���̾�Ʈ�ʹ� ���������� �˰������� ������ �� �ִ�.

    - ������ ����Ѵ�.

    - �Ϲ������� ����Ŭ������ ����� ����� ����Ͽ� �������� �ش�ȭ�ϱ� ���� �뵵�� ���δ�.

    - ��: QuarkBehavior & FlyBehavior

    




	

������ ����(Observer Pattern)

    - �� ��ü�� ���°� �ٲ�� �� ��ü�� �����ϴ� �ٸ� ��ü������ ������ ����

       �ڵ����� ������ ���ŵǴ� ������� �ϴ��(one-to-many) �������� �����Ѵ�.

    - ����(Subject) & ������(Observer)

    - Observable & Observer:

         Observable �� register, remove, notify �� �ְ�, 

         Observer �� update �� �ִ�. (notify ���� update �� ȣ��)

    - ��: �Ź� ���� ����, ������ �ý���

    




���ڷ����� ����(Decorator Pattern)

    - ��ü�� �߰����� ����� �������� ÷���Ѵ�.

    - ���ڷ����ʹ� ����Ŭ������ ����� ���� ���ؼ� ����� �����ϰ� Ȯ���� �� �ִ� ����� �����Ѵ�.    

    - ��: ��Ÿ���� Ŀ��

    

    

���丮 ����(Factory Pattern)    

    - ���丮 �޼��� ���� :

       ��ü�� �����ϱ� ���� �������̽��� �����ϴµ�, � Ŭ������ �ν��Ͻ��� �������� ����Ŭ�������� �����ϰ� �����.

       Ŭ������ �ν��Ͻ��� ����� ���� ����Ŭ������ �ñ��.

    - ��ǰ�� �����ϴ� �κа� ����ϴ� �κ��� �и���ų �� �ִ�.

    - �߻� ���丮 ���� :

       �������̽��� �̿��Ͽ� ���� ������, �Ǵ� �����ϴ� ��ü�� ���� Ŭ������ �������� �ʰ� �����Ѵ�.

       ���� Ŭ������ ���� Ŭ������ ���� ���������.







�̱��� ����(Singleton Pattern)

    - �ش� Ŭ������ �ν��Ͻ��� �ϳ��� ���������,

       ��𼭵��� �� �ν��Ͻ��� ������ �� �ֵ���(���� ����) �ϱ� ���� ����

       

       

Ŀ�ǵ� ����(Command Pattern)

    - �䱸 ������ ��ü�� ĸ��ȭ �� �� ������, �Ű������� �Ἥ ���� ���� �ٸ� �䱸 ������ ������� �� �ִ�.

       ���� ��û ������ ť�� �����ϰų� �α׷� ����� ���� ������, �۾���� ��ɵ� ���� �����ϴ�.

    - ��: ������

    - �������� doGet(), doPost() �Ǵ� ��Ʈ������ Action() �޼��嵵 Ŀ�ǵ� �������� ������?

    




����� ����(Adapter Pattern)

    - �� Ŭ������ �������̽��� Ŭ���̾�Ʈ���� ����ϰ��� �ϴ� �ٸ� �������̽��� ��ȯ�Ѵ�.

       ����͸� �̿��ϸ� �������̽� ȣȯ�� ���� ������ ���� �� �� ���� Ŭ�������� �����ؼ� �� �� �ִ�.  

       




�ۻ�� ����(Facade Pattern)

    - � ����ý����� �Ϸ��� �������̽��� ���� ���յ� �������̽��� �����Ѵ�.

       �ۻ�忡�� ������ �������̽��� �����ϱ� ������ ����ý����� �� ���� ����� �� �ִ�.

    - ����ý����� ȣ���� �ۻ�忡�� ó�����ش�. (�⺻ ���� ȣ�� ��������...)

    - �Ϸ��� Ŭ�����鿡 ���� �������̽��� �ܼ�ȭ ��Ų��.

    

    - �� ���Ϻ� ������:

       ���ڷ����� ���� : �������̽��� �ٲ��� �ʰ� å��(���)�� �߰�

       ����� ���� : �� �������̽��� �ٸ� �������̽��� ��ȯ

       �ۻ�� ���� : �������̽��� �����ϰ� �ٲ�







���ø� �޼��� ����(Template Method Pattern)

    - �޼��忡�� �˰������� ����� �����Ѵ�.

       �˰������� ���� �ܰ� �� �Ϻδ� ����Ŭ�������� ������ �� �ִ�.

       ���ø� �޼��带 �̿��ϸ� �˰������� ������ �״�� �����ϸ鼭 ����Ŭ�������� Ư�� �ܰ踦 �������� �� �ִ�.

    - ��Ʈ��Ƽ�� ���ϰ� �ٸ� ��:

       ���ø� �޼��� ������ �˰������� ���並 �����Ѵ�. ���� �۾� �� �Ϻδ� ����Ŭ�������� ó��.

       ��Ʈ��Ƽ�� ������ ��ü ������ ���ؼ� �˰������� ĸ��ȭ �� ����

    - ��) Arrays.sort(�迭); --- compareTo() �� �����ϵ��� �Ǿ� �ִ�.

            Applet , init(), start(), stop(), destory()

            �׷��ٸ� ���������� ���ø� �޼��尡 ���̴� �ű���. init() - service() - destory()




            

���ͷ����� ����(Iterator Pattern)

    - �÷��� ���� ����� �����Ű�� �����鼭��

       �� ����ü �ȿ� ����ִ� ��� �׸� ������ �� �ְ� ���ִ� ����� �����Ѵ�.

    - �÷����� ������ �巯���� �����鼭 �÷��ų� �ִ� ��� ��ü�鿡 ���� �ݺ��۾��� �� �ִ�.

    




������Ʈ ����(Composite Pattern)

    - ��ü���� Ʈ�� ������ �����Ͽ� �κа� ��ü�� ��Ÿ���� ���������� ���� �� �ִ�.

       �� ������ �̿��ϸ� Ŭ���̾�Ʈ���� ���� ��ü�� �ٸ� ��ü��� ������

       ���� ��ü(composite)�� �Ȱ��� ������� �ٷ� �� �ִ�.

    - Ŭ���̾�Ʈ���� ��ü �÷��ǰ� ���� ��ü�� �Ȱ��� ������ ó���� �� �ִ�.

    - ��) Ʈ�� ������ ����, ���丮 ����

    - ��) XMLObject ��ü�� ������Ʈ ������ ������ �� �ƴұ�

    




������Ʈ ����(State Pattern)

    - ��ü�� ���� ���°� �ٲ� ���� ��ü�� �ൿ�� �ٲ� �� �ִ�.

       ��ġ ��ü�� Ŭ������ �ٲ�� �Ͱ� ���� ����� ���� �� �ִ�.

    - ���� ��ȯ�� �帧�� �����ϴ� �ڵ带 ��� �ʿ� ����ִ��� �� �����ؾ� �Ѵ�.

       (���� ��ü����, Context ��ü����)

    - �� ���¸� Ŭ������ ĸ��ȭ�����ν� ���߿� ������Ѿ� �ϴ� ������ ����ȭ��ų �� �ִ�.

    - ��Ʈ��Ƽ�� ����:

          � Ŭ������ �ν��Ͻ��� ����� �� �ν��Ͻ����� � �ൿ�� �����ϴ� ���� ��ü�� �ǳ��ش�.

       ������Ʈ ����:

          ���ؽ�Ʈ ��ü�� ������ �� �ʱ� ���¸� �������ִ� ��� ���ķδ� ���ؽ�Ʈ ��ü�� �˾Ƽ� ���¸� ����.

          

          

���Ͻ� ����(Proxy Pattern)

    - � ��ü�� ���� ������ �����ϱ� ���� �뵵�� �븮���̳� �뺯�ο� �ش��ϴ� ��ü�� �����ϴ� ����

    - �ٸ� ��ü�� �뺯�Ѵ� ��ü�� ���� �� ��ü�� ���� ������ ������ �� �ִ�.

    - �������Ͻ�(remote proxy): ���� ��ü�� ���� ���� ����

                                                Ŭ���̾�Ʈ�� ���� ��ü ���̿��� ������ ������ ����

       �������Ͻ�(virtual proxy): �����ϱ� ����(�ν��Ͻ��� ����� �� ���� ����� ���) �ڿ��� ���� ���� ����

       ��ȣ���Ͻ�(protection proxy): ���� ������ �ʿ��� �ڿ��� ���� ���� ����

                                                     ȣ���ϴ� ���� ���ѿ� ���� ��ü�� �ִ� �޼ҵ忡 ���� ���� ����

       ��ȭ�� ���Ͻ�: �Ϸ��� ��Ʈ��ũ �ڿ��� ���� ���� ����

       ����Ʈ ���۷��� ���Ͻ�: �� ��ü�� ������ ������ �߰� �ൿ�� ����. ��ü�� ���� ���۷��� ������ ���� ��

       ĳ�� ���Ͻ�: ����� ���� ��� �۾��� ����� �ӽ÷� ����

                          �� ���� ���Ͻ� �Ǵ� ������ ���� �� �ۺ����� �ý��� ��� ���

       ����ȭ ���Ͻ�: ���� �����忡�� �� ��ü�� �����ϴ� ��� �����ϰ� �۾��� ó���� ����(�л� ȯ�� ��� ���)

       ���⵵ ���� ���Ͻ�: ������ Ŭ�������� ���տ� ���� ������ �����ϰ� ���⵵�� ������

                                     �ۻ�� ���Ͻö���� ��.

                                     ���Ͻÿ����� ������ ���������� �ۻ�� ���Ͽ����� ��ü �������̽��� ����

       ���� ���� ���Ͻ�: Ŭ���̾�Ʈ���� �ʿ�� �� ������ ��ü�� ����Ǵ� ���� ������Ŵ���ν� ��ü�� ���� ����

       

    - �Ʒ� ��ü���� ��� Ŭ���̾�Ʈ�� ��ü ���̿� ������ ��û�� �����Ѵ�.

         ���ڷ����� ����: Ŭ������ ���ο� �ൿ�� �߰��ϱ� ���� �뵵

         ����� ����: �ٸ� ��ü�� �������̽��� �ٲ��ֱ� ���� �뵵

         ���Ͻ� ����: � Ŭ������ ���� ������ �����ϱ� ���� �뵵

    - java.reflect.Proxy �� ����� ����Ǿ� �ִ�.

    

    

������ ���� ����

    - �����̶� Ư�� ���ؽ�Ʈ ������ �־��� ������ ���� �ذ�å�̴�.

    - � ���ؽ�Ʈ ������ �Ϸ��� �������ǿ� ���� ������ ���� �� �ִ� ������ �����ߴٸ�,

       �� �������� ������ ������ �޼��ϱ� ���� �ذ�å�� ã�Ƴ� �� �ִ� �������� �����ϸ� �ȴ�.    

      




������ �� �߰� ����      

    - ������ ������ ������ ����� ���ʿ��ϰ� ������ �ڵ带 �ʷ��� �� �ִ�.

       �׻� ���� ������ �ذ�å���� ������ �޼��� �� �ֵ��� �ϰ�, �ݵ�� �ʿ��� ���� ������ ������ ��������.      

    - �ڵ��� �� � ������ ����ϰ� �ִ��� �ּ����� ��������.

       Ŭ������ �޼��� �̸��� ���� ���� ��� ���� ������ �и��ϰ� �巯�� �� �ֵ��� �غ���.

       �ٸ� �����ڵ��� �� �ڵ带 �� �� ������ ��� �����ߴ��� �ξ� ������ ������ �� �ִ�.







�� �� �� ������ ���� ����Ʈ : http://vincehuston.org/dp/