-module(node_name_helper).

-export([get_nodes_with_prefix/2]).

%%匹配符合前缀的节点, 如果无前缀,则返回全部节点
get_nodes_with_prefix(Nodes, NodePrefix) ->
	NodesWithPrefix = lists:filter(
		fun(NodeName) ->
			NodeNameStr = atom_to_list(NodeName),
			lists:prefix(NodePrefix, NodeNameStr)
		end,
		Nodes),
	NodesWithPrefix.