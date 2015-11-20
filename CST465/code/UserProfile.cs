
using System;
using System.Collections.Generic;

namespace CST465
{
    public class UserProfileBO
    {
        public String fname { get; set; }
        public String lname { get; set; }
        public String age { get; set; }
        public String phone { get; set; }
        public String email { get; set; }
        public String confemail { get; set; }
        public String street { get; set; }
        public String city { get; set; }
        public String state { get; set; }
        public String zip { get; set; }
        public byte[] profpic { get; set; }
        public Guid UserID { get; set; }
    }
}