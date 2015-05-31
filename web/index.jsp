<%-- 
    Document   : index
    Created on : 20.04.2015, 20:25:58
    Author     : Katya Omelyashchik
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/valid.js"></script>


<div id="left">
    <form>
    <table id="headimg">
        <tr>
            <td><img src="img/chelsea/chelsea1.jpg" width="150px" onclick="showInfAboutChelsea()"></td>                       
            <td><img src="img/manchester/manchester.png" onclick="showInfAboutMU()"></td>                       
            <td><img src="img/arsenal/arsenal.jpg" onclick="showInfAboutArsenal()"</td>
        </tr>
    </table>    
    <div  id="chelsea" class="background" style="background-image:url(${pageContext.request.contextPath}/img/chelsea/chelseaBackground.jpg);display:none">
        <div class="transparentChelsea">
            Футбольный клуб «Че́лси» (англ. Chelsea F.C.;) — профессиональный английский футбольный клуб из западного Лондона. Основан в 1905 году, выступает в английской Премьер-лиге и провёл бо́льшую часть своей истории в высшем дивизионе английского футбола. Один из клубов-основателей английской Премьер-лиги в 1992 году. «Челси» пять раз становился чемпионом Англии, семь раз выигрывал Кубок Футбольной ассоциации и пять раз Кубок Футбольной лиги. Клуб добивался успеха на европейской арене, выиграв Лигу чемпионов УЕФА, дважды Кубок обладателей кубков УЕФА, Лигу Европы УЕФА и Суперкубок УЕФА. «Челси» является одним из четырёх клубов, наряду с «Ювентусом», «Аяксом» и «Баварией», и единственным британским клубом, который выиграл все три главные клубные турниры УЕФА, а также единственным клубом владевшим двумя главными еврокубками одновременно.
            Несмотря на своё название, клуб располагается не в районе Челси, а в соседнем Фулеме. Домашний стадион «Челси», «Стэмфорд Бридж», на котором клуб играет с момента основания, был открыт в 1877 году. Стадион занимает 9-е место по вместимости в Англии и вмещает 41 837 болельщиков. Владельцем клуба со 2 июля 2003 года является российский бизнесмен Роман Абрамович.
            На данный момент «Челси» занимает 7-е место в списке клубов с самыми высокими доходами. 7 мая 2015 года журнал Forbes оценил клуб в $1,37 млрд. (£903 млн.).
            Основная форма — синие футболки и трусы с белыми гетрами, подобная комбинация используется с 1960-х годов. Клубная эмблема несколько раз видоизменялась в попытках модернизации клубной символики; текущая эмблема, церемониальный синий лев, держащий посох, является модифицированной версией эмблемы, впервые принятой в 1953 году; данная версия эмблемы была принята в 2005 году. Клуб занимает шестое место по посещаемости домашнего стадиона за все время участия в английском футболе. Средняя посещаемость домашних матчей в сезоне 2013/14 составила 41 481 человека, это шестое место в Премьер-лиге.
            Главный тренер команды — Жозе Моуринью, назначенный на эту должность 3 июня 2013 года после ухода Рафаэля Бенитеса. Действующий капитан клуба — Джон Терри, сменивший в августе 2004 года ушедшего Марселя Десайи.
        </div>
    </div>
    <div id="mu" class="background" style="background-image:url(${pageContext.request.contextPath}/img/manchester/muBackground.jpg);display:none">
        <div class="transparentChelsea">
            Футбольный клуб «Манче́стер Юна́йтед» (англ. Manchester United Football Club;) — английский профессиональный футбольный клуб из Стретфорда, Большой Манчестер. Был основан в 1878 году под названием «Ньютон Хит (Ланкашир энд Йоркшир Рейлуэй)», в 1902 году изменил название на «Манчестер Юнайтед». Один из самых популярных футбольных клубов в мире. Один из клубов-основателей английской Премьер-лиги в 1992 году.
            Домашний стадион «Юнайтед», «Олд Траффорд», был открыт в 1910 году. Он является крупнейшим после «Уэмбли» футбольным стадионом в Англии и вмещает более 75 тысяч зрителей.
            «Манчестер Юнайтед» является одним из самых успешных английских клубов по количеству титулов за всю историю, а за последние 20 лет — самым успешным клубом в Англии, выиграв 27 крупных трофеев с ноября 1986 года, когда команду возглавил сэр Алекс Фергюсон. В сезоне 2012/13 «Юнайтед» выиграл в высшем дивизионе чемпионата Англии в рекордный 20-й раз. В 1968 году «Манчестер Юнайтед» стал первым английским клубом, выигравшим Кубок европейских чемпионов, победив в финале португальскую «Бенфику» со счётом 4:1. В 1999 году клуб во второй раз выиграл главный европейский клубный трофей, одолев в финале мюнхенскую «Баварию» со счётом 2:1. В 2008 году «Юнайтед» вновь выиграл Лигу чемпионов, обыграв в финале лондонский «Челси»[13]. Кроме того, «Юнайтед», наравне с «Арсеналом», является рекордсменом по количеству выигранных Кубков Англии (11 побед).
            На данный момент «Юнайтед» входит в тройку футбольных клубов с самыми высокими доходами. 7 мая 2015 года журнал Forbes оценил клуб в $3,1 млрд. (£2,04 млрд).
            Главным тренером команды является нидерландский специалист Луи ван Гал. Капитаном команды является Уэйн Руни, сменивший ушедшего из клуба летом 2014 года Неманью Видича.
        </div>
    </div>
    <div id = "arsenal" class="background" style="background-image:url(${pageContext.request.contextPath}/img/arsenal/arsenalBackground.jpg);display:none">
        <div class="transparentChelsea">
            «Арсена́л» (англ. Arsenal Football Club;) — английский профессиональный футбольный клуб из Северного Лондона, выступающий в Премьер-лиге. Основан в 1886 году. Является одним из самых успешных клубов Англии: клуб 13 раз становился чемпионом Англии, 11 раз выигрывал Кубок Англии. Домашним стадионом клуба является «Эмирейтс», вмещающий 60 361 зрителя.
            «Арсенал» провел бо́льшую часть своей истории в высшем дивизионе английского футбола, в 1992 году стал одним из клубов-основателей английской Премьер-лиги. Также клуб является рекордсменом по количеству сезонов подряд, проведённых в высшем дивизионе чемпионата Англии, начиная с 1919 года.
            В 2014 году журнал Forbes опубликовал рейтинг самых дорогих футбольных клубов мира, в котором «Арсенал» занял 5 место. Стоимость клуба оценена в $1,33 млрд.
            Главным тренером «Арсенала» c 1996 года является Арсен Венгер. Действующий капитан команды — Микель Артета, который был назначен на эту должность 9 августа 2014 года вместо Томаса Вермалена, ушедшего в «Барселону».    
        </div>
    </div>
        </form>
</div>






