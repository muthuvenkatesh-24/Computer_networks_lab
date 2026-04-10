// This program demonstrates creation and analysis of Mesh Topology
// using NARVAL network functions in Scilab

clear;
// Clears all previously stored variables from memory

clc;
// Clears the console window

// ---------------------------------------------------------
// 1. CREATE AND VISUALIZE A GRAPH WITH MESH TOPOLOGY
// ---------------------------------------------------------

name='Mesh Topology';
// Stores the name of the network

n=6;
// Total number of nodes (computers) in the network

tail=[1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4 5 5 5 5 5 6 6 6 6 6];
// Starting node of each edge
// Ensures every node is connected to all other nodes

head=[2 3 4 5 6 2 3 4 5 6 2 3 4 5 6 2 3 4 5 6 2 3 4 5 6 2 3 4 5 6];
// Ending node of each edge
// Together with tail, this creates full mesh connectivity

node_x=[300 300 400 500 500 400];
// X-coordinates of nodes on the screen
// Controls horizontal placement

node_y=[500 700 800 700 500 400];
// Y-coordinates of nodes on the screen
// Controls vertical placement

[g1]=NL_G_MakeGraph(name,n,tail,head,node_x,node_y);
// Creates the mesh topology graph using node and edge information
// Output g1 stores the entire network structure

ind=1;
// Graphics window number

[f4] = NL_G_ShowGraph(g1,ind);
// Displays the mesh topology in the selected window

// ---------------------------------------------------------
// 2. COLOUR THE NODES
// ---------------------------------------------------------

c=30;
// Colour used to highlight selected nodes

b=10;
// Thickness of the node border

d=25;
// Diameter (size) of the node

ind=2;
// Graphics window number for highlighting nodes

nodes=[1 3 5];
// List of node numbers to be highlighted

[gm,f2]=NL_G_HighlightNodes(g1,nodes,c,b,d,ind);
// Highlights the specified nodes with given colour, size, and border

// ---------------------------------------------------------
// 3. VISUALIZE THE GRAPH WITH NODE NUMBER AND EDGE NUMBER
// ---------------------------------------------------------

ind=3;
// Graphics window number

[f1] = NL_G_ShowGraphNE(g1,ind);
// Displays the graph along with node numbers and edge numbers

// ---------------------------------------------------------
// 4. DISPLAY NUMBER OF NODES AND EDGES IN SCILAB PROMPT
// ---------------------------------------------------------

[m,l]=NL_G_GraphSize(g1);
// Extracts total number of nodes (m) and edges (l)

disp(m,l);
// Displays the number of nodes and edges in the console

// ---------------------------------------------------------
// 5. DISPLAY THE LENGTH OF EVERY EDGE
// ---------------------------------------------------------

[l]=NL_G_EdgesLength(g1.node_x,g1.node_y,g1.head,g1.tail);
// Calculates the physical length of each edge using node coordinates

disp('length of all edges',l);
// Displays the length of all edges in the console

// ---------------------------------------------------------
// 6. DISPLAY THE SET OF EDGES CONNECTED TO A NODE
// ---------------------------------------------------------

i=2;
// Selected node number

[e]=NL_G_EdgesOfNode(g1,i);
// Finds all edges connected to node 2

disp('Internal Edges of node 2:',e);
// Displays the list of edges connected to node 2
