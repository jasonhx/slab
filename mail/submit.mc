divert(-1)
#
# Copyright (c) 2001-2003 Proofpoint, Inc. and its suppliers.
#	All rights reserved.
#
# By using this file, you agree to the terms and conditions set
# forth in the LICENSE file which can be found at the top level of
# the sendmail distribution.
#
#

#
#  This is the prototype file for a set-group-ID sm-msp sendmail that
#  acts as a initial mail submission program.
#

divert(0)dnl
sinclude(`/usr/share/sendmail-cf/m4/cf.m4')dnl
VERSIONID(`linux setup')dnl
define(`confCF_VERSION', `Submit')dnl
define(`__OSTYPE__',`')dnl dirty hack to keep proto.m4 from complaining
define(`_USE_DECNET_SYNTAX_', `1')dnl support DECnet
define(`confTIME_ZONE', `USE_TZ')dnl
define(`confDONT_INIT_GROUPS', `True')dnl
dnl # If you're operating in a DSCP/RFC-4594 environment with QoS
dnl define(`confINET_QOS', `AF11')dnl
define(`confPID_FILE', `/run/sm-client.pid')dnl
dnl define(`confDIRECT_SUBMISSION_MODIFIERS',`C')dnl
FEATURE(`use_ct_file')dnl
dnl
dnl If you use IPv6 only, change [127.0.0.1] to [IPv6:::1]
FEATURE(`msp', `[127.0.0.1]')dnl
