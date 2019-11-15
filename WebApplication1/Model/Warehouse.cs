using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class Warehouse
    {
        private int _warehouseId;

        public int WarehouseId
        {
            get { return _warehouseId; }
            set { _warehouseId = value; }
        }
        private string _sender;

        public string Sender
        {
            get { return _sender; }
            set { _sender = value; }
        }
        private string _receiver;

        public string Receiver
        {
            get { return _receiver; }
            set { _receiver = value; }
        }
        private double _distance;

        public double Distance
        {
            get { return _distance; }
            set { _distance = value; }
        }

        

    }
}
