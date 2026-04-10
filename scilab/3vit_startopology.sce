// This program demonstrates creation and analysis of Star Topology
// using NARVAL functions in Scilab

clear;
// Clears all previously stored variables from memory

clc;
// Clears the console window

// ---------------------------------------------------------
// 1. CREATE AND VISUALIZE THE STAR TOPOLOGY
// ---------------------------------------------------------

name='Star Topology';
// Stores the name of the network

n=9;
// Total number of nodes (computers) in the network

tail=[1 1 1 1 1 1 1 1];
// Defines the central node (node 1) as the starting point of all edges
// This makes node 1 the hub of the star topology

head=[2 3 4 5 6 7 8 9];
// Defines the ending nodes connected to the central node

node_x=[500 500 500 200 200 200 800 800 800];
// X-axis positions of nodes on the screen
// Used to place nodes visually in star shape

node_y=[500 200 800 800 200 500 200 500 800];
// Y-axis positions of nodes on the screen
// Combined with X-coordinates to form the star layout

[g1]=NL_G_MakeGraph(name,n,tail,head,node_x,node_y);
// Creates the star topology graph using node and edge data
// Output g1 contains complete network information

ind=1;
// Graphics window number

[f3] = NL_G_ShowGraph(g1,ind);
// Displays the star topology in the selected window

// ---------------------------------------------------------
// 2. COLOUR THE NODES AND VISUALIZE
// ---------------------------------------------------------

c=30;
// Colour used for highlighting nodes

b=10;
// Thickness of the node border

d=25;
// Diameter (size) of nodes

ind=2;
// Graphics window number for node highlighting

[go]=NL_G_GraphEdgesLength(g1);
// Calculates the length of every edge in the graph

disp(go);
// Displays all graph edge details

disp('Edge Length',go.edge_length);
// Displays only the length of each edge

nodes=[1 3 5 7];
// List of nodes to be highlighted

[gm,f2]=NL_G_HighlightNodes(g1,nodes,c,b,d,ind);
// Highlights selected nodes with given colour, border, and size

// ---------------------------------------------------------
// 3. DISPLAY NODE NUMBER AND EDGE NUMBER
// ---------------------------------------------------------

ind=3;
// Graphics window number

[f1] = NL_G_ShowGraphNE(g1,ind);
// Displays the graph with node numbers and edge numbers shown

[m,l]=NL_G_GraphSize(g1);
// Extracts total number of nodes (m) and edges (l)

disp(m,l);
// Displays number of nodes and edges

// ---------------------------------------------------------
// 4. DISPLAY NUMBER OF NODES AND EDGES (SEPARATELY)
// ---------------------------------------------------------

[m,l]=NL_G_GraphSize(g1);
// Again extracts node and edge count

disp('Number of nodes:',m);
// Displays total number of nodes

disp('Number of edges:',l);
// Displays total number of edges

// ---------------------------------------------------------
// 5. DISPLAY EDGE INDEX BETWEEN TWO NODES
// ---------------------------------------------------------

nd=4;
// Starting node number

nf=1;
// Ending node number (central node)

[e]=NL_G_Nodes2Edge(g1,nd,nf);
// Finds the edge index connecting node 4 and node 1

disp('Index of Edge across nodes 4 and 1:',e);
// Displays the edge number between node 4 and node 1
