# This is a default profile for the LVM2 system.
# It contains all configuration settings that are customizable by profiles.
#
# To create a new profile, select the settings you want to customize
# and put them in a new file named <profile_name>.profile. Then put this
# file in a directory as defined by config/profile_dir setting found in
# /etc/lvm/lvm.conf file.
#
# Refer to 'man lvm.conf' for further information about profiles and file layout.

allocation {
	thin_pool_chunk_size_policy = "generic"
	thin_pool_chunk_size = 64
	thin_pool_discards = "passdown"
	thin_pool_zero = 1
}

activation {
	thin_pool_autoextend_threshold = 100
	thin_pool_autoextend_percent = 20
}

global {
	units="h"
	si_unit_consistency=1
	suffix=1
	lvdisplay_shows_full_device_path=0
}

report {
	aligned=1
	buffered=1
	headings=1
	separator=" "
	prefixes=0
	quoted=1
	colums_as_rows=0
	devtypes_sort="devtype_name"
	devtypes_cols="devtype_name,devtype_max_partitions,devtype_description"
	devtypes_cols_verbose="devtype_name,devtype_max_partitions,devtype_description"
	lvs_sort="vg_name,lv_name"
	lvs_cols="lv_name,vg_name,lv_attr,lv_size,pool_lv,origin,data_percent,move_pv,mirror_log,copy_percent,convert_lv"
	lvs_cols_verbose="lv_name,vg_name,seg_count,lv_attr,lv_size,lv_major,lv_minor,lv_kernel_major,lv_kernel_minor,pool_lv,origin,data_percent,metadata_percent,move_pv,copy_percent,mirror_log,convert_lv,lv_uuid,lv_profile"
	vgs_sort="vg_name"
	vgs_cols="vg_name,pv_count,lv_count,snap_count,vg_attr,vg_size,vg_free"
	vgs_cols_verbose="vg_name,vg_attr,vg_extent_size,pv_count,lv_count,snap_count,vg_size,vg_free,vg_uuid,vg_profile"
	pvs_sort="pv_name"
	pvs_cols="pv_name,vg_name,pv_fmt,pv_attr,pv_size,pv_free"
	pvs_cols_verbose="pv_name,vg_name,pv_fmt,pv_attr,pv_size,pv_free,dev_size,pv_uuid"
	segs_sort="vg_name,lv_name,seg_start"
	segs_cols="lv_name,vg_name,lv_attr,stripes,segtype,seg_size"
	segs_cols_verbose="lv_name,vg_name,lv_attr,seg_start,seg_size,stripes,segtype,stripesize,chunksize"
	pvsegs_sort="pv_name,pvseg_start"
	pvsegs_cols="pv_name,vg_name,pv_fmt,pv_attr,pv_size,pv_free,pvseg_start,pvseg_size"
	pvsegs_cols_verbose="pv_name,vg_name,pv_fmt,pv_attr,pv_size,pv_free,pvseg_start,pvseg_size,lv_name,seg_start_pe,segtype,seg_pe_ranges"
}
