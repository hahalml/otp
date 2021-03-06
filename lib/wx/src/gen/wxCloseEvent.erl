%%
%% %CopyrightBegin%
%%
%% Copyright Ericsson AB 2008-2012. All Rights Reserved.
%%
%% The contents of this file are subject to the Erlang Public License,
%% Version 1.1, (the "License"); you may not use this file except in
%% compliance with the License. You should have received a copy of the
%% Erlang Public License along with this software. If not, it can be
%% retrieved online at http://www.erlang.org/.
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and limitations
%% under the License.
%%
%% %CopyrightEnd%
%% This file is generated DO NOT EDIT

%% @doc See external documentation: <a href="http://www.wxwidgets.org/manuals/stable/wx_wxcloseevent.html">wxCloseEvent</a>.
%% <dl><dt>Use {@link wxEvtHandler:connect/3.} with EventType:</dt>
%% <dd><em>close_window</em>, <em>end_session</em>, <em>query_end_session</em></dd></dl>
%% See also the message variant {@link wxEvtHandler:wxClose(). #wxClose{}} event record type.
%%
%% <p>This class is derived (and can use functions) from:
%% <br />{@link wxEvent}
%% </p>
%% @type wxCloseEvent().  An object reference, The representation is internal
%% and can be changed without notice. It can't be used for comparsion
%% stored on disc or distributed for use on other nodes.

-module(wxCloseEvent).
-include("wxe.hrl").
-export([canVeto/1,getLoggingOff/1,setCanVeto/2,setLoggingOff/2,veto/1,veto/2]).

%% inherited exports
-export([getId/1,getSkipped/1,getTimestamp/1,isCommandEvent/1,parent_class/1,
  resumePropagation/2,shouldPropagate/1,skip/1,skip/2,stopPropagation/1]).

-export_type([wxCloseEvent/0]).
%% @hidden
parent_class(wxEvent) -> true;
parent_class(_Class) -> erlang:error({badtype, ?MODULE}).

-type wxCloseEvent() :: wx:wx_object().
%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxcloseevent.html#wxcloseeventcanveto">external documentation</a>.
-spec canVeto(This) -> boolean() when
	This::wxCloseEvent().
canVeto(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxCloseEvent),
  wxe_util:call(?wxCloseEvent_CanVeto,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxcloseevent.html#wxcloseeventgetloggingoff">external documentation</a>.
-spec getLoggingOff(This) -> boolean() when
	This::wxCloseEvent().
getLoggingOff(#wx_ref{type=ThisT,ref=ThisRef}) ->
  ?CLASS(ThisT,wxCloseEvent),
  wxe_util:call(?wxCloseEvent_GetLoggingOff,
  <<ThisRef:32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxcloseevent.html#wxcloseeventsetcanveto">external documentation</a>.
-spec setCanVeto(This, CanVeto) -> ok when
	This::wxCloseEvent(), CanVeto::boolean().
setCanVeto(#wx_ref{type=ThisT,ref=ThisRef},CanVeto)
 when is_boolean(CanVeto) ->
  ?CLASS(ThisT,wxCloseEvent),
  wxe_util:cast(?wxCloseEvent_SetCanVeto,
  <<ThisRef:32/?UI,(wxe_util:from_bool(CanVeto)):32/?UI>>).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxcloseevent.html#wxcloseeventsetloggingoff">external documentation</a>.
-spec setLoggingOff(This, LogOff) -> ok when
	This::wxCloseEvent(), LogOff::boolean().
setLoggingOff(#wx_ref{type=ThisT,ref=ThisRef},LogOff)
 when is_boolean(LogOff) ->
  ?CLASS(ThisT,wxCloseEvent),
  wxe_util:cast(?wxCloseEvent_SetLoggingOff,
  <<ThisRef:32/?UI,(wxe_util:from_bool(LogOff)):32/?UI>>).

%% @equiv veto(This, [])
-spec veto(This) -> ok when
	This::wxCloseEvent().

veto(This)
 when is_record(This, wx_ref) ->
  veto(This, []).

%% @doc See <a href="http://www.wxwidgets.org/manuals/stable/wx_wxcloseevent.html#wxcloseeventveto">external documentation</a>.
-spec veto(This, [Option]) -> ok when
	This::wxCloseEvent(),
	Option :: {veto, boolean()}.
veto(#wx_ref{type=ThisT,ref=ThisRef}, Options)
 when is_list(Options) ->
  ?CLASS(ThisT,wxCloseEvent),
  MOpts = fun({veto, Veto}, Acc) -> [<<1:32/?UI,(wxe_util:from_bool(Veto)):32/?UI>>|Acc];
          (BadOpt, _) -> erlang:error({badoption, BadOpt}) end,
  BinOpt = list_to_binary(lists:foldl(MOpts, [<<0:32>>], Options)),
  wxe_util:cast(?wxCloseEvent_Veto,
  <<ThisRef:32/?UI, 0:32,BinOpt/binary>>).

 %% From wxEvent
%% @hidden
stopPropagation(This) -> wxEvent:stopPropagation(This).
%% @hidden
skip(This, Options) -> wxEvent:skip(This, Options).
%% @hidden
skip(This) -> wxEvent:skip(This).
%% @hidden
shouldPropagate(This) -> wxEvent:shouldPropagate(This).
%% @hidden
resumePropagation(This,PropagationLevel) -> wxEvent:resumePropagation(This,PropagationLevel).
%% @hidden
isCommandEvent(This) -> wxEvent:isCommandEvent(This).
%% @hidden
getTimestamp(This) -> wxEvent:getTimestamp(This).
%% @hidden
getSkipped(This) -> wxEvent:getSkipped(This).
%% @hidden
getId(This) -> wxEvent:getId(This).
