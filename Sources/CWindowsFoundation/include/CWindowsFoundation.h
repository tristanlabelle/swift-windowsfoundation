#include <wtypesbase.h>
#include <minwindef.h>
#include <winnt.h>
#include <combaseapi.h>
#include <winstring.h>

#include <asyncinfo.h>
#include <EventToken.h>
#include <windows.foundation.h>
#include <windows.foundation.diagnostics.h>
#include <windows.foundation.collections.h>

// Some special types have inconsistent naming in the C projections
typedef AsyncStatus __x_ABI_CWindows_CFoundation_CAsyncStatus;
typedef IAsyncInfo __x_ABI_CWindows_CFoundation_CIAsyncInfo;
typedef IAsyncInfoVtbl __x_ABI_CWindows_CFoundation_CIAsyncInfoVtbl;