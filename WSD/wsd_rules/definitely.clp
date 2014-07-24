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
;@@@ Added by Pramila(Banasthali University)  on 16-12-2013
;Please say definitely whether you will be coming or not.           ;oald
;कृप्या स्पष्टता से कहिए चाहे तुम आ रहे हो या नहीं.
(defrule definitely0
(declare (salience 5000))
(id-root ?id definitely)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(id-root ?id1 say|explain|express|tell)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRtawA_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  definitely.clp 	definitely0   "  ?id " spaRtawA_se  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 16-12-2013
;It definitely was not garden soil.
;निश्चित रूप से वह बागान की मिट्टी नहीं थी।
(defrule definitely1
(declare (salience 4000))
(id-root ?id definitely)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  definitely.clp 	definitely1   "  ?id " niSciwa_rUpa_se  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 16-12-2013
(defrule definitely2
(declare (salience 3000))
(id-root ?id definitely)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  definitely.clp 	definitely2   "  ?id "  niSciwa_rUpa_se )" crlf))
)

