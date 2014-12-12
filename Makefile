prepare-mouse-ref:

	qsub -v "knownisoform=mouse_known_isoforms.txt,gtf=mouse_ensbl_75.gtf,\
		fasta=mm10.fa,name=mouse" $(protocoldir)/rsem_prepare_reference.sh
