@echo off

set target_domain=%1

python main.py ^
--experiment=DomainAdapt ^
--experiment_name=DomainAdapt/%target_domain%/ ^
--dataset_args="{'root': 'data/PACS', 'source_domain': 'art_painting', 'target_domain': '%target_domain%'}" ^
--batch_size=256 ^
--num_workers=5 ^
--grad_accum_steps=1

@REM .\launch_scripts\DomainAdapt.bat cartoon