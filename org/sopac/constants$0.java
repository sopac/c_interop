// Generated by jextract

package org.sopac;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.VarHandle;
import java.nio.ByteOrder;
import java.lang.foreign.*;
import static java.lang.foreign.ValueLayout.*;
class constants$0 {

    static final FunctionDescriptor fibonacci$FUNC = FunctionDescriptor.of(Constants$root.C_INT$LAYOUT,
        Constants$root.C_INT$LAYOUT
    );
    static final MethodHandle fibonacci$MH = RuntimeHelper.downcallHandle(
        "fibonacci",
        constants$0.fibonacci$FUNC
    );
    static final FunctionDescriptor calculate$FUNC = FunctionDescriptor.of(Constants$root.C_INT$LAYOUT,
        Constants$root.C_INT$LAYOUT
    );
    static final MethodHandle calculate$MH = RuntimeHelper.downcallHandle(
        "calculate",
        constants$0.calculate$FUNC
    );
}


