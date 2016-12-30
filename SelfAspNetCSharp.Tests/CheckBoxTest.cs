using SelfAspNetCSharp;
using System;
using System.Web.UI.WebControls;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System.Collections.Generic;

namespace SelfAspNetCSharp.Tests
{
    [TestClass]
    public class CheckBoxTest
    {
        [TestMethod()]
        public void GetSelectedValuesTest()
        {
            var list = new List<ListItem>();
            var selectedItem = new ListItem("sushi");
            selectedItem.Selected = true;
            list.Add(selectedItem);
            list.Add(new ListItem("yakiniku"));
            list.Add(new ListItem("unagi"));

            var actual = new PrivateObject(new CheckBox()).Invoke("GetSelectedValues", list) as string[];
            var expected = new string[] { "sushi" };
            CollectionAssert.AreEqual(expected, actual);
        }
    }
}
