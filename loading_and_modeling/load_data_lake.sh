#!/bin/sh

#remove first row from each dataset
tail -n +2 "Hospital General Information.csv" > /home/w205/Excercise_1/Data_prepped_for_hdfs/"hospitals.csv"tail -n +2 "hvbp_hcahps_05_28_2015.csv" > /home/w205/Excercise_1/Data_prepped_for_hdfs/"survey_responses.csv"tail -n +2 "Measure Dates.csv" > /home/w205/Excercise_1/Data_prepped_for_hdfs/"Measures.csv"tail -n +2 "Readmissions and Deaths - Hospital.csv" > /home/w205/Excercise_1/Data_prepped_for_hdfs/"readmissions.csv"tail -n +2 "Timely and Effective Care - Hospital.csv" > /home/w205/Excercise_1/Data_prepped_for_hdfs/"effective_care.csv"


#first create HDFS directory
#hdfs dfs -mkdir /user/w205/Excercise_1
#hdfs dfs -mkdir /user/w205/Excercise_1/Hospital_datasets

#load datasets into hdfs directory at user/w205/Excercise_1/Hospital_datasets/
hdfs dfs -put effective_care.csv /user/w205/Excercise_1/Hospital_datasets

hdfs dfs -put hospitals.csv /user/w205/Excercise_1/Hospital_datasets

hdfs dfs -put survey_responses.csv /user/w205/Excercise_1/Hospital_datasets

hdfs dfs -put Measures.csv /user/w205/Excercise_1/Hospital_datasets

hdfs dfs -put readmissions.csv /user/w205/Excercise_1/Hospital_datasets