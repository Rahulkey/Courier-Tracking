using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class City
    {
        private int pin_code;
                    
        public int Pin_code
        {
            get { return pin_code; }
            set { pin_code = value; }
        }
        private string _city;

        public string city
        {
            get { return _city; }
            set { _city = value; }
        }

        private string state;

        public string State
        {
            get { return state; }
            set { state = value; }
        }

        public City(int pin_code,string city,string state)
        {
            this.Pin_code = pin_code;
            this.city = city;
            this.State = state;
        }
        public City()
        {

        }
    
    }
}
