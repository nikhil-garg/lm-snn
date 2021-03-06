# Grid search over hyperparameters for experiments with new inhibition schemes.

num_train=30000
conv_features=400

for random_seed in 1 2 3 42
do
	for test_no_inhibition in "True" "False"
	do
		for test_max_inhibition in "True" "False"
		do
			sbatch csnn_growing_inhibition_test.sh 28 0 $conv_features $num_train $random_seed $test_no_inhibition $test_max_inhibition
		done
	done
done

exit
