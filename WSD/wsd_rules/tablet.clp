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
;@@@ Added by Prachi Rathore
;a tablet of soap.[cambridge]
;साबुन की बट्टी .
(defrule tablet0
(declare (salience 5000))
(id-root ?id tablet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 soap)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id battI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tablet.clp 	tablet0   "  ?id "  battI )" crlf))
)

;@@@ Added by Prachi Rathore
;The poem was engraved on a tablet of stone.[CAMBRIDGE]
;कविता पत्थर की पट्टी पर खोदी गयी थी . 
(defrule tablet1
(declare (salience 5000))
(id-root ?id tablet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 stone|marble)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tablet.clp 	tablet1   "  ?id "  pattI )" crlf))
)

;@@@ Added by Prachi Rathore
;The school has a memorial tablet engraved with the name of the founder.[oald]
;विद्यालय में संस्थापक के नाम के साथ खोदी हुई एक स्मारक पट्टी है . 
(defrule tablet2
(declare (salience 5000))
(id-root ?id tablet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-kqxanwa_viSeRaNa  ?id ?id1)
(id-root ?id1 engrave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tablet.clp 	tablet2   "  ?id "  pattI )" crlf))
)

;Added by Prachi Rathore
; a writing tablet [m-w]
; 
;(defrule tablet2
;(declare (salience 5000))
;(id-root ?id tablet)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
;(kriyA-object  ?id1 ?id)
;(id-root ?id1 write)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id waKwI))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tablet.clp 	tablet2   "  ?id "  waKwI)" crlf))
;)

;@@@ Added by Prachi Rathore 7-1-14
;The speech which he delivered on the occasion of the unveiling of the tablet was eloquent and in chaste English drew the admiration of the audience.[gyannidhi]
;इस पट्टी के अनावरण के अवसर पर शुद्ध अंग्रेज़ो में उनके भावपूर्ण भाषण की श्रोताओं ने खूब प्रशंसा की।
(defrule tablet4
(declare (salience 5000))
(id-root ?id tablet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 unveiling)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tablet.clp 	tablet4   "  ?id "  pattI )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;vitamin tablets. [oald]
;विटामिन गोलियाँ . 
(defrule tablet3
(declare (salience 4000))
(id-root ?id tablet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tablet.clp 	tablet3   "  ?id "  golI )" crlf))
)
