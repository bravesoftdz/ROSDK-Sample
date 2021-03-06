//------------------------------------------------------------------------------
// <autogenerated>
//     This Oxygene source code was generated by a tool.
//     Runtime Version: 4.0.30319.34014
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </autogenerated>
//------------------------------------------------------------------------------

{$HIDE H7}
{$HIDE W1}
{$HIDE W27}
{$HIDE H11}

namespace SampleServer;

interface

uses
  System,
  System.Collections.Generic,
  RemObjects.SDK,
  RemObjects.SDK.Types;
  
type
  IBusinessLogicService = public interface(RemObjects.SDK.IROService)
    method Process(Value: System.String): System.Int32;
  end;
  
  BusinessLogicService_Proxy = public partial class(RemObjects.SDK.Proxy, IBusinessLogicService)
  protected 
    [System.CLSCompliantAttribute(false)]
    method __GetInterfaceName: System.String; override;
  public 
    constructor(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel);
    constructor(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel; aOverrideInterfaceName: System.String);
    constructor(aRemoteService: RemObjects.SDK.IRemoteService);
    constructor(aRemoteService: RemObjects.SDK.IRemoteService; aOverrideInterfaceName: System.String);
    constructor(aUri: System.Uri);
    constructor(aUrl: System.String);
    method Process(Value: System.String): System.Int32; virtual;
  end;
  
  CoBusinessLogicService = public class
  public 
    class method &Create(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel): IBusinessLogicService;
    class method &Create(aRemoteService: RemObjects.SDK.IRemoteService): IBusinessLogicService;
    class method &Create(aUri: System.Uri): IBusinessLogicService;
    class method &Create(aUrl: System.String): IBusinessLogicService;
  end;
  
  IBusinessLogicService_Async = public interface(RemObjects.SDK.IROService_Async)
    method BeginProcess(Value: System.String; __Callback: System.AsyncCallback; __UserData: System.Object): System.IAsyncResult;
    method EndProcess(__AsyncResult: System.IAsyncResult): System.Int32;
  end;
  
  BusinessLogicService_AsyncProxy = public partial class(RemObjects.SDK.AsyncProxy, IBusinessLogicService_Async)
  protected 
    method __GetInterfaceName: System.String; override;
  public 
    constructor(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel);
    constructor(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel; aOverrideInterfaceName: System.String);
    constructor(aRemoteService: RemObjects.SDK.IRemoteService);
    constructor(aRemoteService: RemObjects.SDK.IRemoteService; aOverrideInterfaceName: System.String);
    constructor(aUri: System.Uri);
    constructor(aUrl: System.String);
    method BeginProcess(Value: System.String; __Callback: System.AsyncCallback; __UserData: System.Object): System.IAsyncResult; virtual;
    method EndProcess(__AsyncResult: System.IAsyncResult): System.Int32; virtual;
  end;
  
implementation

{ BusinessLogicService_Proxy }

method BusinessLogicService_Proxy.__GetInterfaceName: System.String;
begin
  exit('BusinessLogicService');
end;

constructor BusinessLogicService_Proxy(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel);
begin
  inherited constructor(aMessage, aClientChannel);
end;

constructor BusinessLogicService_Proxy(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel; aOverrideInterfaceName: System.String);
begin
  inherited constructor(aMessage, aClientChannel, aOverrideInterfaceName);
end;

constructor BusinessLogicService_Proxy(aRemoteService: RemObjects.SDK.IRemoteService);
begin
  inherited constructor(aRemoteService);
end;

constructor BusinessLogicService_Proxy(aRemoteService: RemObjects.SDK.IRemoteService; aOverrideInterfaceName: System.String);
begin
  inherited constructor(aRemoteService, aOverrideInterfaceName);
end;

constructor BusinessLogicService_Proxy(aUri: System.Uri);
begin
  inherited constructor(aUri);
end;

constructor BusinessLogicService_Proxy(aUrl: System.String);
begin
  inherited constructor(aUrl);
end;

method BusinessLogicService_Proxy.Process(Value: System.String): System.Int32;
begin
  var __LocalMessage: RemObjects.SDK.IMessage := self.__GetMessage();
  __LocalMessage.InitializeRequestMessage(__ClientChannel, 'BusinessLogicLibrary', __GetActiveInterfaceName(), 'Process');
  __LocalMessage.WriteUtf8String('Value', Value);
  __LocalMessage.FinalizeMessage();
  __ClientChannel.Dispatch(__LocalMessage);
  var &Result: System.Int32 := __LocalMessage.ReadInt32('Result');
  __LocalMessage.Clear();
  exit(&Result);
end;

{ CoBusinessLogicService }

class method CoBusinessLogicService.&Create(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel): IBusinessLogicService;
begin
  exit(new BusinessLogicService_Proxy(aMessage, aClientChannel));
end;

class method CoBusinessLogicService.&Create(aRemoteService: RemObjects.SDK.IRemoteService): IBusinessLogicService;
begin
  exit(new BusinessLogicService_Proxy(aRemoteService));
end;

class method CoBusinessLogicService.&Create(aUri: System.Uri): IBusinessLogicService;
begin
  exit(new BusinessLogicService_Proxy(aUri));
end;

class method CoBusinessLogicService.&Create(aUrl: System.String): IBusinessLogicService;
begin
  exit(new BusinessLogicService_Proxy(aUrl));
end;

{ BusinessLogicService_AsyncProxy }

method BusinessLogicService_AsyncProxy.__GetInterfaceName: System.String;
begin
  exit('BusinessLogicService');
end;

constructor BusinessLogicService_AsyncProxy(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel);
begin
  inherited constructor(aMessage, aClientChannel);
end;

constructor BusinessLogicService_AsyncProxy(aMessage: RemObjects.SDK.IMessage; aClientChannel: RemObjects.SDK.IClientChannel; aOverrideInterfaceName: System.String);
begin
  inherited constructor(aMessage, aClientChannel, aOverrideInterfaceName);
end;

constructor BusinessLogicService_AsyncProxy(aRemoteService: RemObjects.SDK.IRemoteService);
begin
  inherited constructor(aRemoteService);
end;

constructor BusinessLogicService_AsyncProxy(aRemoteService: RemObjects.SDK.IRemoteService; aOverrideInterfaceName: System.String);
begin
  inherited constructor(aRemoteService, aOverrideInterfaceName);
end;

constructor BusinessLogicService_AsyncProxy(aUri: System.Uri);
begin
  inherited constructor(aUri);
end;

constructor BusinessLogicService_AsyncProxy(aUrl: System.String);
begin
  inherited constructor(aUrl);
end;

method BusinessLogicService_AsyncProxy.BeginProcess(Value: System.String; __Callback: System.AsyncCallback; __UserData: System.Object): System.IAsyncResult;
begin
  var __LocalMessage: RemObjects.SDK.IMessage := self.__GetMessage();
  __LocalMessage.InitializeRequestMessage(__ClientChannel, 'BusinessLogicLibrary', __GetActiveInterfaceName(), 'Process');
  __LocalMessage.WriteUtf8String('Value', Value);
  __LocalMessage.FinalizeMessage();
  exit(__ClientChannel.AsyncDispatch(__LocalMessage, __Callback, __UserData));
end;

method BusinessLogicService_AsyncProxy.EndProcess(__AsyncResult: System.IAsyncResult): System.Int32;
begin
  var __LocalMessage: RemObjects.SDK.IMessage := (__AsyncResult as RemObjects.SDK.IClientAsyncResult).Message;
  var &Result: System.Int32 := __LocalMessage.ReadInt32('Result');
  __LocalMessage.Clear();
  exit(&Result);
end;

end.
