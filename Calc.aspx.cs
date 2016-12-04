using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using biblioteka;


public partial class Calc : System.Web.UI.Page
{
   double value = 0;
   string sopecator;
    bool check;
    protected void PNumber(object sender, EventArgs e)
    {
        
        if ((sopecator == "+") || (sopecator == "-" ) || (sopecator == "*") || (sopecator == "/")){
            if (check)
            {

                check = false;
                txtResult.Text = "0";
            }

        }
        Button b = sender as Button;
        if (txtResult.Text == "0")
            txtResult.Text = b.Text;
        else
            txtResult.Text += b.Text;
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    //protected void Button6_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "1";
    //}

    //protected void Button7_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "2";
    //}

    //protected void Button_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "3";
    //}

    //protected void Button91_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "4";
    //}

    //protected void Button95_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "5";
    //}

    //protected void Button93_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "6";
    //}

    //protected void Button36_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "7";
    //}

    //protected void Button37_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "8";
    //}

    //protected void Button38_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "9";
    //}

    //protected void Button00_Click(object sender, EventArgs e)
    //{
    //    TextBox3.Text = TextBox3.Text + "0";
    //}
    protected void POperator(object sender, EventArgs e)
    {
        Button b = sender as Button;
       
        txtResult.Text += b.Text;
        //check = true;

        if ((sopecator == "+") && (sopecator == "-") && (sopecator == "*") && (sopecator == "/"))
        {
            if (check)
            {

                check = true;
                value = double.Parse(txtResult.Text);
                sopecator = b.Text;
                sopecator = b.Text;
                txtResult.Text += b.Text;

            }
           

        }
    }
    protected void Button8_Click(object sender, EventArgs e)
    {
        switch (sopecator)
        {
            case "+":
                txtResult.Text = (value + Double.Parse(txtResult.Text)).ToString();
                Label1.Text = "Результат:  " + txtResult.Text;

                break;
            case "-":
                txtResult.Text = (value - Double.Parse(txtResult.Text)).ToString();
                Label1.Text = "Результат:  " + txtResult.Text;

                break;
            case "*":
                txtResult.Text = (value * Double.Parse(txtResult.Text)).ToString();
                Label1.Text = "Результат:  " + txtResult.Text;

                break;
            case "/":
                txtResult.Text = (value / Double.Parse(txtResult.Text)).ToString();
                Label1.Text = "Результат:  " + txtResult.Text;

                break;
           
        }
     
       // Label1.Text = "Результат:  " + txtResult.Text; 


    }
}