;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;At present he is involved in an engaging work.        ;hinkhoj
;अभी वह एक रमणीय कार्य में सम्मिलित हुआ है.
(defrule engaging0
(declare (salience 5000))
(id-root ?id engaging)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id2 ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ramaNIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  engaging.clp  	engaging0   "  ?id "  ramaNIya )" crlf))
)



;   He has an engaging personality.
;   unakA eka AkarRaka byakwiwva hE
;an engaging smile           ;oald
;एक आकर्षक मुस्कुराहट
(defrule engaging1
(declare (salience 4000))
(id-root ?id engaging)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AkarRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  engaging.clp  	engaging1   "  ?id "  AkarRaka )" crlf))
)
