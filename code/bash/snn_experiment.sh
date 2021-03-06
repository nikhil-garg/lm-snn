# Grid search over hyperparameters for experiments with new inhibition schemes.

mkdir snn_job_reports

for num_train in 60000
do
	for random_seed in 1 2 3
	do
		for conv_features in 225 400 625
		do
			sbatch snn_job.sh $conv_features $num_train $random_seed
		done
	done
done

exit
