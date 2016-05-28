function eval_spi(method,iK,iPart,iRep)
% spatial discontiguity index
% 2016-3-20 15:57:32

%     SLIC: a whole brain parcellation toolbox
%     Copyright (C) 2016 Jing Wang
%
%     This program is free software: you can redistribute it and/or modify
%     it under the terms of the GNU General Public License as published by
%     the Free Software Foundation, either version 3 of the License, or
%     (at your option) any later version.
%
%     This program is distributed in the hope that it will be useful,
%     but WITHOUT ANY WARRANTY; without even the implied warranty of
%     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%     GNU General Public License for more details.
%
%     You should have received a copy of the GNU General Public License
%     along with this program.  If not, see <http://www.gnu.org/licenses/>.

load sSub.mat;
load sK.mat;

cSub=sSub(iSub);
cK=sK(iK);

load(sprintf('%s_parc/K%d_part%d_rep%d.mat',method,cK,iPart,iRep));
img_parc_distinct=parc_distinct(img_parc);
K_distinct=length(unique(img_parc_distinct))-1;
spi=K_distinct-K;
save(sprintf('%s_parc/K%d_part%d_rep%d.mat',method,cK,iPart,iRep),'img_parc','K','spi','time');
