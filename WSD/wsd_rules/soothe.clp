;##############################################################################
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
;############################################################
;@@@ Added by jagriti(24.1.2014)
;The medicine soothes the pain of the inflammation. 
;औषधी प्रज्वलन का दर्द कम करती है . 
(defrule soothe0
(declare (salience 5000))
(id-root ?id soothe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 pain|tension)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soothe.clp 	soothe0   "  ?id "  kama_kara )" crlf))
)

;@@@ Added by jagriti(24.1.2014)
;His words of encouragement soothed her. 
;प्रोत्साहन के उसके शब्दों ने उसको सांत्वना दी .  
(defrule soothe1
(declare (salience 4900))
(id-root ?id soothe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(viSeRya-of_saMbanXI ?id1 ?id2)
(id-root ?id2 encouragement)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAMwvanA_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soothe.clp 	soothe1   "  ?id "  sAMwvanA_xe )" crlf))
)

;@@@ Added by jagriti(24.1.2014)
;Mother was soothing the crying child.
;माँ चिल्लाते हुए बच्चे को शांत कर रही थी .
(defrule soothe2
(declare (salience 100))
(id-root ?id soothe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAMwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soothe.clp 	soothe2   "  ?id "  SAMwa_kara )" crlf))
)

