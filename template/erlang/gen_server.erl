%%%----------------------------------------------------------------------------
%%% @author ${author}
%%% @copyright
%%% @doc
%%%
%%% @end
%%%----------------------------------------------------------------------------
-module( ${moduleName} ).

-behaviour( gen_server ).

%%API
-export( [ start_link/0 ] ).

%% gen_server 回调函数
-export( [ init/1,
           handle_call/3,
           handle_cast/2,
           handle_info/2,
           terminate/2,
           code_change/3 ] ).

-define( SERVER, ?MODULE ).

-record( state, {} ).

%%%============================================================================
%%% API
%%%============================================================================

%%-----------------------------------------------------------------------------
%% @doc 启动服务器
%% @spec start_link() -> {ok, Pid} | ignore | {error, Error}
%% @end
%%-----------------------------------------------------------------------------
start_link() ->
    gen_server:start_link( ?MODULE, [], [] ).

%%%============================================================================
%%% gen_server 回调函数 
%%%============================================================================

%%-----------------------------------------------------------------------------
%% @private
%% @doc
%% 初始化服务器
%%
%% @spec init( Args ) -> { ok, State } 
%%                      | { ok, State, Timeout } 
%%                      | ignore 
%%                      | { stop, Reason }
%% @end 
%%-----------------------------------------------------------------------------
init( [] ) ->
    { ok, #state{} }.

%%-----------------------------------------------------------------------------
%% @private
%% @doc 
%% 处理调用消息
%%
%% @spec handle_call( Request, From, State ) ->
%%                          { reply, Reply, State } 
%%                        | { reply, Reply, State, Timeout }
%%                        | { noreply, State } 
%%                        | { noreply, State, Timeout }
%%                        | { stop, Reason, Reply, State }
%%                        | { stop, Reason, State }
%% @end
%%-----------------------------------------------------------------------------
handle_call( _Request, _From, State ) ->
    Reply = ok,
    { reply, Reply, State }.

%%-----------------------------------------------------------------------------
%% @private
%% @doc 
%% 处理播发消息
%%
%% @spec handle_cast( Msg, State ) ->
%%                              { noreply, State }
%%                            | { noreply, State, Timeout }
%%                            | { stop, Reason, State }
%% @end
%%-----------------------------------------------------------------------------
handle_cast( _Msg, State ) ->
    { noreply, State }.

%%-----------------------------------------------------------------------------
%% @private
%% @doc 
%% 处理所有非调用／播发消息
%%
%% @spec handle_info( Info, State ) ->
%%                              { noreply, State }
%%                            | { noreply, State, Timeout }
%%                            | { stop, Reason, State }
%% @end
%%-----------------------------------------------------------------------------
handle_info( _Info, State ) ->
    { noreply, State }.

%%-----------------------------------------------------------------------------
%% @private
%% @doc
%% 这个函数是在gen_server即将终止时调用的。它是Module:init/1的逆操作,执行必要
%% 的清理。当它返回时，gen_server终止并生成原因Reason.它的返回值会被忽略
%%
%% @spec terminate(Reason, State) -> void()
%% @end
%%-----------------------------------------------------------------------------
terminate(_Reason, _State) ->
    ok.

%%-----------------------------------------------------------------------------
%% @private
%% @doc
%% 当代码更改时转换进程状态
%%
%% @spec code_change(OldVsn, State, Extra) -> {ok, NewState}
%% @end
%%-----------------------------------------------------------------------------
code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%%============================================================================
%%% 内部函数
%%%============================================================================


EXE_BEGIN_TEMPLATE
let classname = expand("%:t:r" )
execute '%s/\${moduleName}/'.classname.'/g'
execute '%s/\${author}/'.g:template_author.'/g'
EXE_END_TEMPLATE
