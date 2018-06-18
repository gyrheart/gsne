# gsne
## Global t-Distributed Stochastic Neighbor Embedding
'gsne' function modifies the MATLAB built-in function 'tsne' by introducing a global cost function,
and adds a new parameter lambda in the input; lambda controls the contribution of the global cost function, lambda = 0 
is equivalent to tsne. The other parameters are the same as tsne. 
tsne function provides two available algorithms in 'Alrorithm' option: 'exact' and the fast version 'barneshut'.
For now the global cost function is only implemented in the 'exact' algorithm, 
so the 'Algorithm' option in the input of gsne must be set as 'exact' to make gsne effective.

See more details of gsne algorithm in: 

Yuansheng Zhou, Tatyana Sharpee. Using global t-SNE to preserve inter-cluster data structure. 
BioRxiv 331611; doi: https://doi.org/10.1101/331611

## Demo
We provided the demo codes to generate gsne maps for synthetic data and *iris* data:
* gsne/Demo_synthetic.m
* gsne/Demo_iris.m

Because the gsne was modified from MATLAB built-in function tsne, some MATLAB private functions need to
be put into the local folder, this can be done by calling 'GetPrivateFunction', which is in the demo scripts.
