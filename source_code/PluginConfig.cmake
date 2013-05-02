#/**********************************************************\ 
#
# Auto-Generated Plugin Configuration file
# for SocketBroadcastDemo
#
#\**********************************************************/

set(PLUGIN_NAME "SocketBroadcastDemo")
set(PLUGIN_PREFIX "SBD")
set(COMPANY_NAME "tsinghua")

# ActiveX constants:
set(FBTYPELIB_NAME SocketBroadcastDemoLib)
set(FBTYPELIB_DESC "SocketBroadcastDemo 1.0 Type Library")
set(IFBControl_DESC "SocketBroadcastDemo Control Interface")
set(FBControl_DESC "SocketBroadcastDemo Control Class")
set(IFBComJavascriptObject_DESC "SocketBroadcastDemo IComJavascriptObject Interface")
set(FBComJavascriptObject_DESC "SocketBroadcastDemo ComJavascriptObject Class")
set(IFBComEventSource_DESC "SocketBroadcastDemo IFBComEventSource Interface")
set(AXVERSION_NUM "1")

# NOTE: THESE GUIDS *MUST* BE UNIQUE TO YOUR PLUGIN/ACTIVEX CONTROL!  YES, ALL OF THEM!
set(FBTYPELIB_GUID 54b0a631-71f1-5b51-90e9-aa716c256637)
set(IFBControl_GUID a132d4c6-7365-5752-801b-a7486ef5241e)
set(FBControl_GUID 5b59ba43-059b-5393-953f-c14122abe416)
set(IFBComJavascriptObject_GUID a632188f-fa4d-5074-a7d4-90b0dd70d3bb)
set(FBComJavascriptObject_GUID 29c05686-6dfb-551c-b7fb-c7cadcc3b967)
set(IFBComEventSource_GUID f8d17da0-2dca-5123-b9d7-f3b209a8c4ef)
if ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID fdef0750-149d-57f0-b97c-0167700a9a38)
else ( FB_PLATFORM_ARCH_32 )
    set(FBControl_WixUpgradeCode_GUID 95e25782-4b14-5c99-b4f2-c92d2b1260fa)
endif ( FB_PLATFORM_ARCH_32 )

# these are the pieces that are relevant to using it from Javascript
set(ACTIVEX_PROGID "tsinghua.SocketBroadcastDemo")
set(MOZILLA_PLUGINID "ccert.edu.cn/SocketBroadcastDemo")

# strings
set(FBSTRING_CompanyName "tinghua.edu.cn")
set(FBSTRING_PluginDescription "create socket for sending broadcast messages")
set(FBSTRING_PLUGIN_VERSION "1.0.0.0")
set(FBSTRING_LegalCopyright "Copyright 2013 tinghua.edu.cn")
set(FBSTRING_PluginFileName "np${PLUGIN_NAME}.dll")
set(FBSTRING_ProductName "SocketBroadcastDemo")
set(FBSTRING_FileExtents "")
if ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "SocketBroadcastDemo")  # No 32bit postfix to maintain backward compatability.
else ( FB_PLATFORM_ARCH_32 )
    set(FBSTRING_PluginName "SocketBroadcastDemo_${FB_PLATFORM_ARCH_NAME}")
endif ( FB_PLATFORM_ARCH_32 )
set(FBSTRING_MIMEType "application/x-socketbroadcastdemo")

# Uncomment this next line if you're not planning on your plugin doing
# any drawing:

#set (FB_GUI_DISABLED 1)

# Mac plugin settings. If your plugin does not draw, set these all to 0
set(FBMAC_USE_QUICKDRAW 0)
set(FBMAC_USE_CARBON 1)
set(FBMAC_USE_COCOA 1)
set(FBMAC_USE_COREGRAPHICS 1)
set(FBMAC_USE_COREANIMATION 0)
set(FBMAC_USE_INVALIDATINGCOREANIMATION 0)

# If you want to register per-machine on Windows, uncomment this line
#set (FB_ATLREG_MACHINEWIDE 1)
