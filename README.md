This repository shows the classification, according to length and complexity, of the 716 p-classes of self-dual monotone 7-input functions in terms of majority operators. The length of a Boolean function is defined as the number of operators in the shortest formula that realizes the function f. The complexity of a Boolean function f represented as Boolean chain is the minimum number of steps in the Boolean chain necessary to realize f. 

The obtained results are: 

| L(f) | Classes | C(f) | Classes | 
| ------------- | ------------- | ------------- | ------------- | 
| 0 | 1  | 0  | 1  | 
| 1 | 1  | 1  | 1  | 
| 2 | 2  | 2  | 2  | 
| 3 | 8  | 3  | 9  | 
| 4 | 38  | 4  | 48  | 
| 5 | 139 | 5  | 201  | 
| 6 | 313  | 6  | 354  | 
| 7 | 176  | 7  | 98  | 
| 8 | 34  | 8  | 2  | 
| 9 | 3  | 9  | 0  | 
| 10 | 0  | 10  | 0  | 
| 11 | 1  | 11 | 0  | 


The results for L(f) have been obtained by implementing the algorithm proposed by D. E. Knuth in the "Art of Computer Programming", vol. 4A, 7.1.2. The algorithm has been implemented using the EPFL truth table library [kitty](https://github.com/msoeken/kitty). The very same algorithm has allowed us to enumerate all the 716 p-classes. 

The complexity results have been obtained using exact synthesis, implemented using the SAT-based exact methods in [percy](https://github.com/whaaswijk/percy). The verilog results show the Boolean chains for all 716 classes, divided according to their complexity. The name of each verilog file is the representative of each class. 


