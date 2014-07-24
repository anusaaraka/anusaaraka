;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 07-03-2014
;She was absolutely furious at having been deceived.  ;oald
;वह धोखा खाने के बाद पूर्णतः क्रोधित थी.
(defrule deceive0
(declare (salience 4900))
(id-root ?id deceive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deceive.clp 	deceive0   "  ?id "  XoKA_KA )" crlf)
))


;------------default rules----------------------
;@@@ Added by Pramila(BU) on 07-03-2014
;Her husband had been deceiving her for years.  ;oald
;उसका पति उसे वर्षो से धोखा दे रहा था.
(defrule deceive1
(declare (salience 100))
(id-root ?id deceive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deceive.clp 	deceive1   "  ?id "  XoKA_xe )" crlf)
))

;@@@ Added by Pramila(BU) on 07-03-2014
(defrule deceive2
(declare (salience 0))
(id-root ?id deceive)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XoKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deceive.clp 	deceive2   "  ?id "  XoKA_xe )" crlf)
))
