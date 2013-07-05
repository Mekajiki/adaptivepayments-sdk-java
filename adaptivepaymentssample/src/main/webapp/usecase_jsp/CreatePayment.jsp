<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.net.URL"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Adaptive Payments - Delayed Payment</title>
<%
	URL currentURL = new URL(request.getRequestURL().toString());
	URL returnURL = new URL(currentURL, "../index.html");
%>
</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h3>Delayed Payment</h3>
			<div id="apidetails"><p>The Pay API operation is used to transfer
				funds from a sender's PayPal account to one or more receivers'
				PayPal accounts.</p></div>
		</div>
		<form method="POST">
			<div id="request_form">
				<div class="params">
					<div class="param_name">Currency Code*</div>
					<div class="param_value">
						<input type="text" name="currencyCode" value="USD" />
					</div>

					<div class="param_name">Action Type*</div>
					<div class="param_value">
						<select name="actionType">
							<option value="CREATE">Create</option>
						</select>
					</div>
					<div class="param_name">Cancel URL*</div>
					<div class="param_value">
						<input type="text" name="cancelURL" value="<%=returnURL%>" />
					</div>
					<div class="param_name">Return URL*</div>
					<div class="param_value">
						<input type="text" name="returnURL" value="<%=returnURL%>" />
					</div>
					<div class="param_name">IPN Notification URL (For receiving
						IPN call back from PayPal)</div>
					<div class="param_value">
						<input type="text" name="ipnNotificationURL" value="" />
					</div>
					
					<div class="section_header">ReceiverList</div>
					<div class="note">Receiver is the party where funds are
						transferred to. </div>
					<table>
						<tr>
							<th class="param_name">Amount*(Double)</th>
							<th class="param_name">E-mail</th>

						</tr>
						<tr>
							<td class="param_value"><input type="text" name="amount"
								value="2.00" />
							</td>
							<td class="param_value"><input type="text" name="mail"
								value="" />
							</td>
						</tr>

					</table>
					<div class="submit">
						<input type="submit" name="PayBtn" value="Pay" />
					</div>
					<br /> <a href="../index.html">Home</a>
				</div>
			</div>
		</form>

	</div>
</body>
</html>