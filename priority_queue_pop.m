function priority_queue_pop()

global Cost len

% len - #Cost rows

Cost(1,:)=Cost(len,:); Cost(len,:)=0;
pos=1;
child=2*pos; if child<len-1&&Cost(child+1,1)<Cost(child,1), child=child+1; end
while child<len&&Cost(pos,1)>Cost(child,1)
%     Cost([pos,child],:)=Cost([child,pos],:);
    temp=Cost(pos,:);
    Cost(pos,:)=Cost(child,:);
    Cost(child,:)=temp;
    pos=child;
    child=2*pos; if child<len-1&&Cost(child+1,1)<Cost(child,1), child=child+1; end
end

len=len-1;
