<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
/* 必須
-----------------------------------------*/
.ex_essential {
	color: #429CC2;
	font-weight: normal;
	font-size: 12px;
}
/* エラー
-----------------------------------------*/

/* 注釈
-----------------------------------------*/
.ex_comment {
	color: #666;
}
/* フォームレイアウト
-----------------------------------------*/
.mod_form {
	margin: 0 auto;
	margin-bottom: 20px;
	padding: 20px;
	width: 700px;
	font-size: 14px;
	border: solid 5px #EEE;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.mod_form p.point {
	text-align: right;
}

.mod_form dl {
	margin: 0 0 10px 0;
	padding: 10px;
	background-color: #EEE;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.mod_form dt {
	padding: 0 0 0 10px;
	font-size: 15px;
	line-height: 1.5;
	border-left: solid 5px #CCCCCC;
}

.mod_form dd {
	padding: 10px 0 10px 30px;
	margin: 0 0 20px 0;
	position: relative;
	overflow: hidden;
	border-bottom: dotted 1px #FFF;
}

/* ドロップ入力パーツ
-----------------------------------------*/
.mod_dropform {
	clear: both;
	padding: 20px 0 0 0;
}

.mod_dropform input {
	margin: 10px 0 0 0 !important;
}

/* 入力パーツ
-----------------------------------------*/
.mod_form label {
	cursor: pointer;
	display: inline-block;
	vertical-align: text-top;
	margin: 0 10px 0 0;
	line-height: 1.2;
}

.mod_form dt label {
	vertical-align: middle;
}

