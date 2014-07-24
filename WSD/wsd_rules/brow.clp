;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014
;The path disappeared over the brow of the hill.[oald]
; पथ पहाडी के शिखर/चोटी पर गायब हो गया . 
(defrule brow1
(declare (salience 5000))
(id-root ?id brow)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 hill|mountain)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brow.clp 	brow1   "  ?id "  cotI )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014
;One dark brow rose in surprise.[oald]
;एक काली भौंहे आश्चर्य में चढ़ी
(defrule brow2
(declare (salience 5000))
(id-root ?id brow)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 dark|black|white)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brow.clp 	brow2   "  ?id "  BOMha )" crlf)
)
)


;*******************DEFAULT RULES**********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 22/03/2014
;The nurse mopped his fevered brow.[oald]
;नर्स ने उसका बुखार से ग्रस्त /गर्म माथा पोंछा 
(defrule brow0
(declare (salience 0))
(id-root ?id brow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brow.clp 	brow0   "  ?id "  mAWA )" crlf)
)
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_brow2
(declare (salience 5000))
(id-root ?id brow)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 dark|black|white)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " brow.clp   sub_samA_brow2   "   ?id " BOMha )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_brow2
(declare (salience 5000))
(id-root ?id brow)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 dark|black|white)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BOMha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " brow.clp   obj_samA_brow2   "   ?id " BOMha )" crlf)
)
)
