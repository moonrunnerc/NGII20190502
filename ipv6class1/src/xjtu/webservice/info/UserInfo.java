/**
 * UserInfo.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package xjtu.webservice.info;

public interface UserInfo extends javax.xml.rpc.Service {
    public java.lang.String getUserInfoSOAP11port_httpAddress();

    public xjtu.webservice.info.UserInfoPortType getUserInfoSOAP11port_http() throws javax.xml.rpc.ServiceException;

    public xjtu.webservice.info.UserInfoPortType getUserInfoSOAP11port_http(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
