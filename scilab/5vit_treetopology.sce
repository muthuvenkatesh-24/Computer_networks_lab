//This Program is Written by Dr. T. Subbulaskhmi, Professor, School of Computing Science and Engineering, VIT University Chennai using the NARVAL examples of Scilab for Network Topology Creation 
//Program to 1. create and Display Tree Topology 2. Colour the nodes 3. Display the node number and edge number 4. Display the number of nodes and edges 

clear;
clc;
name='Tree Topology';// graph name
n=7;//no. of nodes
//every edge has head and tail.
tail=[1 1 2 2 3 3];// tail of eatch edge, this is a node from a edge or link is originating 
head=[2 3 4 5 6 7];//head of each edge,this is a node where edge or link is terminating 
node_x=[500 300 700 200 400 600 800];// x-coordinate of each node
node_y=[950 800 800 700 700 700 700];//y-coordinate of each node
[g1]=NL_G_MakeGraph(name,n,tail,head,node_x,node_y)//application of NL_G_MakeGraph
ind=1;//window index
f=NL_G_ShowGraphN(g1,ind);//graph visualization
c=3; // Node Colour 2:[Blue],3:[Green], 5:[Red]
b=10; // Node Border thickness
d=25; //Node diameter 
ind=2;//window index
nodes=[1 3 5];//list of nodes
[gm,f2]=NL_G_HighlightNodes(g1,nodes,c,b,d,ind);// Highlight the specified nodes
ind=3; //Graph Window Number
[f1] = NL_G_ShowGraphNE(g1,ind);// Visualize the Graph along with indices for Nodes and Edges
[m,l]=NL_G_GraphSize(g1);//Extract the number of nodes and edges
disp(m,l); //display the number of nodes and edges 

