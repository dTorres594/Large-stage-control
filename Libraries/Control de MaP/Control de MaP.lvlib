<?xml version='1.0' encoding='UTF-8'?>
<Library LVVersion="20008000">
	<Property Name="Instrument Driver" Type="Str">True</Property>
	<Property Name="NI.Lib.Description" Type="Str">Este driver ayuda a controlar motores a pasos bipolares y unipolares utilizando un microcontrolador de la familia MSP430 de Texas Instruments.</Property>
	<Property Name="NI.Lib.Icon" Type="Bin">)!#!!!!!!!)!"1!&amp;!!!-!%!!!@````]!!!!"!!%!!!)Y!!!*Q(C=\&gt;1^5O.!%)&lt;B4VM%J.[9A0)6_AL;@)0V&amp;4IC&gt;[L16_AL_!K_1A==!&amp;`"Y;&lt;$KX%&lt;+-!YA;L&gt;+C1;L'`_(I_%J(Z=3V&gt;KFY[`(R\0\;VKTNJ\\?VUU5Y&gt;8YVPP;7&gt;'``5ZS8JT@LN80MZPTY]PNO`W``P^AM(@;;,H&lt;\YE)9OJ:)+SCHLX[YF?:)H?:)H?:)(?:!(?:!(?:!\O:-\O:-\O:-&lt;O:%&lt;O:%&lt;O:(XEVTE)B=ZOZ)MHCS54*J-E(3'IO28YEE]C3@R=+H%EXA34_**0(22YEE]C3@R*"['+@%EHM34?")05X6*^J-=4_*B?A7?Q".Y!E`A95E&amp;HA!1,":-(%Q#1U&amp;D]#(Q"*\!QU=&amp;HM!4?!*0Y+&amp;:A3@Q"*\!%XA9UH=FOG9_S@%QD2S0YX%]DM@R-,5=D_.R0)\(]&lt;#=()`D=2$/AM\E%/1-=DIY&amp;Y\(]@"(DM@R/"\(YXBI[H@)_]\-GPEERW.Y$)`B-4S'BSFE?!S0Y4%]BI&gt;J:8A-D_%R0);(J72Y$)`B-3$'ICQP9T*DI.(*#!Q00`VJM8[8IEOMH`7P?8R161_A[M&amp;304#K"U&amp;VAV5X4H6$6"ONWE$6RKC_M/K,K)#KB654KDLKQ/]^N;/WV):;5SNKJ*&lt;59B\[S2U0BY0W_\VWOZWWW[UWGYX7[\67KZ8'=&gt;2SO&gt;2CM8B[7^VS(I`B^&amp;[;_$S..].U^X/9`DQ-U[`@8.]00@`#/L[8`I6XIX[IP8D.MU?0W%&lt;&amp;_Q!!!!!</Property>
	<Property Name="NI.Lib.SourceVersion" Type="Int">536903680</Property>
	<Property Name="NI.Lib.Version" Type="Str">1.0.0.0</Property>
	<Item Name="3rd-party" Type="Folder">
		<Item Name="ENA_MOT_V7.ino" Type="Document" URL="../ENA_MOT_V7.ino"/>
	</Item>
	<Item Name="Controls" Type="Folder">
		<Item Name="Com Port Options.ctl" Type="VI" URL="../Public/Controls/Com Port Options.ctl"/>
		<Item Name="Command to motor.ctl" Type="VI" URL="../Public/Controls/Command to motor.ctl"/>
		<Item Name="Motor info.ctl" Type="VI" URL="../Public/Controls/Motor info.ctl"/>
		<Item Name="Motor initialization parameters--cluster.ctl" Type="VI" URL="../Public/Controls/Motor initialization parameters--cluster.ctl"/>
		<Item Name="Move motor parameters--cluster.ctl" Type="VI" URL="../Public/Controls/Move motor parameters--cluster.ctl"/>
	</Item>
	<Item Name="Public" Type="Folder">
		<Property Name="NI.LibItem.Scope" Type="Int">1</Property>
		<Property Name="NI.SortType" Type="Int">3</Property>
		<Item Name="Action-Status" Type="Folder">
			<Item Name="Initialize.vi" Type="VI" URL="../Public/Initialize.vi"/>
			<Item Name="Close.vi" Type="VI" URL="../Public/Close.vi"/>
			<Item Name="Stop.vi" Type="VI" URL="../Public/Stop.vi"/>
		</Item>
		<Item Name="Data" Type="Folder">
			<Item Name="Write.vi" Type="VI" URL="../Public/Write.vi"/>
			<Item Name="Read.vi" Type="VI" URL="../Public/Read.vi"/>
			<Item Name="Write--command.vi" Type="VI" URL="../Public/Write--command.vi"/>
			<Item Name="Write--init.vi" Type="VI" URL="../Public/Write--init.vi"/>
			<Item Name="Write--move.vi" Type="VI" URL="../Public/Write--move.vi"/>
			<Item Name="Write--clear.vi" Type="VI" URL="../Public/Write--clear.vi"/>
		</Item>
		<Item Name="Support" Type="Folder">
			<Item Name="Calculate position from parameters.vi" Type="VI" URL="../Public/Calculate position from parameters.vi"/>
			<Item Name="Check endstop str.vi" Type="VI" URL="../Public/Check endstop str.vi"/>
			<Item Name="Check info str.vi" Type="VI" URL="../Public/Check info str.vi"/>
			<Item Name="Check position str.vi" Type="VI" URL="../Public/Check position str.vi"/>
			<Item Name="Check sensor str.vi" Type="VI" URL="../Public/Check sensor str.vi"/>
			<Item Name="Get all info.vi" Type="VI" URL="../Public/Get all info.vi"/>
			<Item Name="Get position 2.vi" Type="VI" URL="../Public/Get position 2.vi"/>
			<Item Name="Read endstops.vi" Type="VI" URL="../Public/Read endstops.vi"/>
			<Item Name="Read sensor 2.vi" Type="VI" URL="../Public/Read sensor 2.vi"/>
			<Item Name="Set Laser PWM.vi" Type="VI" URL="../Public/Set Laser PWM.vi"/>
			<Item Name="Get position.vi" Type="VI" URL="../Public/Get position.vi"/>
			<Item Name="Wait -- constant.vi" Type="VI" URL="../Public/Wait -- constant.vi"/>
			<Item Name="Get motor position.vi" Type="VI" URL="../Public/Get motor position.vi"/>
		</Item>
	</Item>
</Library>
