<html>
	<head>
		<script src="jquery-2.1.1.js" ></script>
		<title>Tic Tac Toe</title>
		<link rel="stylesheet" href="Style.css">
	</head>

	<body onload="$.fn.main()">
		<p>Tic Tac Toe<p>
		<form action="index.php">
			<table border="1">
				<?php
					for($i=0; $i<9; $i++)
					{
						if($i==0)
						{	
							echo '<tr>';
						}
						if($i==3 || $i==6)
						{
							echo '</tr><tr>';
						}
					
						printf ('<td><input type="button" name="b%d" id="b%d" value="-" onclick="clicked()" class="la"></td>', $i, $i, $i);

						if($i==8)
						{
							echo '</tr>';
						}					
					}
				?>
			</table>
			<input type="submit" value="Play Again" id="submit"/>
		</form>
		<div class="developer">Developed by WS</div>
		<script>
			var t1=0, t2=0, p=0;
			$.fn.main=function(){
			//	alert("ss");
				if(p==0)
					rando();
				$(".la").click(function(){
					if(this.value=='-' && p==0)
					{
						this.value="O";
						check();
						rando();
					}
					else
						alert("Cannot Select it buddy!");
					if(p==0)
						check();
				});
			}
			
			function rando()
			{
			//	alert("aa");
				if(p==0)
				do{
					do{
						b = Math.floor(Math.random() * 10);	
						a = "#" + "b" + b;
					}while($(a).val()=="X" || $(a).val()=="O");
					$(a).val('X');//alert(a);
				}while(b<0 || b>=9);
				check();
			}
			
			function check()
			{
				if(($('#b0').val()=="O" && $('#b1').val()=="O" && $('#b2').val()=="O") || ($('#b3').val()=="O" && $('#b4').val()=="O" && $('#b5').val()=="O") || ($('#b6').val()=="O" && $('#b7').val()=="O" && $('#b8').val()=="O") || ($('#b0').val()=="O" && $('#b3').val()=="O" && $('#b6').val()=="O") || ($('#b1').val()=="O" && $('#b4').val()=="O" && $('#b7').val()=="O") || ($('#b2').val()=="O" && $('#b5').val()=="O" && $('#b8').val()=="O") || ($('#b0').val()=="O" && $('#b4').val()=="O" && $('#b8').val()=="O") || ($('#b2').val()=="O" && $('#b4').val()=="O" && $('#b6').val()=="O"))
					t1=1;
				if(($('#b0').val()=="X" && $('#b1').val()=="X" && $('#b2').val()=="X") || ($('#b3').val()=="X" && $('#b4').val()=="X" && $('#b5').val()=="X") || ($('#b6').val()=="X" && $('#b7').val()=="X" && $('#b8').val()=="X") || ($('#b0').val()=="X" && $('#b3').val()=="X" && $('#b6').val()=="X") || ($('#b1').val()=="X" && $('#b4').val()=="X" && $('#b7').val()=="X") || ($('#b2').val()=="X" && $('#b5').val()=="X" && $('#b8').val()=="X") || ($('#b0').val()=="X" && $('#b4').val()=="X" && $('#b8').val()=="X") || ($('#b2').val()=="X" && $('#b4').val()=="X" && $('#b6').val()=="X"))
					t2=2;
				if(p==0)
				{
				//	alert(t);
					if(t1==1)
					{
						alert('You Won!');
						p=1;
					}
					else if(t2==2)
					{
						alert('You  Lost!');
						p=1;
					}
					if((p==0) && ($('#b0').val()!="-" && $('#b1').val()!="-" && $('#b2').val()!="-" && $('#b3').val()!="-" && $('#b4').val()!="-" && $('#b5').val()!="-" && $('#b6').val()!="-" && $('#b7').val()!="-" && $('#b8').val()!="-"))
					{
						alert("Tie!");
						p=1;
					}
				}
				//alert($('#b0').val());
			}
		</script>
	</body>
		
</html>