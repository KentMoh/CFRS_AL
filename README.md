# CFRS_AL
This work is about providing an abductive-based formal explanation to a Collaborative Filtering Recommender System (CFRS). The repository consists of four main files:
  1. "Movies_PA.ipynb" illustrates the preliminary study conducted in order to explore the Movie dataset and retrieve useful metrics (i.e runtime, ratings, popularity, etc).
     
  2. "Movies_BK-means.ipynb" contains the proposed Bisecting K-means model for the CFRS construction.
     
     2.1 'Movies' dataset which is used to train the Bisecting K-means model can be downloaded from:  
          "https://www.kaggle.com/rounakbanik/the-movies-dataset?select=movies_metadata.csv"
    
     2.2 To test this learning program, both Hadoop and PySpark need to be activated on a local machine and the dataset need to be uploaded into the HDFS
           (Hadoop Data File Management System). The execution of "ipynb" files could be done with jupyter-notebook under Anaconda for windows/macOS or by using the 
           "pip-install jupyter notebook" command line under linux.
     
   3. "Movie-lens_CFRS_clustering.ipynb" is a different CFRS implementation which is much easier and closer to human logic. 
     
     3.1 MovieLens dataset can be downloaded from "https://grouplens.org/datasets/movielens/".
     
   4. "CFRS_AL.pl" is a prolog program to simulate the CFRS, CHR rules as well as the clustering method, suitable to use with Swi-prolog latest version (3.8) with 
        any OS. To test this program, upload it and then tape "recommend." Please read & uncomment CHR rules after running "recommend." to avoid any exception.
     
   
