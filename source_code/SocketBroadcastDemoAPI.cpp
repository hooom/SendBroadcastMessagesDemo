


/**********************************************************\

  Auto-generated SocketBroadcastDemoAPI.cpp

\**********************************************************/

#include "JSObject.h"
#include "variant_list.h"
#include "DOM/Document.h"
#include "global/config.h"

#include "SocketBroadcastDemoAPI.h"

///////////////////////////////////////////////////////////////////////////////
/// @fn FB::variant SocketBroadcastDemoAPI::echo(const FB::variant& msg)
///
/// @brief  Echos whatever is passed from Javascript.
///         Go ahead and change it. See what happens!
///////////////////////////////////////////////////////////////////////////////
FB::variant SocketBroadcastDemoAPI::echo(const FB::variant& msg)
{
    static int n(0);
    fire_echo("So far, you clicked this many times: ", n++);

    // return "foobar";
    return msg;
}

///////////////////////////////////////////////////////////////////////////////
/// @fn SocketBroadcastDemoPtr SocketBroadcastDemoAPI::getPlugin()
///
/// @brief  Gets a reference to the plugin that was passed in when the object
///         was created.  If the plugin has already been released then this
///         will throw a FB::script_error that will be translated into a
///         javascript exception in the page.
///////////////////////////////////////////////////////////////////////////////
SocketBroadcastDemoPtr SocketBroadcastDemoAPI::getPlugin()
{
    SocketBroadcastDemoPtr plugin(m_plugin.lock());
    if (!plugin) {
        throw FB::script_error("The plugin is invalid");
    }
    return plugin;
}

// Read/Write property testString
std::string SocketBroadcastDemoAPI::get_testString()
{
    return m_testString;
}

void SocketBroadcastDemoAPI::set_testString(const std::string& val)
{
    m_testString = val;
}

// Read-only property version
std::string SocketBroadcastDemoAPI::get_version()
{
    return FBSTRING_PLUGIN_VERSION;
}

void SocketBroadcastDemoAPI::testEvent()
{
    fire_test();
}

std::string SocketBroadcastDemoAPI::sendBroadcastMessages()
{
    boost::asio::io_service io_service;
    boost::asio::ip::udp::socket socket(io_service);
    boost::asio::ip::udp::endpoint remote_endpoint;
    bool broadcast = true;
    
    socket.open(boost::asio::ip::udp::v4());
    
    // TO ENABLE BROADCAST
    if(broadcast)
    {
        boost::asio::socket_base::broadcast option(true);
        socket.set_option(option);
    }
    
    remote_endpoint = boost::asio::ip::udp::endpoint(
            boost::asio::ip::address::from_string("255.255.255.255"),  boost::lexical_cast<int>(8888));
    
    boost::system::error_code ignored_error;
    
    //std::cout << "Send to " << remote_endpoint << std::endl;
    
    socket.send_to(boost::asio::buffer("Send to 255.255.255.255:8888 ---> hello test send broadcast messages", 1024), remote_endpoint, 0, ignored_error);
    
    return "send messages success";
}
