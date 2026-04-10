// This program demonstrates how to create and analyze a Bus Topology
// using NARVAL network functions in Scilab

clear;
// Clears all previously stored variables from memory

clc;
// Clears the console output screen

// ---------------------------------------------------------
// 1. CREATE AND DISPLAY BUS TOPOLOGY
// ---------------------------------------------------------

name='Bus Topology';
// Stores the name of the network

n=15;
// Total number of nodes (computers) in the network

tail=[1 2 3 4 5 6 7 1 2 3 4 5 6 7];
// Starting node of each edge (connection)
// Example: 1 → 2 means the cable starts from node 1

head=[2 3 4 5 6 7 8 9 10 11 12 13 14 15];
// Ending node of each edge
// Together, tail and head define all network connections

node_x=[100 100 100 100 100 100 100 100 200 300 400 500 600 300 300];
// X-coordinates of each node on the screen
// Controls horizontal placement of nodes

node_y=[300 400 500 600 700 800 900 950 300 400 500 600 700 800 900];
// Y-coordinates of each node on the screen
// Controls vertical placement of nodes

[g1]=NL_G_MakeGraph(name,n,tail,head,node_x,node_y);
// Creates the bus topology graph using node and edge information
// Output g1 stores the complete network structure

ind=1;
// Specifies the graphics window number

[f1] = NL_G_ShowGraph(g1,ind);
// Displays the network graph in the selected window

// ---------------------------------------------------------
// 2. COLOUR THE NODES AND EDGES
// ---------------------------------------------------------

c=30;
// Colour used for highlighting nodes

b=10;
// Thickness of the node border

d=25;
// Diameter (size) of the node

ind=2;
// Graphics window number for node highlighting

nodes=[1 2 4 6 8 10 12 14];
// List of node numbers to be highlighted

[gm,f2]=NL_G_HighlightNodes(g1,nodes,c,b,d,ind);
// Highlights selected nodes with specified colour, size, and border

c=5;
// Colour used for highlighting edges

w=5;
// Width of the edges

ind=3;
// Graphics window number for edge highlighting

edges=[1 5 7];
// List of edge numbers to be highlighted

[gm,f2]=NL_G_HighlightEdges(g1,edges,c,w,ind);
// Highlights selected edges with specified colour and width

// ---------------------------------------------------------
// 3. DISPLAY NODE NUMBER AND EDGE NUMBER
// ---------------------------------------------------------

ind=4;
// Graphics window number

[f1] = NL_G_ShowGraphNE(g1,ind);
// Displays the graph with node numbers and edge numbers shown

// ---------------------------------------------------------
// 4. DISPLAY NUMBER OF NODES AND EDGES
// ---------------------------------------------------------

[m,l]=NL_G_GraphSize(g1);
// Extracts the total number of nodes (m) and edges (l)

disp('Number of nodes:',m);
// Displays total number of nodes

disp('Number of edges:',l);
// Displays total number of edges

// ---------------------------------------------------------
// 5. DISPLAY EDGE INDEX BETWEEN TWO NODES
// ---------------------------------------------------------

nd=4;
// Starting node number

nf=5;
// Ending node number

[e]=NL_G_Nodes2Edge(g1,nd,nf);
// Finds the edge index connecting node 4 and node 5

disp('Index of Edge across nodes 4 and 5:',e);
// Displays the edge number between node 4 and node 5

// ---------------------------------------------------------
// 6. DISPLAY LENGTH OF EVERY EDGE
// ---------------------------------------------------------

[l]=NL_G_EdgesLength(g1.node_x,g1.node_y,g1.head,g1.tail);
// Calculates the physical length of every edge using coordinates

disp('length of all edges',l);
// Displays the length of all edges

// ---------------------------------------------------------
// 7. FIND EDGES CONNECTED TO A NODE
// ---------------------------------------------------------

i=2;
// Selected node number

[e]=NL_G_EdgesOfNode(g1,i);
// Finds all edges connected to node 2

disp('Internal Edges of node 2:',e);
// Displays edges connected to node 2

// ---------------------------------------------------------
// 8. EXTRACT DATA FIELDS OF NODES
// ---------------------------------------------------------

[node_x,node_y,node_border,node_diameter,node_color,node_number]=NL_G_NodeDataFields(g1);
// Extracts all node-related information from the graph

disp('Node x :', node_x);
// Displays X-coordinates of nodes

disp('Node y :', node_y);
// Displays Y-coordinates of nodes

disp('Node Borders :', node_border);
// Displays border thickness of nodes

disp('Node Diameter :', node_diameter);
// Displays diameter of nodes

disp('Node Colour :', node_color);
// Displays colour of nodes

disp('Node Number :', node_number);
// Displays node indices

// ---------------------------------------------------------
// 9. EXTRACT DATA FIELDS OF EDGES
// ---------------------------------------------------------

[e_head,e_tail,e_color,e_width,e_length,e_weight,e_number]=NL_G_EdgeDataFields(g1);
// Extracts all edge-related information from the graph

disp('Head Nodes',e_head);
// Displays ending node of each edge

disp('Tail Nodes',e_tail);
// Displays starting node of each edge

disp('Edge Colours',e_color);
// Displays colour of edges

disp('Edge Widths',e_width);
// Displays width of edges

disp('Edge Lengths',e_length);
// Displays physical length of edges

disp('Edge Weights',e_weight);
// Displays weight (cost) of edges

disp('Edge Numbers',e_number);
// Displays edge indices
