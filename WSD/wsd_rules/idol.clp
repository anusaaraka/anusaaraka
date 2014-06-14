;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[27-3-14]
; Lal Bahadur Shashtri was the idol of our nation. [shiksharthi-kosh]
;लाल बहादुर शश्त्री हमारे राष्ट्र के आदर्श थे . 
(defrule idol1
(declare (salience 5000))
(id-root ?id idol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 nation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idol.clp 	idol1   "  ?id "  AxarSa )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
;He has been my idol since I was a child.[oald]
;जब मैं बच्चा था तब से वे मेरे आदर्श है
(defrule idol2
(declare (salience 5000))
(id-root ?id idol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxarSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idol.clp 	idol2   "  ?id "  AxarSa )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[27-3-14]
;She made an idol of the god. [shiksharthi-kosh]
;उसने देवता की एक प्रतिमा बनाई . 
(defrule idol3
(declare (salience 400))
(id-root ?id idol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idol.clp 	idol3   "  ?id "  prawimA )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
(defrule idol4
(declare (salience 200))
(id-root ?id idol)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  idol.clp 	idol4   "  ?id "  prawimA )" crlf))
)
