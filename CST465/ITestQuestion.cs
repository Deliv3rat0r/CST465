using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CST465
{
    public interface ITestQuestion
    {
        string QuestionText { get; set; }
        string Answer { get; set; }
    }
}
