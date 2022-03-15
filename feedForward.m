function output = feedForward(Layers,list_of_nodes,input_data)
  
  previous_a=input_data'
  
  %For Loop to feed forward
  for L =1:Layers-1
    
    previous_a =[ones( 1,size( previous_a)(2) ) ;  previous_a ]
    previous_theta=randn(list_of_nodes(L+1),list_of_nodes(L)+1)
    previous_a= 1./(1+e.^-(previous_theta * previous_a))
    
  endfor
  output=previous_a>=0.5