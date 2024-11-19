Installation script for srsran-4g with Ettus USRP B210

compilation from source allows:
* using srsue with a PC/SC card reader for hard USIM with:
	pcscd; srsue --usim.mode=pcsc
* using cell_search:
    /opt/srsRAN_4G/build/lib/examples/cell_search -b 7
* using srsue to get PLMN from discovered cell:
    srsue --rat.eutra.dl_earfcn 3350 --pcap.enable MAC

* Works in a docker container with Ubuntu 20.04
* Works in a docker container with Ubuntu 22.04
* Does not work in docker container with Ubuntu 24.04
