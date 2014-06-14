;########################################################################

;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;The new policy has sown confusion and doubt.[oxford dict]
;नई नीति ने भ्रम और संदेह पैदा कर दिया है.
(defrule sow0
(declare (salience 5000))
(id-root ?id sow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 doubt|confusion)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sow.clp 	sow0  "  ?id "  pExA_kara)" crlf))
)

;............Default Rule..............
;Sow the seeds in rows.[oald]
;पंक्तियों में बीज  रोपिए . 
(defrule sow1
(declare (salience 1))
(id-root ?id sow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ropa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sow.clp 	sow1  "  ?id "  ropa)" crlf))
)
;no sentences is found for noun sense.
(defrule sow2
(declare (salience 1))
(id-root ?id sow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sow.clp 	sow2  "  ?id "  suara)" crlf))
)

(defrule sow3
(declare (salience 0))
(id-root ?id sow)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ropa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sow.clp 	sow3  "  ?id "  ropa)" crlf))
)
