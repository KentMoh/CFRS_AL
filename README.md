# CFRS_AL
This work is about providing a formal explanation to a Collaborative Filtering Recommender System (CFRS). The repository consists of four main files:
  1. Movies_PA.ipynb illustrates the preliminary study conducted in order to explore the Movie dataset and retrieve useful metrics.
  2. Movies_BK-means.ipynb contains the proposed Bisecting K-means model for the CFRS construction.
     
     2.1 Movies dataset can be downloaded from "https://www.kaggle.com/rounakbanik/the-movies-dataset?select=movies_metadata.csv"
    
     2.2 To test the program, both Hadoop and PySpark need to be activated on a local machine and the dataset need to be uploaded into    HDFS.
     
   3. Movie-lens_CFRS_clustering.ipynb is a different CFRS implementation which is much easier and closer to human logic. 
     
     3.1 MovieLens dataset can be downloaded from "https://grouplens.org/datasets/movielens/".
     
   4. CFRS_AL.pl is a prolog program for the CFRS, suitable to use with Swi-prolog latest version with any OS. To test the program, upload it and 
       then tape "recommend." Please read & uncomment CHR rules after running "recommend." to avoid any exception.
     
   
