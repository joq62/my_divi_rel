%%% -------------------------------------------------------------------
%%% @author  : Joq Erlang
%%% @doc: : 
%%% Created :
%%% Node end point  
%%% Creates and deletes Pods
%%% 
%%% API-kube: Interface 
%%% Pod consits beams from all services, app and app and sup erl.
%%% The setup of envs is
%%% -------------------------------------------------------------------
-module(mydivi_eunit).   


%% --------------------------------------------------------------------
%% Include files
%% --------------------------------------------------------------------
-include_lib("eunit/include/eunit.hrl").

%% --------------------------------------------------------------------
%% Function: available_hosts()
%% Description: Based on hosts.config file checks which hosts are avaible
%% Returns: List({HostId,Ip,SshPort,Uid,Pwd}
%% --------------------------------------------------------------------
t0_test()->
    {ok,_}=mydivi:start(),
    ok.

t1_test()->
    ?assert(42.0=:=mydivi:divi(420,10)),
    ok.

t2_test()->
    ?assert({error,[badarith_try_to_divide_zero]}=:=mydivi:divi(420,0)),
    ok.

t3_test()->
 ?assert(42.0=:=mydivi:divi(420,10)),
    ok.
t4_test()->
    ?assert([test@c100]=:=sd:get(stdlib)),
    ok.

