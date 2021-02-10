# Recommendation-Engine-using-R


## Recommendation Engine:
   
   It works based on *Collaborative Filtering*
   
 **How Collaborative Filtering Works:**
      
      step 1: Preprocessing before building matrix
      step 2: Build a matrix between customers and products
      step 3: Find similarity between customers
                we have 2 methods:
                  1. cosine based similarity
                              cos(A,B) = A.B / (|A|.|B|)
                  
                  2. correlation based similarity
                                corr(A,B) = Covariance(A,B)/(std(A)*std(B))
       step 4: once we find similarity items will be recommended
       
       
 **Negatives of Collaborative Filtering:**
 1. Memory based - as it needs a huge amount of matrix with data
 2. As big matrix computationally heavy
 
 **How to reduce Computation**
 1. Randomly sample customers
 2. Discard infrequent buyers
 3. Discard items that are very popular or unpopular
 4. clustering can decrease number of rows
 5. PCA can reduce number of columns
 
 
 ## Data used:
 
 Movies recommendation is done using Movie dataset
 
 ## Programming:

 R Programming
 
 **The Code regarding *Movie recommendation* and its dataset is present in this Repository in detail**



