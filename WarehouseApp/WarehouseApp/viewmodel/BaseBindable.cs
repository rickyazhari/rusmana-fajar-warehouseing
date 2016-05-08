using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WarehouseApp.viewmodel
{
        public abstract class BaseBindable : INotifyPropertyChanged
        {
            public event PropertyChangedEventHandler PropertyChanged;

            protected bool TryChangeProperty<T>(ref T field, T value, [CallerMemberName] string propertyName = "")
            {
                if (field == null && value == null) return false;

                if (field == null || !field.Equals(value))
                {
                    field = value;
                    RaisePropertyChanged(propertyName);
                    return true;
                }
                return false;
            }

            protected void RaisePropertyChanged([CallerMemberName] string propertyName = "")
            {
                PropertyChangedEventHandler handler = PropertyChanged;
                if (handler != null)
                {
                    handler(this, new PropertyChangedEventArgs(propertyName));
                }
            }

            protected int ParseErrorMessage(string err)
            {
                return 0;
            }

            private bool _loading;
            //private bool _error;
            //private string _activity;
            //private string _errorMessage;
            public bool Loading
            {
                get { return _loading; }
                set
                {
                    if (TryChangeProperty(ref _loading, value))
                    {
                        RaisePropertyChanged("Loading");
                    }
                }
            }
            //public bool Error
            //{
            //    get { return _error; }
            //    set
            //    {
            //        if (TryChangeProperty(ref _error, value))
            //        {
            //            RaisePropertyChanged("Error");
            //        }
            //    }
            //}
            //public string Activity
            //{
            //    get { return _activity; }
            //    set
            //    {
            //        if (TryChangeProperty(ref _activity, value))
            //        {
            //            RaisePropertyChanged("Activity");
            //        }
            //    }
            //}
            //public string ErrorMessage
            //{
            //    get { return _errorMessage; }
            //    set
            //    {
            //        if (TryChangeProperty(ref _errorMessage, value))
            //        {
            //            RaisePropertyChanged("ErrorMessage");
            //        }
            //    }
            //}
        }
}
