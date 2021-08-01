using System;
using System.Collections.Generic;
using System.Text;

namespace AppBindingCommands
{
    public class MainPageViewModel
    {
        public string Name {
            get
            {
                return this.Name;
            }
            set
            {
                value = this.Name;
            }
        }

        public string DisplayName => $"Nome digitado: {Name}";
    }
}
