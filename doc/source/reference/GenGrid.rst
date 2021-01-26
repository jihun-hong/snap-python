GenGrid
'''''''

.. function:: GenGrid(GraphType, Rows, Cols, IsDir=True)

Generates a two-dimensional graph of rows and columns specified by *Rows* and *Cols* parameters.

Parameters:

- *GraphType*: graph class (input)
    Class of output graph -- one of :class:`TNGraph`, :class:`TNEANet`, or :class:`TUNGraph`.

- *Rows*: int (input)
    Specifies number of rows for graph.

- *Cols*: int (input)
    Specifies number of columns for graph.

- *IsDir*: bool (input)
    Indicates whether the edges should be directed or undirected. Defaults to directed. 

Return value:

- graph
    A Snap.py graph of the specified type.


The following example shows how to generate grid graphs for classes :class:`TNGraph`, :class:`TUNGraph`, and :class:`TNEANet`::

    import snap

    Graph = snap.GenGrid(snap.TNGraph, 10, 12, False)
    for EI in Graph.Edges():
        print("edge: (%d, %d)" % (EI.GetSrcNId(), EI.GetDstNId()))
	
    UGraph = snap.GenGrid(snap.TUNGraph, 10, 12, False)
    for EI in UGraph.Edges():
        print("edge: (%d, %d)" % (EI.GetSrcNId(), EI.GetDstNId()))

    Network = snap.GenGrid(snap.TNEANet, 10, 12, False)
    for EI in Network.Edges():
        print("edge: (%d, %d)" % (EI.GetSrcNId(), EI.GetDstNId()))
