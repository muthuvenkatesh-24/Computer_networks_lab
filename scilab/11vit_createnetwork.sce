//This Program is Written by Dr. T. Subbulaskhmi, Professor, School of Computing Science and Engineering, VIT University Chennai using the NARVAL examples of Scilab for Network Topology Creation and display using various methods

//1.Topology creation and colouring using grid method 2. Topology creation and colouring using random method 3. Topology Creation using detailed method


//1.Topology creation and colouring using grid method 
clear;
clf;

l=10;// number of rows
c=10;//number of columns
Lx=1000;//Area of network x coordinates
Ly=1000;//Area of network y coordinates
r = 100;
colour = 2;
[g]=NL_T_Grid(l,c,Lx,Ly);// generation of a topology in respect with the grid method
ind=1;//window index
name = "Network Created with Grid and Showgraph method";
f=NL_M_Background(ind,name);//initial square area
xlabel("x coordinates of node", "fontsize", 2)
ylabel("Y coordinates of node");

f=NL_M_GraphDisplayUpdate(g,ind,r,colour);


//[f]=NL_G_ShowGraph(g,ind);//application of NL_G_ShowGraph
//[go,n,e]=NL_G_WCDS(g)//
//c=[2];//list of chanels
//[goc]=NL_G_WCDSChannel(go,n,e,c);//application of NL_G_WCDSChannel
//ind=1;//window index
//f=NL_G_ShowGraph(goc,ind);//graph visualization
//disp(go,n,e,c);

//2. Topology creation and colouring using random method
n=5;//network size
l=1000;//network squared area side
d=1000;//Locality radius
[g]=NL_T_LocalityConnex(n,l,d);//generation of a topology
ind=2;//window index
f=NL_G_ShowGraphN(g,ind);//graph visualization
[go,n,e]=NL_G_WCDS(g)
c=[2];//list of chanels
[goc]=NL_G_WCDSChannel(go,n,e,c);//application of NL_G_WCDSChannel
ind=3;//window index
f=NL_G_ShowGraph(goc,ind);//graph visualization
disp(go,n,e,c);


//3. Topology Creation using detailed method
name='Detailed topology';// Name of your network
n=8;//Number of Nodes in the network
tail=[1 2 3 4 1 2 3 4 6 7 8 6 7 8]; //Starting Nodes of the connection lines
head=[2 3 4 5 3 6 7 8 2 4 5 1 2 3]; //Ending Node of the connection 
node_x=[100 200 500 300 400 600 700 400]; // X-Coordinates of the nodes
node_y=[300 400 500 600 700 800 900 950]; // Y-Coordinates of the nodes
[g1]=NL_G_MakeGraph(name,n,tail,head,node_x,node_y)//Creates the Bus topoplogy
ind=4; //Graph Window Number
[f1] = NL_G_ShowGraph(g1,ind);// Visualize the Graph along with indices for Nodes and Edges

l=5;//number of lines
c=5;//number of columns
Lx=1000;//network area x-side
Ly=1000;//network area x-side
[g]=NL_T_Grid(l,c,Lx,Ly);//generation of a topology in respect with the grid method
ind=5;//window index
[f]=NL_G_ShowGraph(g,ind);//application of NL_G_ShowGraph

l=5;//number of lines
c=7;//number of columns
Lx=500;//network area x-side
Ly=500;//network area x-side
[g]=NL_T_Grid(l,c,Lx,Ly);//generation of a topology in respect with the grid method
ind=6;//window index
[f]=NL_G_ShowGraph(g,ind);//application of NL_G_ShowGraph


l=5;//number of lines
c=5;//number of columns
Lx=500;//network area x-side
Ly=500;//network area x-side
[g]=NL_T_Grid(l,c,Lx,Ly);//generation of a topology in respect with the grid method
ind=7;//window index
[f]=NL_G_ShowGraph(g,ind);//application of NL_G_ShowGraph

//4. Display the number of nodes and edges 
[m,l]=NL_G_GraphSize(g);//Extract the number of nodes and edges
disp('Number of nodes:',m); //display the number of nodes and edges 
disp('Number of edges:',l);

//2. Colour the nodes and Edges
c=30; // Node Colour 2:[Blue],3:[Green], 5:[Red]
b=10; // Node Border thickness
d=25; //Node diameter 
ind=8;//window index
nodes=[1 2 4 6 8 10 12 14];//list of nodes
[gm,f2]=NL_G_HighlightNodes(g,nodes,c,b,d,ind);//Highlight the specific nodes mentioned in the 'nodes' vector
c=5;// Edge Colour
w=5;//Edge Width
ind=9;//window index
edges=[1 5 7];//list of edges
[gm,f2]=NL_G_HighlightEdges(gm,edges,c,w,ind);//Highlight the specific nodes mentioned in the 'edges' vector