.mod_form dl input {
	margin: 0 0 8px 0;
	display: inline-block;
	background-color: #FFF;
	padding: 3px;
	border: none;
	line-height: 25px;
	height: 25px;
	width: 300px;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.mod_form dl select {
	margin: 0 0 8px 0;
	display: inline-block;
	background-color: #FFF;
	padding: 3px;
	border: none;
	line-height: 25px;
	height: 25px;
	width: 300px;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.mod_form dl select.mini {
	width: 80px;
}

.mod_form dl textarea {
	margin: 0 0 8px 0;
	display: inline-block;
	background-color: #FFF;
	padding: 3px;
	border: none;
	width: 500px;
	/*border-radius*/
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
}

.mod_form dl input.checkitem {
	width: auto;
	vertical-align: middle;
	margin: 0 5px 5px 0;
}

.mod_form dl ul.floatitem li {
	float: left;
	width: 204px;
}

.mod_form dl ul li.clearitem {
	float: none;
	clear: both;
}

/* フォーカス・チェック
-----------------------------------------*/
.mod_form input:focus, .mod_form textarea:focus {
	background-color: #FFFFCC;
}

.mod_form input:checked+label {
	background-color: #FFFFCC;
	font-weight: bold;
}
/* 送信ボタンとエラー表示
-----------------------------------------*/
.mod_form_btn {
	margin: 20px 0 0 0;
	text-align: center;
}

.mod_form_btn input#back, .mod_form_btn input#submit {
	width: 150px;
	padding: 5px;
}

/* clearfix：float解除＆親要素に高さを算出させる
-----------------------------------------*/
.ex_clearfix:after {
	content: "."; /* 新しい要素を作る */
	display: block; /* ブロックレベル要素に */
	clear: both;
	height: 0;
	visibility: hidden;
}

.ex_clearfix {
	min-height: 1px;
}

* html .ex_clearfix {
	height: 1px;
}
</style>
</head>
<body>
	<div class="mod_form">
		<p class="point">
			<span class="ex_essential">[必須]</span>項目は必ずご入力ください。
		</p>
		<form method="post" action="./Forward1.jsp">
			<dl>
				<dt>
					<label for="name">名前</label>&nbsp;<span class="ex_essential">[必須]</span>
				</dt>
				<dd>
					<input type="text" id="name" value="" name="name"
						required="required" autofocus autocomplete="name" />
				</dd>

				<dt>
					<label for="kana">フリガナ</label>&nbsp;<span class="ex_essential">[必須]</span>
				</dt>
				<dd>
					<input type="text" id="kana" value="" name="kana"
						required="required" />
				</dd>

				<dt id="character">性別</dt>
				<dd>
					<div role="radiogroup">
						<label for="character_m"><input class="checkitem"
							type="radio" value="男性" id="character_m"
							aria-describedby="character" name="character" />男性</label>&nbsp; <label
							for="character_w"><input class="checkitem" type="radio"
							value="女性" id="character_w" aria-describedby="character"
							name="character" />女性</label>
					</div>
				</dd>

				<dt>
					<label for="address01">在住している都道府県</label>&nbsp;<span
						class="ex_essential">[必須]</span>
				</dt>
				<dd>
					<select id="address01" name="prefecture" required>
						<option value="" selected="selected">--選択してください--</option>
						<optgroup label="北海道・東北">
							<option value="北海道">北海道</option>
							<option value="青森県">青森県</option>
							<option value="秋田県">秋田県</option>
							<option value="岩手県">岩手県</option>
							<option value="山形県">山形県</option>
							<option value="宮城県">宮城県</option>
							<option value="福島県">福島県</option>
						</optgroup>
						<optgroup label="甲信越・北陸">
							<option value="山梨県">山梨県</option>
							<option value="長野県">長野県</option>
							<option value="新潟県">新潟県</option>
							<option value="富山県">富山県</option>
							<option value="石川県">石川県</option>
							<option value="福井県">福井県</option>
						</optgroup>
						<optgroup label="関東">
							<option value="茨城県">茨城県</option>
							<option value="栃木県">栃木県</option>
							<option value="群馬県">群馬県</option>
							<option value="埼玉県">埼玉県</option>
							<option value="千葉県">千葉県</option>
							<option value="東京都">東京都</option>
							<option value="神奈川県">神奈川県</option>
						</optgroup>
						<optgroup label="東海">
							<option value="愛知県">愛知県</option>
							<option value="静岡県">静岡県</option>
							<option value="岐阜県">岐阜県</option>
							<option value="三重県">三重県</option>
						</optgroup>
						<optgroup label="関西">
							<option value="大阪府">大阪府</option>
							<option value="兵庫県">兵庫県</option>
							<option value="京都府">京都府</option>
							<option value="滋賀県">滋賀県</option>
							<option value="奈良県">奈良県</option>
							<option value="和歌山県">和歌山県</option>
						</optgroup>
						<optgroup label="中国">
							<option value="岡山県">岡山県</option>
							<option value="広島県">広島県</option>
							<option value="鳥取県">鳥取県</option>
							<option value="島根県">島根県</option>
							<option value="山口県">山口県</option>
						</optgroup>
						<optgroup label="四国">
							<option value="徳島県">徳島県</option>
							<option value="香川県">香川県</option>
							<option value="愛媛県">愛媛県</option>
							<option value="高知県">高知県</option>
						</optgroup>
						<optgroup label="九州・沖縄">
							<option value="福岡県">福岡県</option>
							<option value="佐賀県">佐賀県</option>
							<option value="長崎県">長崎県</option>
							<option value="熊本県">熊本県</option>
							<option value="大分県">大分県</option>
							<option value="宮崎県">宮崎県</option>
							<option value="鹿児島県">鹿児島県</option>
							<option value="沖縄県">沖縄県</option>
						</optgroup>
					</select>
				</dd>

				<dt>
					<label for="email">メールアドレス</label>&nbsp;<span class="ex_essential">[必須]</span>
				</dt>
				<dd>
					<input type="text" name="mail" id="email" value=""
						required="required" aria-describedby="emailNotice"
						autocomplete="email" /><br /> <span id="emailNotice"
						class="ex_comment">確認のため再度ご記入ください</span>
				</dd>

				<dt>
					<label for="emailcheck">メールアドレス確認</label>&nbsp;<span
						class="ex_essential">[必須]</span>
				</dt>
				<dd>
					<input type="text" id="emailcheck" value="" required="required"
						aria-describedby="emailcheckNotice" /><br /> <span
						id="emailcheckNotice" class="ex_comment">確認のため再度ご記入ください</span>
				</dd>

			</dl>


			<dl>

				<dt>
					<label for="item">選択項目</label>&nbsp;<span class="ex_essential">[必須]</span>
				</dt>
				<dd>
					<select id="item" name="job" required>
						<option value="" selected="selected">--選択してください--</option>
						<option value="会社員エンジニア">会社員エンジニア</option>
						<option value="フリーランスエンジニア">フリーランスエンジニア</option>
						<option value="ニートエンジニア">ニートエンジニア</option>
						<option value="学生エンジニア">学生エンジニア</option>
						<option value="その他">その他</option>
					</select>
				</dd>

				<dt>
					<label for="color">好きな色</label>
				</dt>
				<dd>
					<select id="color" name="color">
						<option value="選択してください" selected="selected">--選択してください--</option>
						<option value="白">白</option>
						<option value="黒">黒</option>
						<option value="青">青</option>
						<option value="赤">赤</option>
						<option value="緑">緑</option>
						<option value="紫">紫</option>
						<option value="紺">紺</option>
						<option value="金">金</option>
						<option value="銀">銀</option>
						<option value="オレンジ">オレンジ</option>
						<option value="ピンク">ピンク</option>
						<option value="その他">その他</option>
					</select><br /> その他を選択された方はご記入ください。<br /> <input type="text"
						title="その他を選択された方はご記入ください。" value="" name="colorOther" />
				</dd>



				<dt>
					<label for="date">生年月日</label>
				</dt>
				<dd>
					<select id="date" class="mini" title="西暦を入力してください。" name="year">
						<option value="" selected="selected">--</option>
						<option value="2000">2000</option>
						<option value="1999">1999</option>
						<option value="1998">1998</option>
						<option value="1997">1997</option>
						<option value="1996">1996</option>
						<option value="1995">1995</option>
						<option value="1994">1994</option>
						<option value="1993">1993</option>
						<option value="1992">1992</option>
						<option value="1991">1991</option>
						<option value="1990">1990</option>
						<option value="1989">1989</option>
						<option value="1988">1988</option>
						<option value="1987">1987</option>
						<option value="1986">1986</option>
						<option value="1985">1985</option>
						<option value="1984">1984</option>
						<option value="1983">1983</option>
						<option value="1982">1982</option>
						<option value="1981">1981</option>
						<option value="1980">1980</option>
						<option value="1982">1982</option>
						<option value="1981">1981</option>
						<option value="1980">1980</option>
						<option value="1979">1979</option>
						<option value="1978">1978</option>
						<option value="1977">1977</option>
						<option value="1976">1976</option>
						<option value="1975">1975</option>
						<option value="1974">1974</option>
						<option value="1973">1973</option>
						<option value="1972">1972</option>
						<option value="1971">1971</option>
						<option value="1970">1970</option>
						<option value="1969">1969</option>
						<option value="1968">1968</option>
						<option value="1967">1967</option>
						<option value="1966">1966</option>
						<option value="1965">1965</option>
						<option value="1964">1964</option>
						<option value="1963">1963</option>
						<option value="1962">1962</option>
						<option value="1961">1961</option>
						<option value="1960">1960</option>
						<option value="1959">1959</option>
						<option value="1958">1958</option>
						<option value="1957">1957</option>
						<option value="1956">1956</option>
						<option value="1955">1955</option>
						<option value="1954">1954</option>
						<option value="1953">1953</option>
						<option value="1952">1952</option>
						<option value="1951">1951</option>
						<option value="1950">1950</option>
						<option value="1949">1949</option>
						<option value="1948">1948</option>
						<option value="1947">1947</option>
						<option value="1946">1946</option>
						<option value="1945">1945</option>
						<option value="1944">1944</option>
						<option value="1943">1943</option>
						<option value="1942">1942</option>
						<option value="1941">1941</option>
						<option value="1940">1940</option>
						<option value="1939">1939</option>
						<option value="1938">1938</option>
						<option value="1937">1937</option>
						<option value="1936">1936</option>
						<option value="1935">1935</option>
						<option value="1934">1934</option>
						<option value="1933">1933</option>
						<option value="1932">1932</option>
						<option value="1931">1931</option>
						<option value="1930">1930</option>
						<option value="1929">1929</option>
						<option value="1928">1928</option>
						<option value="1927">1927</option>
						<option value="1926">1926</option>
						<option value="1925">1925</option>
						<option value="1924">1924</option>
						<option value="1923">1923</option>
						<option value="1922">1922</option>
						<option value="1921">1921</option>
						<option value="1920">1920</option>
						<option value="1919">1919</option>
						<option value="1918">1918</option>
						<option value="1917">1917</option>
						<option value="1916">1916</option>
						<option value="1915">1915</option>
						<option value="1914">1914</option>
						<option value="1913">1913</option>
						<option value="1912">1912</option>
						<option value="1911">1911</option>
						<option value="1910">1910</option>
						<option value="1909">1909</option>
						<option value="1908">1908</option>
						<option value="1907">1907</option>
						<option value="1906">1906</option>
						<option value="1905">1905</option>
						<option value="1904">1904</option>
						<option value="1903">1903</option>
						<option value="1902">1902</option>
						<option value="1901">1901</option>
						<option value="1900">1900</option>
					</select>&nbsp;年 <select id="month" class="mini" title="月を入力してください"
						name="month">
						<option value="" selected="selected">--</option>
						<option value="01">01</option>
						<option value="02">02</option>
						<option value="03">03</option>
						<option value="04">04</option>
						<option value="05">05</option>
						<option value="06">06</option>
						<option value="07">07</option>
						<option value="08">08</option>
						<option value="09">09</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select>&nbsp;月 <select id="day" class="mini" title="日付を入力してください"
						name="day">
						<option value="" selected="selected">--</option>
						<option value="1">01</option>
						<option value="2">02</option>
						<option value="3">03</option>
						<option value="4">04</option>
						<option value="5">05</option>
						<option value="6">06</option>
						<option value="7">07</option>
						<option value="8">08</option>
						<option value="9">09</option>
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
					</select>&nbsp;日
				</dd>

				<dt>
					<label for="memo">お問い合わせ内容</label>
				</dt>
				<dd>
					<textarea name="memo" rows="10" cols="50" id="memo" name="memo"
						placeholder="お問い合わせ内容をご自由にお書きください。"></textarea>
				</dd>

			</dl>
			<div class="mod_form_btn">
				<p>
					<input type="submit" value="送信">
				</p>
				<!--mod_form_btn_end-->
			</div>

		</form>

		<!--mod_form_end-->
	</div>
</body>

</html>