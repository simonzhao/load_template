%%%============================================================================
%%% @author ${author}
%%% @copyright 
%%% @doc 
%%%
%%% @end 
%%%============================================================================
-module( ${moduleName} ).

-behaviour( supervisor ).

%% API
-export( [ start_link/0 ] ).

%% 监控器回调函数
-export( [ init/1 ] ).

-define( SERVER, ?MODULE ).
-define( CHILD( Id, Mod, Type, Args ), { Id, {Mod, start_link, Args },
                                         permanent, 5000, Type, [ Mod ] } ).

%%%============================================================================
%%% API 函数
%%%============================================================================

%%-----------------------------------------------------------------------------
%% @doc
%% 启动监控器
%%
%% @spec start_link() -> { ok, Pid } | ignore | { error, Error }
%% @end
%%-----------------------------------------------------------------------------
start_link() ->
    supervisor:start_link( { local, ?SERVER }, ?MODULE, [] ).

%%%============================================================================
%%% 监控器回调函数
%%%============================================================================

%%-----------------------------------------------------------------------------
%% @private
%% @doc
%% 每当supervisor:start_link/[2,3]启动一个监控器时，新进程就会调用这个函数来
%% 确定重启策略、最大重启频率和子进程规范
%%
%% @spec init( Args ) -> {ok, { SupFlags, [ childSpec] } } 
%%                     | ignore 
%%                     | { error, Reason }
%% @end
init( [] ) ->
    RestartStrategy = one_for_one,
    MaxRestarts = 1000,
    MaxSecondsBetweenRestarts = 3600,

    SupFlags = { RestartStrategy, MaxRestarts, MaxSecondsBetweenRestarts },
    Restart = permanent,
    Shutdown = 2000,
    Type = worker,
    AChild = { 'AName', { 'AModule', start_link, [] },
               Restart, Shutdown, Type, [ 'AModule' ] },
    { ok, { SupFlags, [ AChild ] }}.

%%%============================================================================
%%% 内部函数 
%%%============================================================================

EXE_BEGIN_TEMPLATE
let classname = expand("%:t:r" )
execute '%s/\${moduleName}/'.classname.'/g'
execute '%s/\${author}/'.g:template_author.'/g'
EXE_END_TEMPLATE
