<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<%@ include file="include/head.htm" %>
<body>
    <div class="container">
        <%@ include file="include/menu.htm" %>
        <p><img src="image/error.png" width="100" height="100" alt="ERROR"> Profile ${message}</p>
        <p><br> ${profil}</p>
        <form class="form-horizontal">
        		<fieldset>
        		  	<div class="FormProfil">
        				<legend>Профиль</legend>

        		          <!-- Text input-->
        		          <div class="form-group">
        		            <label class="col-md-4 control-label" for="name">Имя</label>
        		          	<div class="col-md-4">
        		            	<input id="name" name="name" type="text" placeholder="" class="form-control input-md">
        		          	</div>
        		          </div>


        		          <div class="form-group">
        		            <label class="col-md-4 control-label" for="lastName">Фамилия</label>
        		            <div class="col-md-4">
        		            	<input id="lastName" name="lastName" type="text" placeholder="" class="form-control input-md">
        		            </div>
        		          </div>


        		        <p style="color: yellow">День Рождения:</p>
        		        <div class="row">
        		        	<div class="col-md-1">
        		                  <select id="dayBirth" name="dayBirth" class="form-control">
        		                    <option value="1">1</option>
        		                    <option value="2">2</option>
        		                    <option value="3">3</option>
        		                    <option value="4">4</option>
        		                    <option value="5">5</option>
        		                    <option value="6">6</option>
        		                    <option value="7">7</option>
        		                    <option value="8">8</option>
        		                    <option value="9">9</option>
        		                    <option value="10">10</option>
        		                    <option value="11">11</option>
        		                    <option value="12">12</option>
        		                    <option value="13">13</option>
        		                    <option value="14">14</option>
        		                    <option value="15">15</option>
        		                    <option value="16">16</option>
        		                    <option value="17">17</option>
        		                    <option value="18">18</option>
        		                    <option value="19">19</option>
        		                    <option value="20">20</option>
        		                    <option value="21">21</option>
        		                    <option value="22">22</option>
        		                    <option value="23">23</option>
        		                    <option value="24">24</option>
        		                    <option value="25">25</option>
        		                    <option value="26">26</option>
        		                    <option value="27">27</option>
        		                    <option value="28">28</option>
        		                    <option value="29">29</option>
        		                    <option value="30">30</option>
        		                    <option value="31">31</option>
        		                  </select>
        		             </div>

        		            <div class="col-md-2">
        		                  <select id="mountBirth" name="mountBirth" class="form-control">
        		                    <option value="1">Январь</option>
        		                    <option value="2">Февраль</option>
        		                    <option value="3">Март</option>
        		                    <option value="4">Апрель</option>
        		                    <option value="5">Май</option>
        		                    <option value="6">Июнь</option>
        		                    <option value="7">Июль</option>
        		                    <option value="8">Август</option>
        		                    <option value="9">Сентябрь</option>
        		                    <option value="10">Октябрь</option>
        		                    <option value="11">Ноябрь</option>
        		                    <option value="12">Декабрь</option>
        		                  </select>
        		             </div>



        					<div class="col-md-2">
        		               <input id="yearBirth" name="yearBirth" type="text" placeholder="" class="form-control input-md">
        		            </div>
        				</div>

        				<div class="form-group">
        		            <label class="col-md-4 control-label" for="pol">Пол</label>
        		            <div class="col-md-4">
        		            	<div class="radio">
        		              		<label for="pol-0">
        		                		<input type="radio" name="pol" id="pol-0" value="men" checked="checked">Муж
        		              		</label>
        		            	</div>

        			            <div class="radio">
        			              	<label for="pol-1">
        			                	<input type="radio" name="pol" id="pol-1" value="wom">Жен
        			              	</label>
        			            </div>
        		            </div>
        		        </div>

        				<p style="color: yellow">Адрес:</p>
        		        <div class="form-group">
        		            <label class="col-md-4 control-label" for="city">Город</label>
        		            <div class="col-md-4">
        		            	<input id="city" name="city" type="text" placeholder="" class="form-control input-md">
        		            </div>
        		        </div>


        				<div class="form-group">
        		            <label class="col-md-4 control-label" for="street">Улица</label>
        		            <div class="col-md-4">
        		            <input id="street" name="street" type="text" placeholder="" class="form-control input-md">

        		            </div>
        		          </div>


        		        <div class="form-group">
        		            <label class="col-md-4 control-label" for="home">Дом</label>
        		            <div class="col-md-4">
        		        	    <input id="home" name="home" type="text" placeholder="" class="form-control input-md">
        		            </div>
        		        </div>

        		        <div class="form-group">
        		            <label class="col-md-4 control-label" for="korpus">Корпус</label>
        		            <div class="col-md-4">
        			            <input id="korpus" name="korpus" type="text" placeholder="" class="form-control input-md">
        		            </div>
        		        </div>


        		        <div class="form-group">
        		            <label class="col-md-4 control-label" for="kvartira">квартира</label>
        		            <div class="col-md-4">
        		        	    <input id="kvartira" name="kvartira" type="text" placeholder="" class="form-control input-md">
        		            </div>
        		        </div>


        		        <div class="form-group">
        		            <label class="col-md-4 control-label" for="telefon">Тел</label>
        		            <div class="col-md-4">
        		        	    <input id="telefon" name="telefon" type="text" placeholder="+375" class="form-control input-md">
        		            </div>
        		         </div>


        		        <div class="form-group">
        		            <label class="col-md-4 control-label" for="about">О себе</label>
        		            <div class="col-md-4">
        			            <textarea class="form-control" id="about" name="about"></textarea>
        		            </div>
        		        </div>


        		        <div class="form-group">
        		            <label class="form-inline my-2 my-lg-0" for="ok"></label>
        		            <div class="col-md-4">
        		        	    <button id="ok" name="ok" class="btn btn-outline-primary my-2 my-sm-0">Сохранить</button>
        		            </div>
        		        </div>
        		  	</div>
        		</fieldset>
        	</form>
    </div>
</body>
</html>


