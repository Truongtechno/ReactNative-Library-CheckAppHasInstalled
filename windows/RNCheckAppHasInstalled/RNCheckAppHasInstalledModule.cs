using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Check.App.Has.Installed.RNCheckAppHasInstalled
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCheckAppHasInstalledModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCheckAppHasInstalledModule"/>.
        /// </summary>
        internal RNCheckAppHasInstalledModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCheckAppHasInstalled";
            }
        }
    }
}
