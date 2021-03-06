�]q (XV   /home/mandub/Desktop/Thakaa/Resumes-Filtering/converted/Major_Project_Report.pdf23.jpgqX	  24
5.3 Ranking Using K-Nearest Neighbour
We employ a K-Nearest Neighbor method for job description based ranking of Resumes. For
each training job description, we define a feature vector and represent it in the query feature
space (a Euclidean space). Given a new resume, we try to find the k closest training queries to it
in terms of Euclidean distance. We then train a local ranking model online using the
neighboring training queries (denoted as Nk(q)) and rank the documents of the test query using
the trained local model. For local model training, we can in principle employ any existing
learning to rank algorithm.
We call the corresponding algorithm 'KNN'. Figure illustrates the workings of the algorithm
where the square denotes test query q, triangles denote training queries, and the large circle
denotes the neighborhood of query q. The details of the algorithm are presented in Figure.
Needless to say, the query features used in the method are critical to its accuracy. In this paper,
we simply use the following heuristic method to derive query features and leave further
investigation of the issue to future work. For each query q, we use a reference model to find its
top T ranked documents, and take the mean of the feature values of the T documents as a
feature of the query. For example, if one feature of the document is tf-idf, then the
corresponding query feature becomes average tf-idf of top T ranked documents of the query. If
there are many relevant documents, then it is very likely that the value of average tf-idf would
be high.
Algorithm: KNN
Input:
(1) A test job description and the associated documents to be ranked.
(2) Training data {S qi , i = 1, ., m}.
(3) Reference model hr.
(4) Number of nearest neighbors k.
Output: Ranked list for query q.
pre-processing:
For each training query qi , use reference model hr to find its top T ranked documents, and compute its
query features from these documents.
Online training and testing:
(a) Use reference model hr to find the top T ranked documents for query q, and compute q's query
dependent features from these documents.
(b) Within the training data find k nearest neighbors of q, denoted as Nk(q), with distance computed in
the query feature space.
(c) Apply hq to the documents associated with query q, and obtain the ranked list.
qe.