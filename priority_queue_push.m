function priority_queue_push(c)

global Cost len

% len - #Cost rows
% c - [cost, edge_id, edge_status];

Cost(len+1,:)=c;
pos=len+1; parent=floor(pos/2);
while parent~=0&&Cost(parent,1)>c(1)
    Cost([parent,pos],:)=Cost([pos,parent],:);
    pos=parent;
    parent=floor(pos/2);
end
len=len+1;