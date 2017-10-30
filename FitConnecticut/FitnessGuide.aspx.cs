using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FitConnecticut
{
    public partial class FitnessGuide : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private int index1 = 1;

        protected string GetDivClass1()
        {
            return "div" + index1++;
        }
        private int index2 = 1;
        protected string GetDivClass2()
        {
            return "div" + index2++;
        }
        private int index3 = 1;
        protected string GetDivClass3()
        {
            return "div" + index3++;
        }
    }
}