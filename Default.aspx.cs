using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;




public partial class _Default : System.Web.UI.Page
{
    double a, b, a1, b1;


  
  
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double a, b, result;
        a = Convert.ToDouble(TextBox1.Text);
        b = Convert.ToDouble(TextBox2.Text);
        Class2 class2 = new Class2(a, b);
        result = class2.sum();
        TextBox3.Text = Convert.ToString(result);
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";

    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        double a, b, result;
        a = Convert.ToDouble(TextBox1.Text);
        b = Convert.ToDouble(TextBox2.Text);
        Class2 class2 = new Class2(a, b);
        result = class2.div();
        TextBox3.Text = Convert.ToString(result);

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

        double a, b, result;
        a = Convert.ToDouble(TextBox1.Text);
        b = Convert.ToDouble(TextBox2.Text);
        Class2 class2 = new Class2(a, b);
        result = class2.mull();
        TextBox3.Text = Convert.ToString(result);
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        

        double a, b, result;
        a = Convert.ToDouble(TextBox1.Text);
        b = Convert.ToDouble(TextBox2.Text);
        Class2 class2 = new Class2(a, b);
        result = class2.min();
        TextBox3.Text = Convert.ToString(result);
    }
}