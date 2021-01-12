package xjtu.webservice.info;

public class UserInfoPortTypeProxy implements xjtu.webservice.info.UserInfoPortType {
  private String _endpoint = null;
  private xjtu.webservice.info.UserInfoPortType userInfoPortType = null;
  
  public UserInfoPortTypeProxy() {
    _initUserInfoPortTypeProxy();
  }
  
  public UserInfoPortTypeProxy(String endpoint) {
    _endpoint = endpoint;
    _initUserInfoPortTypeProxy();
  }
  
  private void _initUserInfoPortTypeProxy() {
    try {
      userInfoPortType = (new xjtu.webservice.info.UserInfoLocator()).getUserInfoSOAP11port_http();
      if (userInfoPortType != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)userInfoPortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)userInfoPortType)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (userInfoPortType != null)
      ((javax.xml.rpc.Stub)userInfoPortType)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public xjtu.webservice.info.UserInfoPortType getUserInfoPortType() {
    if (userInfoPortType == null)
      _initUserInfoPortTypeProxy();
    return userInfoPortType;
  }
  
  public xjtu.webservice.info.xsd.SimpleInfoDto getSimpleInfoById(java.lang.String limited, java.lang.String uid) throws java.rmi.RemoteException{
    if (userInfoPortType == null)
      _initUserInfoPortTypeProxy();
    return userInfoPortType.getSimpleInfoById(limited, uid);
  }
  
  public xjtu.webservice.info.xsd.UserInfoDto[] getInfoByName(java.lang.String auth, java.lang.String sname) throws java.rmi.RemoteException{
    if (userInfoPortType == null)
      _initUserInfoPortTypeProxy();
    return userInfoPortType.getInfoByName(auth, sname);
  }
  
  public xjtu.webservice.info.xsd.UserInfoDto getInfoByNo(java.lang.String auth, java.lang.String sno) throws java.rmi.RemoteException{
    if (userInfoPortType == null)
      _initUserInfoPortTypeProxy();
    return userInfoPortType.getInfoByNo(auth, sno);
  }
  
  public xjtu.webservice.info.xsd.UserInfoDto getInfoById(java.lang.String auth, java.lang.String uid) throws java.rmi.RemoteException{
    if (userInfoPortType == null)
      _initUserInfoPortTypeProxy();
    return userInfoPortType.getInfoById(auth, uid);
  }
  
  public xjtu.webservice.info.xsd.UserInfoDto[] getInfoByMobile(java.lang.String auth, java.lang.String mobile) throws java.rmi.RemoteException{
    if (userInfoPortType == null)
      _initUserInfoPortTypeProxy();
    return userInfoPortType.getInfoByMobile(auth, mobile);
  }
  
  
}