<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Calc.aspx.cs" Inherits="Calc" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
        <script type="text/javascript">
        function show()
        {
            var a = document.getElementById("TextBox2").value;
            var b = document.getElementById("TextBox1").value;

            if (check(a, b))
                return true;
            return false;
        }

        function check(a, b)
        {
            var d = "";
            if (a == "")
            {
                d += "Введіть перше число\r\n";
                document.getElementById("TextBox1").value = "";

            }
            if (b == "") {
                d += "Введіть друге число\r\n";
                document.getElementById("TextBox2").value = "";

            }
            if (isNaN(a)) {
                d += "Перше число введено некоректно\r\n";
                document.getElementById("TextBox1").value = "";

            }
            if (isNaN(b)) {
                d += "Друге числj введено некоректно\r\n";
                document.getElementById("TextBox2").value = "";

            }
            if(d!="")
            {
                alert(d);
                return 0;
            }

            return 1;
        }
    </script>

    <link href="Style.css" rel="stylesheet" />
    <style type="text/css">
        .auto-style2 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 302px;
            padding: 10px;
            left: 181px;
        }
        .auto-style3 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 233px;
            padding: 10px;
            left: 185px;
        }
        .auto-style6 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 170px;
            padding: 10px;
            left: 100px;
            }

         .auto-style16 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 170px;
            padding: 10px;
            left: 300px;
            }
         .auto-style17 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 170px;
            padding: 10px;
            left: 400px;
            }

         .auto-style18 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 170px;
            padding: 10px;
            left: 500px;
            }


         
         .auto-style26 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 250px;
            padding: 10px;
            left: 300px;
            right: 739px;
        }
         .auto-style27 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 250px;
            padding: 10px;
            left: 400px;
            }

         .auto-style28 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 250px;
            padding: 10px;
            left: 500px;
            }


         
         
         .auto-style36 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 330px;
            padding: 10px;
            left: 300px;
            }
         .auto-style37 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 330px;
            padding: 10px;
            left: 400px;
            }
          .auto-style47 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 410px;
            padding: 10px;
            left: 400px;
            }
           .auto-style99 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 250px;
            height: 50px;
            top: 410px;
            padding: 10px;
            left: 100px;
            }

         .auto-style38 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 330px;
            padding: 10px;
            left: 500px;
            }

        .auto-style8 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 169px;
            padding: 10px;
            left: 181px;
        }
        .tb-style2{
            border: thick dashed #FF0000;
            position: absolute;
            width: 150px;
            height: 20px;
            top: 100px;
            padding: 10px;
            left: 300px;
        }
         
        .tb-style1{
            border: thick dashed #FF0000;
            position: absolute;
            width: 150px;
            height: 20px;
            top: 100px;
            padding: 10px;
            left: 100px;
        }
         .tb-style{
            border: thick dashed #FF0000;
            position: absolute;
            width: 150px;
            height: 20px;
            top: 300px;
            padding: 10px;
            left: 100px;
        }
        .auto-style9 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 350px;
            height: 20px;
            top: 82px;
            padding: 10px;
            left: 93px;
        }
        .auto-style10 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 300px;
            padding: 10px;
            left: 100px;
        }
        .auto-style11 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 231px;
            padding: 10px;
            left: 100px;
        }

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      
    
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    
      
    
    </div>
        <h3>
            &nbsp;</h3>
        
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="+" OnClick="POperator"  />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Text="-" OnClick="POperator"  />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style3" Text="/" OnClick="POperator"  />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style2" Text="С"  />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="CE"   /> 
        <asp:Button ID="Button10" runat="server" CssClass="auto-style11" Text="*" OnClick="POperator"   /> 
        
          <div id="" style="height: 92px">

        <asp:Button ID="Button6" runat="server"  Text="1" CssClass="auto-style16" OnClick="PNumber"  />
        <asp:Button ID="Button7" runat="server"  Text="2"  CssClass="auto-style17" OnClick="PNumber" />
        <asp:Button ID="Button" runat="server"   Text= "3" CssClass="auto-style18" OnClick="PNumber"  />
        <asp:Button ID="Button91" runat="server"  Text="4" CssClass="auto-style26" OnClick="PNumber"/>
        <asp:Button ID="Button95" runat="server"  Text="5"  CssClass="auto-style27" OnClick="PNumber"  />
        <asp:Button ID="Button93" runat="server"  Text="6" CssClass="auto-style28" OnClick="PNumber"   />
        <asp:Button ID="Button00" runat="server"  Text="0" CssClass="auto-style47" OnClick="PNumber"   />
        <asp:Button ID="Button8" runat="server"  Text="=" CssClass="auto-style99" OnClick="Button8_Click"    />


        <asp:Button ID="Button36" runat="server"  Text="7" CssClass="auto-style36" OnClick="PNumber"/>
        <asp:Button ID="Button37" runat="server"  Text="8"  CssClass="auto-style37" OnClick="PNumber"  />
        <asp:Button ID="Button38" runat="server"  Text="9" CssClass="auto-style38" OnClick="PNumber"   />
      
       
       
        <asp:Button ID="Button11" runat="server" CssClass="auto-style2" Text="С"  />
        </div>
        <asp:TextBox ID="txtResult" CssClass="auto-style9" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
       
    </form>
</body>
    </html>