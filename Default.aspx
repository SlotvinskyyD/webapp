<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
            top: 200px;
            padding: 10px;
            left: 400px;
        }
        .auto-style3 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 199px;
            padding: 10px;
            left: 300px;
        }
        .auto-style6 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 197px;
            padding: 10px;
            left: 7px;
            right: 1032px;
        }
        .auto-style8 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 197px;
            padding: 10px;
            left: 206px;
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
            width: 150px;
            height: 20px;
            top: 254px;
            padding: 10px;
            left: 93px;
        }
        .auto-style10 {
            border: thick dashed #FF0000;
            position: absolute;
            width: 60px;
            height: 50px;
            top: 197px;
            padding: 10px;
            left: 100px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
      
    
    </div>
        <h3>
            &nbsp;</h3>
        <p>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style6" Text="+" OnClick="Button1_Click" OnClientClick="return show()" />
        <asp:Button ID="Button2" runat="server" CssClass="auto-style8" Text="-" OnClick="Button2_Click" OnClientClick="return show()" />
        <asp:Button ID="Button4" runat="server" CssClass="auto-style3" Text="/" OnClick="Button4_Click" OnClientClick="return show()" />
        <asp:Button ID="Button5" runat="server" CssClass="auto-style2" Text="С" OnClick="Button5_Click" />
        <asp:Button ID="Button3" runat="server" CssClass="auto-style10" Text="*" OnClick="Button3_Click" OnClientClick="return show()"  /> </p>
        <div id="" style="height: 92px">

             <asp:TextBox ID="TextBox1" CssClass="tb-style2"   runat="server"></asp:TextBox>
             <asp:TextBox ID="TextBox2" CssClass="tb-style1"  runat="server"></asp:TextBox>
        </div>
        <asp:TextBox ID="TextBox3" CssClass="auto-style9"  Text="Результат" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
       
    </form>
</body>
</html>
