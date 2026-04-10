
//This Program is Written by Dr. T. Subbulaskhmi, Professor, School of Computing Science and Engineering, VIT University Chennai using the NARVAL examples of Scilab for Network Topology Creation 
//Program to 1. create and Display Ring Topology 2. Colour the nodes 3. Display the node number and edge number 4. Display the number of nodes and edges 5. insert new nodes in the specified edge 6. insert new edges 7. Display the number of nodes and edges again after adding the nodes and edges. 

clear;
clc;

//1. create and Display Ring Topology 
name='Ring Topology';// Name of your network
n=8;//Number of Nodes in the network
tail=[1 2 3 4 5 6 7 8]; //Ending Nodes of the connection lines
head=[2 3 4 5 6 7 8 1];//Starting Nodes of the connection lines
node_x=[100 100 200 300 500 600 600 400]; // X-Coordinates of the nodes
node_y=[400 600 700 700 700 600 400 300]; // Y-Coordinates of the nodes
[g1]=NL_G_MakeGraph(name,n,tail,head,node_x,node_y)//Creates the Ring topoplogy

ind=1;//Graph Window Number
[f2] = NL_G_ShowGraph(g1,ind);// Visualize the Graph

//2. Colour the nodes 
c=30; // Node Colour 2:[Blue],3:[Green], 5:[Red]
b=10; // Node Border thickness
d=25; //Node diameter 
ind=2;//window index
nodes=[1 3 5 7];//list of nodes
[gm,f2]=NL_G_HighlightNodes(g1,nodes,c,b,d,ind);// Highlight the specified nodes
ind=3; //Graph Window Number
[f1] = NL_G_ShowGraphNE(g1,ind);// Visualize the Graph along with indices for Nodes and Edges

// 4. Display the number of nodes and edges 
[m,l]=NL_G_GraphSize(g1);//Extract the number of nodes and edges
disp(m,l); //display the number of nodes and edges 

//5. insert new nodes in the specified edge
e=8;//edge index
ns=3;//quantity of new nodes
[go]=NL_G_SplitEdge(g1,e,ns);//application of NL_G_SplitEdge
ind=3;//window index
f2=NL_G_ShowGraphNE(go,ind)

//6. insert new edges 
nh=[9 7 8 1];//head vector of new edges
nt=[5 3 3 6];//tail vector of new edges
nn=['e5' 'e6' 'e7' 'e8'];//name vector of new edges
[g2]  = NL_G_AddEdges(go,nh,nt,nn);
ind=4;
f2=NL_G_ShowGraphNE(g2,ind);

// 7. Display the number of nodes and edges again after adding the nodes and edges. 
[m,l]=NL_G_GraphSize(g2);//Extract the number of nodes and edges
disp(m,l); //display the number of nodes and edges 

